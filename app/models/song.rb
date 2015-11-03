class Song < ActiveRecord::Base
  before_create :get_html
  belongs_to :act
  validates :url, :presence => true

private

  def get_html
    request = RestClient.get 'http://soundcloud.com/oembed', :params => { :url => url, :format => 'json' }
    request = JSON.parse(request)
    # Need to call self on html so that it attributes html that you're fetching to the song.
    self.html = request['html']
  end
end
