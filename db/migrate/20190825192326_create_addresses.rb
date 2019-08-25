class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :street_1
      t.text :street_2
      t.text :city
      t.text :state
      t.text :zip_code
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
