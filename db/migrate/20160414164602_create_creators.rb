class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :name
      t.string :profile_url

      t.timestamps null: false
    end
  end
end
