class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :sport
      t.string :address
      t.text :content
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
