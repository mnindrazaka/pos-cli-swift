class Transaction {
    var items: [TransactionItem] = []

    func getTotal() -> Int {
        return items.reduce(0) { current, next in
            current + next.getSubtotal()
        }
    }

    func addItem(item: TransactionItem) {
        items.append(item)
    }
}
