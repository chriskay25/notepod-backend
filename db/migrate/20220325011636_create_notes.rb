class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.string :podcast_api_id
      t.string :episode_api_id
      t.string :episode_timestamp

      t.timestamps
    end
  end
end
