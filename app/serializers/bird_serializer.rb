class BirdSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
  belongs_to :adventure
end
