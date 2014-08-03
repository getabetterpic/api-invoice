class User < ActiveRecord::Base
  include ActiveModel::Transitions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :omniauthable
  has_many :memberships
  has_many :companies, through: :memberships
  validates_presence_of :status

  state_machine attribute_name: :status do
    state :active
  end
end
