require './lib/Item'

class Bill ()
  attr_reader :params

  def initialize(args)
    @arguments=args
  end    

  def getItemWithTaxes
    @arguments.values.each do |i|
      puts "#{i[:quantity]} #{i[:name]}: #{(i[:price] * i[:quantity] + Item.new(i).calculateTax()).round(2)}"
    end
  end

  def getAllTaxes
    totalTaxes=0

    @arguments.values.each do |i|
      totalTaxes=Item.new(i).calculateTax() + totalTaxes
    end
    puts "Sales Taxes: #{totalTaxes.round(2)}"
    return totalTaxes.round(2)
  end

  def getTotal
    total=0
    
    @arguments.values.each do |i|
      total= (i[:price] * i[:quantity] + Item.new(i).calculateTax()).round(2) + total
    end
    puts "Total: #{total}"
    return total
  end

  def getBill
    getItemWithTaxes()

    getAllTaxes()

    getTotal()
  end
end