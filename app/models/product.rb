class Product < ActiveRecord::Base
  validates_presence_of :name, :description

  before_validation :assign_default_description

  private

    def assign_default_description
      if description.blank?
        self.description = name
      end
    end
end
