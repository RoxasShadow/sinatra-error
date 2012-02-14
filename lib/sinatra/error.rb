require 'json'
module Sinatra; module Error	
	def encode(message, format)
		if format == :json
			message = message.is_a?(Hash) ? message : { :error => message }
			message.to_json
		else
			message.is_a?(Hash) ? message.to_json : message
		end
	end
  
	def error!(message, status = 403, format = :json)
		throw(:halt, [status, encode(message, format)]) # uncaught throw :halt (ArgumentError)
	end
end; register Error; end
