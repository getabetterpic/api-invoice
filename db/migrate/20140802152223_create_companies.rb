class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :phone
      t.string :email
      t.string :website
      t.string :internal_reference
      t.string :external_reference

      t.timestamps
    end
  end
end
