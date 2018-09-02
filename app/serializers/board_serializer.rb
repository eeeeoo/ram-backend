class BoardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title

  belongs_to :user
  has_many :images
end
