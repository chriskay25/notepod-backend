class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.references  :podcast, index: true, foreign_key: true

      t.timestamps
    end
  end
end
