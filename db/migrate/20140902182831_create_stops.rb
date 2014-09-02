class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|

      t.integer :line_id
      t.integer :station_id

    end
  end
end
