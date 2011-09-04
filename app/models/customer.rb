class Customer < ActiveRecord::Base
  before_create :activate

  private
    def activate
      self.active = true
    end
end
