class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.references :user, foreign_key: true
      t.references :type, foreign_key: true
      t.integer :status
      t.integer :phone
      t.text :image_data

      t.timestamps
    end
  end
end
