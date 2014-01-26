class CreateHazards < ActiveRecord::Migration
  def change
    create_table :hazards do |t|
      t.string :name
      t.string :image_url
      t.string :risks
      t.string :prevention
      t.string :products
      t.integer :area_id

      t.timestamps
    end
  end
end
