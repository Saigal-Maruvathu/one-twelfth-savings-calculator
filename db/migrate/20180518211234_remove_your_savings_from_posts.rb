class RemoveYourSavingsFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :yoursavings, :decimal
  end
end
