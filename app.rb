module Project
  class Api < Sinatra::Base
    configure do
      register Sinatra::Namespace
    end

    configure :development do
      Bundler.require :development
      register Sinatra::Reloader
    end

    namespace '/api/v1' do
      get '/' do
        data = { message: 'Hello World' }
        json data
      end
    end
  end

end