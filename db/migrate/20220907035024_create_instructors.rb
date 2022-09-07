class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email
      t.integer :hour_value
      t.text :certificates

      t.timestamps
    end
  end
end
