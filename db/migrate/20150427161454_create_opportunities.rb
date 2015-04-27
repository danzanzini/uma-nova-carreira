class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :title
      t.string :description
      t.string :how_to
      t.belongs_to :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
