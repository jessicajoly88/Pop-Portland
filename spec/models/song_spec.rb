require 'rails_helper'

describe Song do
  it {should belong_to :act}
  it {should validate_presence_of :url}


  it "doesn't save the song if SoundCloud gives an error" do
    song = Song.new(:url => 'www.https://soundcloud.com/record/junius-meyvant-color-')
    song.save.should be false
  end
end
