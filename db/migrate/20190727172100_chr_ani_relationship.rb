class ChrAniRelationship < ActiveRecord::Migration[5.2]
  def change
  create_table :chr_ani_relationship do |t|
      t.string :name
      t.integer :anime_id
      t.date :
	  t.text :
	end
  end
end
