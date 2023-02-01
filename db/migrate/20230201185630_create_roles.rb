class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.ingeger "role_id"
      t.string "character_id"
      t.integer "movie_id"
      t.ingeger "actor_id"
      t.timestamps
    end
  end
end
