class Product < ActiveRecord::Base
  #validates_presence_of :title, :description, :image_url
  #validates_numericality_of :price
  #validates_uniqueness_of:title
  validates_presence_of :owner_id
  belongs_to :owner
  protected
  def validate
    errors.add(:price, "should be at least 0.01") if price.nil? || price < 0.01
  end
end
