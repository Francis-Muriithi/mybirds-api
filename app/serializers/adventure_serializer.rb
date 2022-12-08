class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :location
  has_many :birds
end
