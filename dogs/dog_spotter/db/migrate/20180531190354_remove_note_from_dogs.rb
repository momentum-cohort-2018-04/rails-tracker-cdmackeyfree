class RemoveNoteFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :note, :text
  end
end
