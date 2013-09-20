class CreateAdmin < ActiveRecord::Migration
  def change
    create_table :admin do |t|
      t.string :name

      t.timestamps
    end
  end
end
