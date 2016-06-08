class StaticsController < ApplicationController
  def homepage

    offset = rand(Quote.count)

    @rand_record = Quote.offset(offset).first
  end
end
