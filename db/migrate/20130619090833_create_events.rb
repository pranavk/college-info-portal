class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :club
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.string :venue
      t.string :audience

      t.timestamps
    end
  end
end
