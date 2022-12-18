class Item ()
  attr_reader :params

  def initialize(params)    
    @quantity=params[:quantity]    
    @name = params[:name]
    @price = params[:price]
    @type = params[:type]
    @imported = params[:imported]
  end

  def calculateTax
    tax =0.0;
    if ["book","food","medical"].include?(@type)
      if @imported == false
        tax=0.0;                
      else
        tax=5;
      end                    
    else
      if @imported == false
        tax = 10;
      else
        tax = 15;
      end
    end
    return (((@quantity * @price * tax)/100) * 20).round.to_f/20
  end    
end