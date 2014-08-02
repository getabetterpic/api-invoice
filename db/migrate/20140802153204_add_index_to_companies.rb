class AddIndexToCompanies < ActiveRecord::Migration
  def change
    add_index :companies, :internal_reference, unique: true
    add_index :companies, :external_reference
    add_index :companies, :name
  end
end
