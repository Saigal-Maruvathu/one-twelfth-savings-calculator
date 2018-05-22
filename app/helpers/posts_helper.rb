module PostsHelper
  def conversion(post)
    post.interestrate * 0.01
  end

  def total(post)
    post.totalloan*((1+((post.decimalconversion)/12))**post.numofmonthsfullloan)
  end

  def paymentpermonth(post)
    post.fullbill/post.numofmonthsfullloan
  end

  def fractionalamount(post)
    post.monthlypayment*post.fraction
  end

  def fractionaladdedtomonthly(post)
    post.fractionalpayment + post.monthlypayment
  end

  def  numberofmonthsyouenduppaying(post)
    post.fullbill/post.adjustedmonthlypayment
  end

end
