class CreateUseCases < ActiveRecord::Migration[6.1]
  def change
    create_table :use_cases do |t|
      t.text :description
      t.string :title
      t.string :category
      t.references :python
      t.references :ruby

      t.timestamps
    end
  end
end
