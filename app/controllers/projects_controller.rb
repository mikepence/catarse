# coding: utf-8
class ProjectsController < ApplicationController
  include ActionView::Helpers::DateHelper

  load_and_authorize_resource only: [ :new, :update, :update, :destroy ]

  inherit_resources
  has_scope :pg_search, :by_category_id, :recent, :expiring, :successful, :recommended, :not_expired
  respond_to :html, :except => [:backers]
  respond_to :json, :only => [:index, :show, :backers, :update]
  skip_before_filter :detect_locale, :only => [:backers]

  def index
    index! do |format|
      format.html do
        @title = t("site.title")

        @marquee_project = Project.first
        @featured_project = Project.first
        @expiring_projects = Project.expiring_for_home([])
        @local_projects = Project.all # Project.random()
      end

      format.json do
        @projects = apply_scopes(Project).visible.order_for_search
        respond_with(@projects.includes(:project_total, :user, :category).page(params[:page]).per(6))
      end
    end
  end

  def new
    new! do
      @title = t('projects.new.title')
      @project.rewards.build
    end
  end

  def create
    params[:project][:expires_at] += (23.hours + 59.minutes + 59.seconds) if params[:project][:expires_at]
    validate_rewards_attributes if params[:project][:rewards_attributes].present?

    user_attributes = params[:project].delete(:user)
    current_user.update_attributes(user_attributes) if current_user.email != user_attributes[:email]
    @project = current_user.projects.new(params[:project])

    create!(:notice => t('projects.create.success')) do |success, failure|
      success.html{ return redirect_to project_by_slug_path(@project.permalink) }
    end
  end

  def show
    begin
      if params[:permalink].present?
        @project = Project.find_by_permalink! params[:permalink]
      else
        return redirect_to project_by_slug_path(resource.permalink)
      end

      show!{
        @title = @project.name
        @rewards = @project.rewards.includes(:project).order(:minimum_value).all
        @backers = @project.backers.confirmed.limit(12).order("confirmed_at DESC").all
        fb_admins_add(@project.user.facebook_id) if @project.user.facebook_id
        @update = @project.updates.where(:id => params[:update_id]).first if params[:update_id].present?
      }
    rescue ActiveRecord::RecordNotFound
      return render_404
    end
  end

  def vimeo
    project = Project.new(:video_url => params[:url])
    if project.vimeo.info
      render :json => project.vimeo.info.to_json
    else
      render :json => {:id => false}.to_json
    end
  end

  def check_slug
    project = Project.where("permalink = ?", params[:permalink])
    render :json => {:available => project.empty?}.to_json
  end

  def embed
    @project = Project.find params[:id]
    @title = @project.name
    render :layout => 'embed'
  end

  def video_embed
    @project = Project.find params[:id]
    @title = @project.name
    render :layout => 'embed'
  end

  def blog_posts
    Blog.fetch_last_posts.inject([]) do |total,item|
      total << item if total.size < 2
      total
    end
  rescue
    []
  end

  # Just to fix a minor bug,
  # when user submit the project without some rewards.
  def validate_rewards_attributes
    rewards = params[:project][:rewards_attributes]
    rewards.each do |r|
      rewards.delete(r[0]) unless Reward.new(r[1]).valid?
    end
  end
end
