module EventsHelper
	def time_range(start_time, end_time = nil)
		st = start_time || ''
		en = end_time || ''
		st = st.gsub /:00/, ''
		en = en.gsub /:00/, ''
		st = st.gsub /[pP][mM]/, '' if en =~ /.*[pP][mM]/
		st = st.gsub /[aA][mM]/, '' if en =~ /.*[aA][mM]/
		[st, en].select(&:present?).join(' - ')

	end

	def address(event)
		[event.client_address, event.client_city, event.client_state, event.client_zip].reject{|a| a.blank?}.join(', ')
	end

	def phones(event)
		p = []
		p << "home: #{event.client_home_phone}" unless event.client_home_phone.blank?
		p << "work: #{event.client_work_phone}" unless event.client_work_phone.blank?
		p << "mobile: #{event.client_mobile_phone}" unless event.client_mobile_phone.blank?
		p.join(', ')
	end

	def yes_no(b)
		b ? "Yes" : "No"
	end

end
