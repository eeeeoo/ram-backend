class ImageSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :user_id, :content

  belongs_to :board
  belongs_to :user
end
