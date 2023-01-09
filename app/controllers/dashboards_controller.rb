class DashboardsController < ApplicationController

  def index
    @blogs_index = Blog.all
    @blogs = @blogs_index.order('created_at desc').page(params[:page]).per(2)
  end

  def show
    @blog = Blog.find_by(id: params[:id])
  end
end
