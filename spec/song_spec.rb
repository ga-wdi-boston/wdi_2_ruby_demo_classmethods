require_relative 'spec_helper'
require_relative '../lib/song'

describe Song do 

  it "#new" do
    expect(Song.new("Let it be", 1.99, "http://beatles.com/let_it_be.mp3")).to be_an_instance_of Song
  end

  subject {Song.new("Let it be", 1.99, "http://beatles.com/let_it_be.mp3")}

  it "should not be able to change name" do
    expect{ subject.name = 'Abbey Road'}.to raise_error NoMethodError
  end

  let(:songs) do
    songs = []
    4.times do |i|
     songs << Song.new("Song#{i}", 1.00 + (i*0.20), "http:://song.com/song#{1}.mp3")
    end
    songs
  end

  it ".total_price" do
    expect(Song.total_price(songs, "MA")).to eq 4.7632
  end

end