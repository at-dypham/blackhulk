require 'github'

class PostsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json do
        if gh_issues.present?
          render json: available_posts
        else
          render json: { message: 'Please check your config' }, status: 400
        end
      end
    end
  end

  def show
    issue = available_posts.select {|is| is[:slug_url] == params[:id]}
    if issue.present?
      render json: issue.first.slice(:title, :body)
    else
      render json: { message: 'The issue doesn not exist' }, status: 404
    end
  end

  def gh_issues
    GitHub.new.issues
  end

  def available_posts
    PostPresenter.new(gh_issues).available_posts
  end
end
