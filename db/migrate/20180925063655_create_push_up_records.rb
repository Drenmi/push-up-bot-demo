class CreatePushUpRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :push_up_records do |t|
      t.string :user, null: false
      t.integer :count, null: false

      t.timestamps
    end
  end
end
