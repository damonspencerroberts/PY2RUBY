class AddPopularToUseCases < ActiveRecord::Migration[6.1]
  def change
    add_column :use_cases, :popular, :boolean, default: false
  end
end
