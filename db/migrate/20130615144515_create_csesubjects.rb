class CreateCsesubjects < ActiveRecord::Migration
  def change
    create_table :csesubjects do |t|
      t.string :code
      t.string :name
      t.integer :lecture
      t.integer :tutorial
      t.integer :practical

      t.timestamps
    end
  end
end
