class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.text :description
      t.integer :donations_target
      t.boolean :hidden
      t.string :name
      t.string :slug
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :campaigns, :slug, unique: true
  end
end
