class Company < ActiveRecord::Base
  validates_uniqueness_of :internal_reference, case_sensitive: false
  validates_presence_of :name
end
