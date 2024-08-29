class CreateFavoritePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_podcasts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :podcast_api_id, index: {unique: true}

      t.timestamps
    end
  end
end
