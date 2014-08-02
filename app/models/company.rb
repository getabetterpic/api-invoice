class Company < ActiveRecord::Base
  validates_uniqueness_of :internal_reference, case_sensitive: false
end
