class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :payment_date, :amount, :customer_id,
    :payment_method, :reference, :notes
end
