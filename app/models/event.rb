class Event < ActiveRecord::Base
	validates :start_time, :format => { :with => /^((([0]?[1-9]|1[0-2])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?))$/,
    	:message => "Times must be in a format like 18:00 or 6:00pm" }
	validates :end_time, :format => { :with => /^((([0]?[1-9]|1[0-2])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?))$/,
    	:message => "Times must be in a format like 18:00 or 6:00pm" }

end
