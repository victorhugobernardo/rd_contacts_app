class CreateUsrs < ActiveRecord::Migration
  def change
    create_table :usrs do |t|
      t.string :name
      t.string :login
      t.string :pass

      t.timestamps null: false
    end
  end
end
