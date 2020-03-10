class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :short_description
      t.text :long_description
      t.string :slug
      t.boolean :archived
      t.date :event_date
      t.integer :donations_target
      t.boolean :featured

      t.timestamps
    end
    add_index :events, :slug, unique: true
  end
end
