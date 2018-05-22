class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.decimal :totalloan
      t.decimal :monthlypayment
      t.decimal :interestrate
      t.decimal :decimalconversion
      t.decimal :fraction
      t.decimal :fractionalpayment
      t.decimal :fullbill
      t.decimal :youpay
      t.decimal :yoursavings
      t.decimal :numofmonthsyoupay
      t.decimal :numofmonthsfullloan
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
