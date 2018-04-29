require "net/http"
require "json"

class TopStoriesController < ApplicationController
  def index
    response = get_data("https://hacker-news.firebaseio.com/v0/topstories.json")
    top_stories = JSON.parse(response) 
    index_start = 0;
    index_end = 30;
    top_stories = top_stories[index_start, index_end] 
    @stories = []
    
    top_stories.each do |story|
      response = get_data("https://hacker-news.firebaseio.com/v0/item/#{story}.json")
      response = JSON.parse(response)
      append_attributes = { 
        "kids_length" => sum_kids(response["kids"]),
        "get_time_string" => get_time_string(response["time"]),
        "domain" => get_url_substring(response["url"])
      }
      response.merge!(append_attributes)
      @stories.push(response)  
    end
  end
  
  private
  
  def get_data(url)
    uri = URI(url)
    Net::HTTP.get(uri)
  end

  def get_time_string(time)
    now = Time.now.to_i
    dif = now - time
    result = nil

    if dif > 86400
      result = dif < 172800 ? (dif / 86400).to_s + " day ago" : (dif / 86400).to_s + " days ago"
    elsif dif > 3600
      result = dif < 7200 ? (dif / 3600).to_s + " hour ago" : (dif / 3600).to_s + " hours ago"
    else
      result = dif < 120 ? (dif / 60).to_s + " minute ago" : (dif / 60).to_s + " minutes ago"
    end

    result
  end

  def sum_kids(kids)
    unless kids.nil?
      kids.count
    end
  end

  def get_url_substring(url)
    domain = nil

    unless url.nil?
      split_url = url.split('/')
      domain = split_url[2]

      if domain.match("www")
        domain = domain.split('.')[1..-1].join('.')
      end
      
      domain = "(#{domain})"
    end

    domain
  end
end
