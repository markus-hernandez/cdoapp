class CreateRazas < ActiveRecord::Migration
  def change
    create_table :razas do |t|
      t.integer :id
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
  end
end
