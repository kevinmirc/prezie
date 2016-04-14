class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :primary_id
      t.string :title
      t.string :thumbnail
      t.belongs_to :creator, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
