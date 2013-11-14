class CreateContractorsProjects < ActiveRecord::Migration
  def change
    create_table :contractors_projects do |t|
      t.references :contractor, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
