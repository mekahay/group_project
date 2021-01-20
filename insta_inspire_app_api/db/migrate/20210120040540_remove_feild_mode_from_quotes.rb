class RemoveFeildModeFromQuotes < ActiveRecord::Migration[6.1]
  def change
    remove_column :quotes, :mode, :string
  end
end
