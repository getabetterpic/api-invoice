class Invoice < ActiveRecord::Base
  include ActiveModel::Transitions

  validates_presence_of :invoice_date, :status
  belongs_to :customer

  state_machine attribute_name: :status do
    state :active
  end
end
