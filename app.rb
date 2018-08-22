require 'sinatra'
require 'sinatra/contrib'

require 'sinatra/reloader' if development?

# below are seven different actions for the post controller


# first route
# HTTP Verb = GET
# Controller Action = index
# display a list of all the resources
get '/Pets' do
  'get all Pets'
end

# second route
# HTTP Verb = GET
# Controller Action = new
# returns a HTML form for creating a new source

get "/Pets/new" do
  "gets and displays a form to input"
end
 # third route
 # HTTP Verb = POST
 # Controller Action = create
 # to create a new ressource
post '/Pets' do
  "adding a new pet and adds to the list"
end
 # fourth route
 # HTTP Verb = GET
 # Controller Action = show
 # to display a specific resource
get '/Pets/:id' do
  id = params[:id]
  "get a single Pet and displays with id #{id}"
end

# fifth route
# HTTP Verb = GET
# Controller Action = edit
# returns a HTML form for editing a resource

get '/Pets/:id/edit' do
  id = params[:id]
  "Get edit pet form #{id}"
end
# sixth route
# HTTP Verb = PATCH/PUT
# Controller Action = update
# to update a specific resource
put '/Pets/:id' do
  id = params[:id]
  "updates a pet with the id: #{id}"
end

# seventh route
# HTTP Verb = DELETE
# Controller Action = destroy
# to delete a specific resource
delete '/Pets/:id' do
  id = params[:id]
  "delete a pet with the id: #{id}"
end
