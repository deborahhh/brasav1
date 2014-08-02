class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :graduation_year
      t.string :major
      t.string :university
      t.string :gender
      t.string :role

      t.timestamps
    end
  end
end
