class CreateRubies < ActiveRecord::Migration[6.1]
  def change
    create_table :rubies do |t|
      t.string :documentation_url

      t.timestamps
    end
  end
end
