class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :category
      t.timestamps
    end
    add_index :subscriptions, [:email, :category]
  end
end
