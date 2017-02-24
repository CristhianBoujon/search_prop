class Apartment::ShowSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :detail, :tete

  def tete
  	"Works!"
  end
end
