class CreateFreePeriods < ActiveRecord::Migration
  def change
    create_table :free_periods do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, index: true
      t.string :description

      t.timestamps
    end
  end
end
