class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :reference
      t.string :status
      t.string :email
      t.string :phone
      t.references :company, index: true

      t.timestamps
    end

    add_index :customers, :reference
    add_index :customers, :email
  end
end
