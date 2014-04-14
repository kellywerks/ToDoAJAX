class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.boolean :done
      t.timestamps
    end
  end
end
