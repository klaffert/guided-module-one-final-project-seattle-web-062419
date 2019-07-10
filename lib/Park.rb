class Park < ActiveRecord::Base
    has_many :user_parks
end