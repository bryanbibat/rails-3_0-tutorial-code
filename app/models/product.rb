class Product < ActiveRecord::Base
  validates_presence_of :name, :description
  has_many :line_items
  has_many :purchases, :through => :line_items, :uniq => true

  before_validation :assign_default_description

  private

    def assign_default_description
      if description.blank?
        self.description = name
      end
    end
end
