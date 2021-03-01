class AddOutputToUseCase < ActiveRecord::Migration[6.1]
  def change
    add_column :use_cases, :output, :string
  end
end
