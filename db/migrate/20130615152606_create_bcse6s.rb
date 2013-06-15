class CreateBcse6s < ActiveRecord::Migration
  def change
    create_table :bcse6s do |t|
      t.integer :csesubject_id
      t.integer :cseteacher_id

      t.timestamps
    end
  end
end
