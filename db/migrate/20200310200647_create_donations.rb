class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.decimal :amount
      t.boolean :anonymous
      t.string :client_secret
      t.text :message
      t.string :name
      t.string :payment_intent_id
      t.string :status
      t.belongs_to :campaign, null: false, foreign_key: true

      t.timestamps
    end
  end
end
