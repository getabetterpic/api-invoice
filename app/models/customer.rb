class Customer < ActiveRecord::Base
  include ActiveModel::Transitions

  validates_presence_of :email, :status
  validates_uniqueness_of :reference, scope: :company_id, allow_blank: true
  belongs_to :company
  has_many :invoices

  state_machine attribute_name: :status do
    state :active
  end
end
