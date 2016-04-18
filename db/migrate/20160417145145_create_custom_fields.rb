class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :field
      t.integer :field_type
      t.integer :usr_id

      t.timestamps null: false
    end
  end
end
