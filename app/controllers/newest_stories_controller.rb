class NewestStoriesController < SuperController
  @@index_start = 0
  @@length = 30
  @@index = 1

  def index
    @stories = fill_stories('https://hacker-news.firebaseio.com/v0/newstories.json', @@index_start, @@length, @@index)
    @@index_start += 30
    @@index += 30
  end  
end
