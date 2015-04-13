DATABASE_NAME = 'sinatra_skeleton_dev'

def set_database!
  set :database, adapter: 'postgresql', database: DATABASE_NAME
rescue PG::ConnectionBad
  :noop_db_may_not_yet_be_created
end
