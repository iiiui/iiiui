class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,:token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :device_token
  has_many :items, :foreign_key => "owner_id"
  has_many :user_shares, :foreign_key => "user_id"
  has_many :user_likes, :foreign_key => "user_id"
  has_many :user_addresses, :foreign_key => "user_id"
  has_many :shares, :foreign_key => "user_id"
  has_many :comments, :foreign_key => "user_id"
  has_many :categories, :foreign_key => "user_id"
  has_many :buys, :foreign_key => "buy_id"
  has_many :sells, :foreign_key => "sell_id"
  has_many :photos 
end
