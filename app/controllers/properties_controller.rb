class PropertiesController < ApplicationController

	def types
		Rails.application.eager_load!

		render json: Property.subclasses.map { |model| {type: model.name.downcase, label: model.to_s } }
	end

	def find
		render json: Property.where(params_to_search), each_serializer: PropertyListSerializer
	end

	private
	def params_to_search
		
		params_to_search = {
			price: params["min_price"]..params["max_price"], 
			type: params["property_type"].capitalize
		}

		params_to_search[:has_garden] 		= params["garden"] 		if params.has_key? "garden"
		params_to_search[:has_garage] 		= params["garage"] 		if params.has_key? "garage"
		params_to_search[:pets_allowed] 	= params["pets"] 		if params.has_key? "pets"
		params_to_search[:bedrooms] 		= params["bedrooms"] 	if params.has_key? "bedrooms"
		params_to_search[:children_allowed] = params["children"] 	if params.has_key? "children"

		params_to_search
	end
end