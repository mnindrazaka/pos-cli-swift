class TransactionItem {
    var product: Product
    var amount: Int

    init(product: Product, amount: Int) {
        self.product = product
        self.amount = amount
    }

    func getSubtotal() -> Int {
        return product.price * amount
    }
}
