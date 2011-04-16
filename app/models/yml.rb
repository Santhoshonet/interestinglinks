require "httparty"
class Yml

  include HTTParty

  base_uri "http://query.yahooapis.com/v1/public/yql"

  def self.search_hash(criteria)

    begin
     @result = self.search(criteria)
     self.search(criteria).parsed_response["query"]
    rescue
      puts "error at search "
      puts  @result
      nil
    end

  end

  private

  def self.search(criteria)
    url = ""
    Link.find(:all).each do |link|
      if url == ""
          url += link.link
      else
          url += "," + link.link
      end
    end
    self.get("", :query => {:q => "select title,abstract,url from search.web(99999999) where query = '%#{criteria}%' and url in ( select Url from search.siteexplorer.pages(99999999) where query in ('#{url}') )", :format => 'json'})
  end


end