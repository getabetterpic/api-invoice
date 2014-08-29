class Invoice < ActiveRecord::Base
  include ActiveModel::Transitions

  validates_presence_of :invoice_date, :status
  belongs_to :customer
  has_many :invoice_lines

  state_machine attribute_name: :status do
    state :open
  end
end
