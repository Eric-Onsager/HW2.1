class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.integer "actor_id"
      t.string "name"
      t.timestamps
    end
  end
end
