require 'sinatra'
require 'slim'


set :root, Dir.pwd
set :views, Dir.pwd


get '*.slim' do
  view = File.basename(request.path[1..-6]).to_sym
  slim view
end
