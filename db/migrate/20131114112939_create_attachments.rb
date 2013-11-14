class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :description
      t.string :file
      t.references :attachable, index: true
      t.integer :attachable_id
      t.string :attachable_type

      t.timestamps
    end
  end
end
