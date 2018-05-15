class CreateActorMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :actor_movies do |t|
      t.string :role
      t.references :Actor, foreign_key: true
      t.references :Movie, foreign_key: true

      t.timestamps
    end
  end
end
