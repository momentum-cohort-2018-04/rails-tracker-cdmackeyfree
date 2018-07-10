class AddIdToNotesAndDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :note_id, :integer
    add_column :notes, :dog_id, :integer
  end
end
