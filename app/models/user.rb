class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :service_category, optional: true     
  # validates :first_name, presence: true
  # validates :last_name, presence: true       
  # validates :contact, presence: true
  # validates :service_category, presence: true
  # validates :experience, presence: true
end
