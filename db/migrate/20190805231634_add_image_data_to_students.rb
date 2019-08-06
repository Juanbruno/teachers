class AddImageDataToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :image_data, :text
  end
end
