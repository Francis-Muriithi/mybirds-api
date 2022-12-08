class CreateBirds < ActiveRecord::Migration[7.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :adventure_id

      t.timestamps
    end
  end
end
