class ImagesController < ApplicationController
	
	def create
		 @image = Image.new
		 @image.content = params["file"]

		 if @image.save
    		render json: @image, status: :created, location: @image.content.url
  		else
    		render json: @image.errors, status: :unprocessable_entity
  		end 
	end
end