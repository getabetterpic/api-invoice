class InvoiceLine < ActiveRecord::Base
  include ActiveModel::Transitions

  validates_presence_of :units, :unit_price
  belongs_to :invoice

  state_machine attribute_name: :status do
    state :open
  end
end
