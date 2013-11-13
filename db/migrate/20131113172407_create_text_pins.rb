class CreateTextPins < ActiveRecord::Migration
  def change
    create_table :text_pins do |t|
      t.text :content
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
