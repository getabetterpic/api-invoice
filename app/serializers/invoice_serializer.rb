class InvoiceSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :invoice_date, :description, :customer_id,
    :status, :revision, :terms, :created_at, :updated_at, :notes
  has_many :invoice_lines, root: :invoice_lines
end
