class Activity < ActiveRecord::Base
  attr_accessible :description, :from_id, :object_id, :object_type, :to_id
end
