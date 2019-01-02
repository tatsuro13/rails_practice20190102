class HomeController < ApplicationController
  def index
    @some_valiable = 'Hello Ruby'

    def some_method
      puts @some_method
    end

    binding.pry
    some_method
    puts 'Googbye World'
  end
end
