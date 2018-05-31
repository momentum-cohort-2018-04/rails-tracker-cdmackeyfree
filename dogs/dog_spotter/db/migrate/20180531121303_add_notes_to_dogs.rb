class AddNotesToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :note, :text
  end
end
