class Item

  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :quantity, type: String
  field :price, type: Float
  field :is_acquired, type: Mongoid::Boolean
  belongs_to :list


validates :name, presence: true
validates :quantity, presence: true
validates :price, presence: true
# ask lorin about validating is_acquried
end