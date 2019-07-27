class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
  create_table :characters do |t|
      t.string :name
      t.integer :weight
	  t.integer :height
	  t.text :aliases
	  t.string :talent
      t.date :birthday
	  t.text :backstory
	  t.string :link
	  t.string :picture
	  t.references :games
	end
  end
end
