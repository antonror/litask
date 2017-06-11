class StaticPagesController < ApplicationController

  def about
    if logged_in?
    @task = current_user.tasks.build
    @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

end
