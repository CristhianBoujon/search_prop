class Property < ApplicationRecord

	has_many :images, inverse_of: :property
	accepts_nested_attributes_for :images

	after_initialize :set_defaults

	def set_defaults
		self.has_garden ||= false
		self.has_garage ||= false
		self.pets_allowed ||= false
		self.children_allowed ||= false
	end
end
