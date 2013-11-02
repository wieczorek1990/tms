class CreateDepartmentsUsers < ActiveRecord::Migration
  def change
    create_table :departments_users do |t|
      t.references :department, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
