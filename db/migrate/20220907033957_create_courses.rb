class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :requirement
      t.integer :workload
      t.decimal :price

      t.timestamps
    end
  end
end
