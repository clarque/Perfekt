class Event < ActiveRecord::Base

    validates :occurs_at, :presence => true

end
