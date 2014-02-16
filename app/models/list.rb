class List
include Mongoid::Document

field :name, :type => String
field :quantity, :type => String
field :price, :type => Integer
belongs_to :user
has_many :items


end