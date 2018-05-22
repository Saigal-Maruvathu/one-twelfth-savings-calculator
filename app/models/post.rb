class Post < ApplicationRecord
  belongs_to :user


  def conversion
    self.interestrate * 0.01
  end

  def total
    self.totalloan*((1+((self.decimalconversion)/12))**self.numofmonthsfullloan)
  end

  def paymentpermonth
    self.fullbill/self.numofmonthsfullloan
  end

  def fractionalamount
    self.monthlypayment*self.fraction
  end

  def fractionaladdedtomonthly
    self.fractionalpayment + self.monthlypayment
  end

  def  numberofmonthsyouenduppaying
    self.fullbill/self.adjustedmonthlypayment
  end

end
