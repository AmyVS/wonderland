class RenameLinesStationsTable < ActiveRecord::Migration
  def change

    rename_table :lines_stations, :stops
  end
end
