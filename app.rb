require 'sinatra'

class Battle < Sinatra::Base
    get '/' do
        "Welcome to Battle Royale!"
    end

    run! if app_file == $0
end