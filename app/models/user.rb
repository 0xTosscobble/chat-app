class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :account, dependent: :destroy, inverse_of: :user
  has_many :messages, dependent: :destroy


  

  accepts_nested_attributes_for :account

  def create_account
    Account.create(user_id: self.id)
  end

end
