class AddFieldMoodToQuotes < ActiveRecord::Migration[6.1]
  def change
    add_column :quotes, :mood, :string
  end
end
