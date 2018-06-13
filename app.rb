require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    # @reversed = params[:name].reverse
    # "#{@reversed}"

    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    # binding.pry
    @string = ""
    @number.times do
      @string += "#{params[:phrase]} "
    end
    @string
  end

end
