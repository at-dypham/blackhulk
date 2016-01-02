class BlogSettingsController < ApplicationController
  def index
    @blog_setting = {
      desc: ENV['blog_description'],
      title: ENV['blog_title']
    }

    render json: @blog_setting
  end
end
