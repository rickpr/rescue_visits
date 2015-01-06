class CreateVisitTeachers < ActiveRecord::Migration
  def change
    create_table :visit_teachers do |t|
      t.references :visit, index: true
      t.references :teacher, index: true

      t.timestamps null: false
    end
    add_foreign_key :visit_teachers, :visits
    add_foreign_key :visit_teachers, :teachers
  end
end
