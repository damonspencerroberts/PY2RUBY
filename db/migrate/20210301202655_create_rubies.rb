class CreateRubies < ActiveRecord::Migration[6.1]
  def change
    create_table :rubies do |t|
      t.string :code
      t.string :documentation_url
      t.references :use_case, null: false, foreign_key: true

      t.timestamps
    end
  end
end
