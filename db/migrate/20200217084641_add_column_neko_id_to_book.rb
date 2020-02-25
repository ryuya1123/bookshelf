class AddColumnNekoIdToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :neko_id, :string
  end
end
