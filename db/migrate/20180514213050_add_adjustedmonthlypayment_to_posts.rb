class AddAdjustedmonthlypaymentToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :adjustedmonthlypayment, :decimal
  end
end
