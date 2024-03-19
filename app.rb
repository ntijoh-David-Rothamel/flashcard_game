# frozen_string_literal: true

class App < Sinatra::Base
  require './db/seed'

  def db
    if @db.nil?
      @db = SQLite3::Database.new('./db/db.sqlite')
      @db.results_as_hash = true
    end

    return @db
  end

  get '/' do
    redirect '/cards'
  end

  get '/cards' do
    erb :'/cards/index'
  end

  get '/cards/:id/:card_num' do |id, card_num|
    @set_of_cards = [{'concept' => 'Häst', 'explanation' => 'A fast thing with four legs'},
                     {'concept' => 'Ko', 'explanation' => 'It goes mooooo!'}]

    @id = id.to_i
    @card_num = card_num.to_i

    erb :'/cards/show'
  end
end
