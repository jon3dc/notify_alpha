module ApplicationHelper

	def generate_major_id
		@last_entry = Major.last

		if @last_entry && @last_entry.major_id
			return @last_entry.major_id + 1
		else 
			return 1 
		end
	end


	def generate_minor_id(major_id)
		@last_entry = Beacon.where(major_id: major_id).last

		if @last_entry && @last_entry.minor_id
			return @last_entry.minor_id + 1
		else 
			return 1 
		end

	end

end
