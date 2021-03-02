class AddCodeToRuby < ActiveRecord::Migration[6.1]
  def change
    add_column :rubies, :code, :string, array: true, default: []
  end
end
