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
    binding.pry
    @number.times do
      "#{params[:phrase]}"
    end
  end

end
