import UIKit

class OrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var restrauntNameLabel: UILabel!
    @IBOutlet weak var firstFoodLabel: UILabel!
    @IBOutlet weak var secondFoodLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var repeatButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        repeatButton.layer.cornerRadius = 26 / 2
    }
}
