require 'net/http'
require 'json'

class ShowController < SuperController  
  def show
    @stories_ids = fill_stories('https://hacker-news.firebaseio.com/v0/showstories.json', @@index_start_tc, @@length, @@index_tc)
    @@index_start_tc += 30
    @@index_tc += 30
    
    respond_to do |format|
      format.json { render json: @stories_ids.to_json }
    end
  end
  
  def index
    @@index_start_tc = 0
    @@length = 30
    @@index_tc = 1
    @stories_ids = fill_stories('https://hacker-news.firebaseio.com/v0/showstories.json', @@index_start_tc, @@length, @@index_tc)
    @@index_start_tc += 30
    @@index_tc += 30
  end  
end
