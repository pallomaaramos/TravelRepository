import UIKit
import PlaygroundSupport



class MyViewController: UIViewController {
    
    let button = UIButton()
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        let label = UILabel()
        label.frame = CGRect(x: 30, y: 200, width: 200, height: 20)
        label.text = "Quando pensamos em viajar, geralmente queremos ir à vários lugares e é difícil decidir quais as nossas prioridades e expectativas. Por isso, monte seu próprio cenário para descobrir quais aspectos você mais valoriza no momento para escolher um destino."
        label.numberOfLines = 20
        label.textColor = .black
        
        button.frame = CGRect(x: 150, y: 220, width: 200, height: 40)
        
        button.setTitle("Toque", for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        view.addSubview(label)
        view.addSubview(button)
        
        //        let image = #imageLiteral(resourceName: "dukesamoieda.png")
        //        let imageView = UIImageView(image: image)
        //        imageView.frame = CGRect(x: 10, y: 5, width: 475, height: 595)
        
        //view.addSubview(imageView)
        self.view = view
    }
    
    override func viewDidLoad() {
        button.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
    }
    
    @IBAction func touchedButton() {
        print("oi")
    }
}
let vc = MyViewController(screenType: .mac, isPortrait: true)
PlaygroundPage.current.liveView = vc.scale(to: 0.4)

