class Message < ActiveRecord::Base
  validates_presence_of :author, :message
end
