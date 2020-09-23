class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :text1, null: false
      t.text :text2, null: false
      t.text :text3, null: false
      t.string :image, null: false
      t.references :user, forenign_key: true
      t.timestamps
    end
  end
end
