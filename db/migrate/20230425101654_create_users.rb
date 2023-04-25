class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :userId
      t.string :email
      t.string :password
      t.decimal :balance

      t.timestamps
    end
  end
end
