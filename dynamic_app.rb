require "sinatra"
require "sinatra/reloader"
require "tilt/erubis"

get "/" do
   @files = Dir.glob('*').sort
   @files.reverse! if params[:sort] == 'desc'
   erb :home
end
