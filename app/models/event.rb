class Event < ActiveRecord::Base
  attr_accessible :audience, :club, :date, :description, :time, :title, :venue
end
