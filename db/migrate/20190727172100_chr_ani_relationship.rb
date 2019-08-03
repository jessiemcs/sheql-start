class ChrAniRelationship < ActiveRecord::Migration[5.2]
  def change
  create_table :anime_characters do |t|
	  t.references :character
	  t.references :anime
	end
  end
end
