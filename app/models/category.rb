class Category < ActiveRecord::Base
  has_many :receipts, :dependent => :nullify

  validates_presence_of :name

  def to_s
    name
  end
end
