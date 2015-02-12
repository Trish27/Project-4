class Goodreads_Api < ActiveRecord::Base



  #Search goodreads through API

  def self.search_title(book)
    book = book
    key = ENV["GOODREADS_API_KEY"]
    request_string = 'https://www.goodreads.com/book/title.JSON?'
    escaped_request_string = URI.escape(request_string +'?key=' + key + '&title=' + book)
    response = HTTParty.get(escaped_request_string)

  end

  #Get results based on term search

 def self.search_author()

   key = ENV["GOODREADS_API_KEY"]
   request_string = 'https://www.goodreads.com/book/author/list.JSON?'
   escaped_request_string = URI.escape(request_string +'?key=' + key + '&author=' + book)
   response = HTTParty.get(escaped_request_string)

 end


 # Should I do it more like below so whatever I bring up works and just search by
 # term and id?  If so, will the below code work?

 # Get results based by term

 # def self.search_by_term(term)
 #   response = make_request("#{term}")
 #   return JSON.parse(response)['Search']
 # end

 #Returns results based on goodreads search

 # def self.search_by_id(id)
 #   response = make_request("#{id}")
 #   return JSON.parse(response)
 #
 #
 # end

end
