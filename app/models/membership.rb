class Membership < ActiveRecord::Base
  include ActiveModel::Transitions

  belongs_to :user
  belongs_to :company
  validates_presence_of :status

  state_machine attribute_name: :status do
    state :active
  end
end
