class GoodreadsController < ApplicationController

  def show()
    # Can I just search by title or author
  #  @goodreads = Goodreads.find(params[:title, :author, :review])

    
     render :json
  end

  private

  def goodreads_params

    params.require(:goodreads).permit(:title, :author, :small_image_url, :review)
  end

end
