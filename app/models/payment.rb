class Payment < ActiveRecord::Base
  belongs_to :customer
  has_many :applied_payments
  has_many :invoices, through: :applied_payments
end
