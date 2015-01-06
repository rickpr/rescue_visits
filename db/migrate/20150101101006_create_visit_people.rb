class CreateVisitPeople < ActiveRecord::Migration
  def change
    create_table :visit_people do |t|
      t.references :visit, index: true
      t.references :person, index: true

      t.timestamps null: false
    end
    add_foreign_key :visit_people, :visits
    add_foreign_key :visit_people, :people
  end
end
