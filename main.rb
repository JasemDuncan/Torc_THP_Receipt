require  './lib/Bill'

#Declare input data

Bill1 = {
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

Bill.new(Bill1).getBill()

Bill2 = {
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

Bill.new(Bill2).getBill()

Bill3 = {
  1 => {
    quantity: 1,
    name: "imported bottle of perfume",
    price: 27.99,
    type: "perfume",
    imported: true
  },        
  2 => {
    quantity: 1,
    name: "bottle of perfume",
    price: 18.99,
    type: "perfume",
    imported: false
  },        
  3 => {
    quantity: 1,
    name: "packet of headache pills ",
    price: 9.75,
    type: "medical",
    imported: false
  },
  4 => {
    quantity: 3,
    name: "imported boxes of chocolates ",
    price: 11.25,
    type: "food",
    imported: true
  }
}

Bill.new(Bill3).getBill()