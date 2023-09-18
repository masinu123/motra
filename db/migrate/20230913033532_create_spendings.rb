class CreateSpendings < ActiveRecord::Migration[7.0]
  def change
    create_table :spendings do |t|
      t.integer :amount
      t.string :note
      t.datetime :spent_at
      t.string :currency, limit: 5
      t.integer :state, limit: 2
      t.integer :fund_id
      t.integer :user_id
      t.integer :tag_id

      t.timestamps
    end

    add_index :spendings, :user_id
    add_index :spendings, [:user_id, :fund_id]
    add_index :spendings, [:user_id, :tag_id]
  end
end
