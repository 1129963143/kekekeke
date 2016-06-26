class WelcomeController < ApplicationController
  def home
    redirect_to blogs_posts_url
  end
end
