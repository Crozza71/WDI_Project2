class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
mount_uploader :profile_picture, GraffitiImageUploader
has_many :created , :class_name => "Quote"
has_many :quotes
has_and_belongs_to_many :liked_quotes, :class_name => "Quote"

end
