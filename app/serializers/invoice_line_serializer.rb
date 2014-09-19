class InvoiceLineSerializer < ActiveModel::Serializer
  attributes :id, :description, :units, :unit_price,
    :status, :created_at, :updated_at, :invoice_id
end
