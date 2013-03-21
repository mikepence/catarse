# coding: utf-8
class CauseOwnersController < ApplicationController

  load_and_authorize_resource only: [ :new, :update, :update, :destroy ]

  inherit_resources

end
