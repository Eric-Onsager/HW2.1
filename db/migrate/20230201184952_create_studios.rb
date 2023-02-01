class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.integer "studio_id"
      t.string "studio_name"
      t.timestamps
    end
  end
end
