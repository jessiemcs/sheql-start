class Anime < ActiveRecord::Migration[5.2]
  def change
  create_table :anime do |t|
      t.string :name
      t.string :abbreviation
      t.date :premiere_date
	  t.text :description
	  t.string :link
	  t.string :picture
	end
  end
end
