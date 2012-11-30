class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id
      t.string :name
      t.integer :role
      t.string :email
      t.string :pw

      t.timestamps
    end
  end
end
