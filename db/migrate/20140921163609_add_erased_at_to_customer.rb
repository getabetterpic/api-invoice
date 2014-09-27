class AddErasedAtToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :erased_at, :date
  end
end
