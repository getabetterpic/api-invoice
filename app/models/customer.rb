class Customer < ActiveRecord::Base
  include ActiveModel::Transitions

  validates_presence_of :status
  validates_uniqueness_of :reference, scope: :company_id, allow_blank: true
  belongs_to :company
  has_many :invoices
  has_many :payments

  state_machine attribute_name: :status do
    state :active
  end
end
