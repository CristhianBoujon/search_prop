class ApplicationController < ActionController::API

	before_filter :set_header

	def set_header
		headers['Access-Control-Allow-Origin'] = '*'
	end
end
