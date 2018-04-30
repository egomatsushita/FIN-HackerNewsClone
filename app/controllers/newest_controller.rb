require 'net/http'
require 'json'

class NewestController < SuperController
  def show
    @stories_ids = fill_stories('https://hacker-news.firebaseio.com/v0/newstories.json', @@index_start_nc, @@length, @@index_nc)
    @@index_start_nc += 30
    @@index_nc += 30
    
    respond_to do |format|
      format.json { render json: @stories_ids.to_json }
    end
  end
  
  def index
    @@index_start_nc = 0
    @@length = 30
    @@index_nc = 1
    @stories_ids = fill_stories('https://hacker-news.firebaseio.com/v0/newstories.json', @@index_start_nc, @@length, @@index_nc)
    @@index_start_nc += 30
    @@index_nc += 30
  end  
end
