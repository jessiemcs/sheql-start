class CreateGames < ActiveRecord::Migration[5.2]
  def change
	create_table :games do |t|
      t.string :name
      t.string :abbreviation
      t.date :release_date
	  t.text :description
	  t.string :link
	  t.string :picture
	end
  end
end
