class Thelist
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user
  field :product, :type String
  field :quantity, :type String
  field :price, :type Integer
end
