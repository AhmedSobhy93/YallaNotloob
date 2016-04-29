class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  has_many :groups
  has_many :friends
  has_many :notifications


  has_many      :sent, 
                :class_name => "Notification",
                :foreign_key  => "sent_id"

  has_many      :received, 
                :class_name => "Notification", 
                :foreign_key  => "received_id"

end
