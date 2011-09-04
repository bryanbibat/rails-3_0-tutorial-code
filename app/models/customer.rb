class Customer < ActiveRecord::Base
  before_create :activate

  def destroy
    self.active = false
  end

  private
    def activate
      self.active = true
    end
end
