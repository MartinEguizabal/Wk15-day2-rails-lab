class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :firm_name
      t.references :player, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
