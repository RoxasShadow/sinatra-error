Sinatra::Error
=============================
Error handling in Sinatra like Grape.

-----------------------------

Like in Grape, now you can do this in Sinatra

```ruby
require 'sinatra'
require 'sinatra/error'

# parameters:
#	message => String or Hash with the output
#	status  => Integer (default  401)
#	format  => Symbol  (default  :json)
	
error!({ 'error' => 'unauthorized', 'detail' => 'login required' }, 401) unless logged?
	# {"error":"unauthorized","detail":"login required"}
error!('unauthorized', 401) unless logged?
	# {"error":"unauthorized"}
error!('unauthorized', 401, :txt) unless logged?
	# unauthorized
```
