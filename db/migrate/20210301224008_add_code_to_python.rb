class AddCodeToPython < ActiveRecord::Migration[6.1]
  def change
    add_column :pythons, :code, :string, array: true, default: []
  end
end
