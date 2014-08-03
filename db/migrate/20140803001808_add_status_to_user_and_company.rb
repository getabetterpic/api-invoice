class AddStatusToUserAndCompany < ActiveRecord::Migration
  def change
    add_column :users, :status, :string
    add_column :companies, :status, :string
  end
end
