class Student < ApplicationRecord
	include ImageUploader[:image]
	
  belongs_to :user
end