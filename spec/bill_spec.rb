require  './lib/bill'
#Bill 1
describe "Get all the taxes of the Bill 1" do
  Bill1={
    1 => {
            quantity: 2,
            name: "book",
            price: 12.49,
            type: "book",
            imported: false
        },        
    2 => {
            quantity: 1,
            name: "music CD ",
            price: 14.99,
            type: "music",
            imported: false
        },        
    3 => {
            quantity: 1,
            name: "chocolate bar",
            price: 0.85,
            type: "food",
            imported: false
        }
  }
  it "should be the sum of all taxes" do
    expect(Bill.new(Bill1).getAllTaxes()).to eql(1.5)
  end
  it "should be the total amount plus taxes" do
    expect(Bill.new(Bill1).getTotal()).to eql(42.32)
  end
end

#Bill2
describe "Get all the taxes of the Bill 1" do
  Bill2={
    1 => {
            quantity: 1,
            name: "imported box of chocolates",
            price: 10.00,
            type: "food",
            imported: true
        },        
    2 => {
            quantity: 1,
            name: "imported bottle of perfume",
            price: 47.50,
            type: "perfume",
            imported: true
        }
  }
  it "should be the sum of all taxes" do
    expect(Bill.new(Bill2).getAllTaxes()).to eql(7.65)
  end
  it "should be the total amount plus taxes" do
    expect(Bill.new(Bill2).getTotal()).to eql(65.15)
  end
end