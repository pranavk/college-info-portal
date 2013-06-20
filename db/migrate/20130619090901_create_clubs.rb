class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :logo
      t.string :department
      t.string :user
      t.string :password
      t.string :salt
      t.string :contact
      t.string :fcoordinator

      t.timestamps
    end
  end
end
