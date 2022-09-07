class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :cpf
      t.string :name
      t.string :email
      t.string :phone
      t.date :birth_date

      t.timestamps
    end
  end
end
