class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_blog_setting

  private

  def set_blog_setting
    @blog_setting = {
      desc: ENV['blog_description'],
      title: ENV['blog_title']
    }
  end
end
