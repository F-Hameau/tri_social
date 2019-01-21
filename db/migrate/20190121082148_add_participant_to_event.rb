class AddParticipantToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :participant, :text, array: true, default: []
  end
end
