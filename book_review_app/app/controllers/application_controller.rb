class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # def search()
  #
  #   @goodreads = Goodreads_api.all
  #   @i_dream_books = I_dream_books_api.all
  #
  # end

end
