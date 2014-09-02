class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|

      t.string :name

    end
  end
end
