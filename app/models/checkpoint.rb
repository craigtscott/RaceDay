class Checkpoint < ActiveRecord::Base
  validates :name, :race_id, presence: true
  
end
