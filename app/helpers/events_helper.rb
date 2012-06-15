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

	def yes_no(b)
		b ? "Yes" : "No"
	end

end
