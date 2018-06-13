require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    # @reversed = params[:name].reverse
    # "#{@reversed}"

    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number] ** 2}"
  end

end
