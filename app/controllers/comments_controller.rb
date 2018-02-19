class CommentsController < ApplicationController

  before_action :find_comment, only: [:destroy]

  def index

  end

  def show

  end

  def new

  end

  def create

    commentcreate = Comment.create(comments_params)


    redirect_back(fallback_location:root_path) if commentcreate.persisted?

  end

  def edit

  end

  def update

  end

  def destroy
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def comments_params
    params.require(:comment).permit!
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

end
