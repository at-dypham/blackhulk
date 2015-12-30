require 'github'

class PostsController < ApplicationController
  def index
    github = GitHub.new
    issues = github.issues
    if issues.present?
      render json: PostPresenter.new(issues).available_posts
    else
      render json: {'message': 'Please check your config'}, status: 400
    end
  end
end
