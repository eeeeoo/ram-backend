class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :boards
  has_many :images, through: :boards
end
