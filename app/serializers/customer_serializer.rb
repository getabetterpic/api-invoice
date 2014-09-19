class CustomerSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name, :address, :city, :region,
    :postal_code, :country, :reference, :status,
    :email, :phone, :company_id, :created_at, :updated_at
  has_many :invoices, key: :invoices
end
