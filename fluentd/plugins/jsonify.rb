module Fluent
	class LiftJsonFilter < Filter
		Fluent::Plugin.register_filter('jsonify', self)

		def filter(tag, time, record)
			begin
				record['json_log'] = JSON.parse(record['log'])
			rescue Exception => error
				record['json_log'] = {:message => record['log']}
			end
			record
		end
	end
end
