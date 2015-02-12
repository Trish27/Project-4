class I_Dream_Books_Api < ActiveRecord::Base

  def search_i_dream_books()
    

    key = ENV["I_DREAM_BOOKS_API_KEY"]
    request_string = 'http://www.idreambooks.com/api/books/reviews.JSON?q='
    escaped_request_string = URI.escape(request_string + 'title=' + '?key=' + key + 'reviews')
    response = HTTParty.get(escaped_request_string)

  end
end
