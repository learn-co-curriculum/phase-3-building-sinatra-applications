class ApplicationController < Sinatra::Base
  get '/' do
    '<h2>Hello <em>World</em>? This is great!!</h2>'
  end
end
