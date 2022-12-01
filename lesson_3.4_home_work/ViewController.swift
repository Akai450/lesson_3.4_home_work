import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let order: [orderModel] = [orderModel(foodImage: UIImage(named: "doner")!, restrauntName: "Point B", firstFood: "1 х Запеченный донер с говядиной", secondFood: "1 х Классический донер", totalPrice: "400.00 KGS"),
                               orderModel(foodImage: UIImage(named: "burger")!, restrauntName: "Burger Station", firstFood: "1 х Чизбургер с говядиной", secondFood: "1 х Coca-Cola 1 л", totalPrice: "390.00 KGS"),
                               orderModel(foodImage: UIImage(named: "kfc")!, restrauntName: "KFC", firstFood: "1 х Баскет L", secondFood: "1 х Картошка фри стандарт", totalPrice: "1200.00 KGS")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        title = "Ваши заказы Glovo"
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        order.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "order_cell", for: indexPath) as! OrderTableViewCell
        cell.foodImageView.image = order[indexPath.row].foodImage
        cell.restrauntNameLabel.text = order[indexPath.row].restrauntName
        cell.firstFoodLabel.text = order[indexPath.row].firstFood
        cell.secondFoodLabel.text = order[indexPath.row].secondFood
        cell.totalPriceLabel.text = order[indexPath.row].totalPrice
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
}
