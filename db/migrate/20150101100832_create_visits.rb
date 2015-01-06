class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :time
      t.text :location
      t.text :lesson
      t.text :description
      t.text :summary

      t.timestamps null: false
    end
  end
end
