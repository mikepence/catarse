Given /^me as a logged in user$/ do
  # TODO: re-implement logged in user step
  #visit "/fake_login"
  #@me = User.last
end

Given /^a visible home page project owned by me$/ do
  @project = FactoryGirl.create(:project, :visible => true, :home_page => true, :user => @me)
end

When /^I visit the home page$/ do
  visit root_path
end

And /^I click on the project$/ do
  click_link_or_button @project.name
end

And /^I click on the updates tab$/ do
  click_link_or_button 'updates_link'
end

And /^I post an update$/ do
  fill_in 'comment_title', :with => 'Comment title'
  fill_in 'comment_comment', :with => 'Comment comment'
  click_link_or_button 'comment_submit'
end

Then /^the update should exist$/ do
  Comment.count.should be 1
end

And /^an email notification to the backers should be generated$/ do
  # look at ActionMailer::Base.deliveries
end