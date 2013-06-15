class CreateCseteachers < ActiveRecord::Migration
  def change
    create_table :cseteachers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :photo

      t.timestamps
    end
  end
end
