env = ENV["RACK_ENV"] || "development"
# step one: create a conection with the database I have created
# we're telling datamapper to use a postgres database on localhost. The name will be "bookmark_manager_test" or "bookmark_manager_development" depending on the environment
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

# step two: do the actual work
 # this needs to be done after datamapper is initialised

# step three: After declaring your models, you should finalise them
DataMapper.finalize

# However, how database tables don't exist yet. Let's tell datamapper to create them
DataMapper.auto_upgrade!