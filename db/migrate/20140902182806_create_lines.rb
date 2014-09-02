class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|

      t.string :name
    end
  end
end
