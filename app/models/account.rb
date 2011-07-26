class Account < ActiveRecord::Base
  has_many :receipts

  def to_s
    name
  end
end
