class Customer < ActiveRecord::Base
  before_create :activate

  def destroy
  end

  private
    def activate
      self.active = true
    end
end
