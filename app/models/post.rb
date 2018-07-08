class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(catergory_attributes)
    category_attributes.each do |catergory_attribute|
      category = Category.find_or_create(catergory_attribute)
      self.categories << category
  end
end
