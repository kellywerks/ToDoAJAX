class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table(:tables, :tasks)
  end
end
