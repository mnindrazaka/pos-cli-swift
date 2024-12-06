// The Swift Programming Language
// https://docs.swift.org/swift-book

var products = [
    Product(name: "Es Kopi Susu", price: 10000),
    Product(name: "Mojito", price: 8000),
    Product(name: "Pancong", price: 6000),
]

var transaction = Transaction()

print("POS App")

while true {
    print("List of Products : ")

    for (index, product) in products.enumerated() {
        print("\(index + 1). \(product.name) : Rp. \(product.price)")
    }

    print("Select menu : ", terminator: "")
    let selectedProductIndex = (Int(readLine() ?? "") ?? 1) - 1
    let selectedProduct = products[selectedProductIndex]

    print("Input amount : ", terminator: "")
    let amount = (Int(readLine() ?? "") ?? 1)

    let item = TransactionItem(product: selectedProduct, amount: amount)
    transaction.addItem(item: item)

    print("The subtotal is Rp. \(item.getSubtotal())")

    print("Want to add more item (y / n) ? ", terminator: "")
    let isInputAgain = readLine()?.lowercased() == "y"
    if !isInputAgain {
        break
    }
}

print("The total is Rp. \(transaction.getTotal())")
