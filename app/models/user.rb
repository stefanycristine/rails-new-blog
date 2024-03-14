class User < ActiveRecord::Base
  has_many :articles, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :confirmable,
         :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable,
         :trackable, 
         :validatable
end
