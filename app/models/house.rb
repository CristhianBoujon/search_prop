class House < Property
	include ActiveModel::Serialization
	
	def self.to_s
		"Casa"
	end
end