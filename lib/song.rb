require 'pry'
require_relative './state_tax'

class Song
  include StateTax

  attr_accessor :price, :url
  attr_reader :name

  def initialize(name, price, url)
    @name = name
    @price = price
    @url = url
  end

  def price
    @price
  end

  def self.total_price(songs)
    songs.inject(0) do|sum, song| 
      sum += song.price
    end
  end

  def to_s
    "Song: name = #{@name}, price = #{@price}, url = #{@url}"
  end
end