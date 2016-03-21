class CreateSplitters < ActiveRecord::Migration
  def change
    create_table :splitters do |t|

      t.timestamps
    end
  end
end
