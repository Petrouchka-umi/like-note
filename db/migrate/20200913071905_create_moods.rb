class CreateMoods < ActiveRecord::Migration[6.0]
  def change
    create_table :moods do |t|
      t.string :status, null: false
      t.references :message, forenign_key: true
      t.timestamps
    end
  end
end
