class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.text :title

      t.timestamps null: false
    end
  end
end
