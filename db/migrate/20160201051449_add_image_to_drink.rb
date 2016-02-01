class AddImageToDrink < ActiveRecord::Migration
  def up
    add_attachment :drinks, :image
  end

  def down
    remove_attachment :drinks, :image
  end
end
