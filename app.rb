require 'sinatra'
require 'sinatra/contrib'

require 'sinatra/reloader' if development?

# below are seven different actions for the post controller


# first route
# display a list of all the resources
get '/Pets' do
  'get all Pets'
end

# second route
# returns a HTML form for creating a new source
get "/Pets/new" do
  "get new pet form"
end
 # third route
 # to create a new ressource
post '/Pets' do
  "adding a new pet"
end
 # fourth route
 # to display a specific resource
get '/Pets/:id' do
  id = params[:id]
  "get a single Pet #{id}"
end
# fifth route
# returns a HTML form for editing a resource
get '/Pets/:id/edit' do
  id = params[:id]
  "Get edit pet form #{id}"
end
# sixth route
# to update a specific resource
put '/Pets/:id' do
  id = params[:id]
  "updates a pet #{id}"
end
# seventh route
# to delete a specific resource 
delete '/Pets/:id' do
  id = params[:id]
  "delete a pet #{id}"
end
