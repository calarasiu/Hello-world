class GroupsController < ApplicationController
# before_action :set_group, only: [:show]
  def show
    @group = Group.find(params[:id])
  end
end

# private
# def set_group
#   @group = Group.find(params[:id])
# end
