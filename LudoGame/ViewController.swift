import UIKit

class ViewController: UIViewController {
    var randomNumber1:Int = 0
    var randomNumber2:Int = 0
    let diceNumberArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        getDiceImages()
    }
    
    
    @IBAction func rollButton(_ sender: UIButton) {
        getDiceImages()
    }
    func getDiceImages(){
        randomNumber1 = Int.random(in: 0..<6)
        randomNumber2 = Int.random(in: 0..<6)
        diceImage1.image = UIImage(named: diceNumberArray[randomNumber1])
        diceImage2.image = UIImage(named: diceNumberArray[randomNumber2])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getDiceImages()
    }
    
}

