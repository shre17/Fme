class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:lockable, :validatable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :confirmable
  belongs_to :service_category, optional: true

  mount_uploader :profile_pic, PictureUploader

  has_many :user_languages, dependent: :destroy
  has_many :languages, through: :user_languages   

  has_many :user_locations, dependent: :destroy
  has_many :locations, through: :user_locations   
  
end
