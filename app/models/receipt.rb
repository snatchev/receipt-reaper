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
    case date
    when /(\d{2})(\d{2})(\d{2,4})/
      year   = $3        if($3.size == 4)
      year ||= "19#{$3}" if($3.to_i > (Date.today.year % 2000))
      year ||= "20#{$3}"

      logger.warn [$1,$2,year].join("/")
      super Chronic.parse([$1,$2,year].join("/"))
    when String
      super Chronic.parse(date)
    else
      super
    end
  end
end
