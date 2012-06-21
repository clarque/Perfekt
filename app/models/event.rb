class Event < ActiveRecord::Base
	belongs_to :client
    validates :occurs_at, :presence => true
    validates_format_of :client_email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :unless => "client_email.blank?"
    validates_format_of :client_zip, :with => /^\d{5}(-\d{4})?$/, :message => "should be in the form 12345 or 12345-1234", :unless => "client_zip.blank?"
end
