module EventsHelper
	def time_range(start_time, end_time = nil)
		st = DateTime.strptime(DateTime.now.strftime("%m %d %y " + start_time),"%m %d %y %H:%M") || nil
		en = DateTime.strptime(DateTime.now.strftime("%m %d %y " + end_time),"%m %d %y %H:%M") unless end_time.blank?
		same_p = (st.hour < 12 && en.hour < 12) || (st.hour >= 12 && en.hour >= 12) unless en.blank? || st.blank?
		range = time_format(st, same_p)
		range = range + ' - ' + time_format(en) unless en.blank?
		range
	end

	def time_format(the_time, no_p = false)
		return "" if the_time.blank?
		return the_time.strftime("%l") if the_time.strftime("%M") == "00" && no_p
		return the_time.strftime("%l:%M") if no_p

		return the_time.strftime("%l%P") if the_time.strftime("%M") == "00"
		the_time.strftime("%l:%M%P")
	end
	def yes_no(b)
		b ? "Yes" : "No"
	end

end
