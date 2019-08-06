class CreateTutorings < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorings do |t|
      t.references :student, foreign_key: true
      t.references :teacher, foreign_key: true
      t.references :topic, foreign_key: true
      t.datetime :when
      t.text :where

      t.timestamps
    end
  end
end
