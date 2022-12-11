require  './lib/item'
require  './lib/bill'

#Bill 1
describe "Exempted 10% because is book" do
    describe "Exempted 5% because is not imported" do 
        it "Should be tax 0" do
            input = {
                    quantity: 2,
                    name: "book",
                    price: 12.49,
                    type: "book",
                    imported: false
                }

            expect(Item.new(input).calculateTax()).to eql(0.0)
        end
    end
end 

describe "Not exempted 10% because is not book, food or medical" do
    describe " Exemped 5% because is not imported" do 
        it "Should not be tax 0" do
            input = {
                quantity: 1,
                name: "music CD",
                price: 14.99,
                type: "music",
                imported: false
            }

        expect(Item.new(input).calculateTax()).to eql(1.5)
        end
    end
end 

describe "Exempted 10% because is food" do
    describe "Exempted 5% because is not imported" do 
        it "Should be tax 0" do
            input = {
                quantity: 1,
                name: "chocolate",
                price: 0.85,
                type: "food",
                imported: false
            }
        expect(Item.new(input).calculateTax()).to eql(0.0)
        end
    end
end 

#Bill 2
describe "Exempted 10% because is food" do
    describe "Not exemped 5% because is imported" do 
        it "Should not be tax 0" do
            input = {
                quantity: 1,
                name: "Imported box of chocolate",
                price: 10.00,
                type: "food",
                imported: true
            }
            expect(Item.new(input).calculateTax()).to eql(0.5)
        end
    end
end 

describe "Not exempted 10% because is not book, food or medical" do
    describe "Not exemped 5% because is imported" do 
        it "Should not be tax 0" do
            input = {
                quantity: 1,
                name: "imported bottle of perfume",
                price: 47.50,
                type: "perfum",
                imported: true
            }
        expect(Item.new(input).calculateTax()).to eql(7.15)
        end
    end
end 

