class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :category
      t.string :name
      t.string :phone
      t.string :address
      t.datetime :age
      t.string :gender
      t.string :attendance
      t.datetime :baptism
      t.datetime :confirmation
      t.datetime :priesthood
      t.text :help
      t.references :teacher, index: true

      t.timestamps null: false
    end
    add_foreign_key :people, :teachers
  end
end
