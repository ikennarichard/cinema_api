class CreateCinemaMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :cinema_movies do |t|
      t.references :cinema, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
