class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :person_responsible, index: true
      t.references :work_category, index: true
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :hours_planned
      t.integer :hours_real
      t.integer :cost
      t.references :status, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
