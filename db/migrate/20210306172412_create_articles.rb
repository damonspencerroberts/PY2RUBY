class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :url
      t.string :image_url
      t.string :time_length
      t.string :date

      t.timestamps
    end
  end
end
