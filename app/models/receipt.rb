class Receipt < ActiveRecord::Base
  belongs_to :category
  belongs_to :account

  validates_presence_of :amount, :name

  def amount=(amount)
    if(amount.is_a?(String))
      super amount.gsub('.', '')
    else
      super
    end

  end

  def amount
    amount? && super / 100.0
  end

  def purchase_date=(date)
    if date.is_a?(String)
      super Chronic.parse(date)
    else
      super
    end
  end
end
