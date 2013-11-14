class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :contractor, index: true
      t.references :team, index: true
      t.string :name
      t.references :contact_person, index: true

      t.timestamps
    end
  end
end
