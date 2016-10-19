class Checklist < ActiveRecord::Base
  has_many :items
  has_many :tasks
end
