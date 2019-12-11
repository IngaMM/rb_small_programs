def stock_picker(stocks)

  indexBuy = -1
  indexSell = -1
  profit = 0

  stocks.each_with_index do |stock, indexBuyTest|
    for indexSellTest in (indexBuyTest+1..stocks.length-1)
      profitTest = stocks[indexSellTest]-stock
      if profitTest > profit
        indexBuy = indexBuyTest
        indexSell = indexSellTest
        profit = profitTest
      end
    end
  end

  return [indexBuy, indexSell]

end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 10, 1])
