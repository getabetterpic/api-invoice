class Company < ActiveRecord::Base
  include ActiveModel::Transitions

  validates_uniqueness_of :internal_reference, case_sensitive: false
  validates_presence_of :name, :internal_reference, :status
  has_many :memberships
  has_many :users, through: :memberships
  has_many :customers

  state_machine attribute_name: :status do
    state :active
  end
end
