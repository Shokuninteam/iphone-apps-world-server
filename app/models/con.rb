class Con < ActiveRecord::Base
  belongs_to :app
  #has_and_belongs_to_many :apps
end
