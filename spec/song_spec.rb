require_relative 'spec_helper'
require_relative '../lib/song'

# Lab
# 1) Create a class song that has a name, url and 
# price attributes.

# i) The name can not be changed

# ii) The URL and price can be changed

# ii) Create 5 songs objs.

# iii) Create a class method, Songs.total_price(*songs),
#  that will give me a total price of all the songs handed to it.

# iv) Create a Tax module that contains the flat tax rates,
# a percentage, for all the New England states. 
# (Make up this flat tax rate if you want)

# v) Mix in the Tax module to the Song class and 
# use its rate method ONLY if the Song#price method.

# vi) Mix in the Tax module to the Song class and 
# use its rate method ONLY if the Song.total_price method.

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
    expect(Song.total_price(songs)).to eq 5.20
  end

end