class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name
      t.references :contact_person, index: true

      t.timestamps
    end
  end
end
