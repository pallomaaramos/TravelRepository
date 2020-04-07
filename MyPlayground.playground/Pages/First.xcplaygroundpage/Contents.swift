import UIKit
import PlaygroundSupport


var clima = ""

// Primeira tela: botão de Play

class MyViewController: UIViewController {
    
    let play = UIButton()
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let image2 = UIImage(named: "play.png") as UIImage?
        play.frame =  CGRect(x: 512, y: 303, width: 345, height: 345)
        play.setImage(image2, for: .normal)
        
        let image = UIImage(named:"fundo.png")
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        
        self.view = view
        
        view.addSubview(imageView)
        view.addSubview(play)
    }
    
    override func viewDidLoad() {
        play.addTarget(self, action: #selector(MyViewController.touchedButton), for: .touchUpInside)
    }
    
    @IBAction func touchedButton() {
        //        print("iniciou")
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

 // Segunda Tela: Usuário escolhe entre clima frio ou quente e passa para próxima tela

class SecondViewController: UIViewController {
    
    let clima1 = UIButton()
    let clima2 = UIButton()
    
    override func loadView() {
        
        let view = UIView()
        
        let image = UIImage(named:"clima.png")
        let imageView = UIImageView(image: image)
        imageView.frame.size = CGSize(width: 1440, height: 900)
        
        let image2 = UIImage(named: "climab1.png") as UIImage?
        clima1.frame =  CGRect(x: 250, y: 396, width: 338, height: 350)
        clima1.setImage(image2, for: .normal)
        
        let image3 = UIImage(named: "climab2.png") as UIImage?
        clima2.frame =  CGRect(x: 800, y: 396, width: 338, height: 350)
        clima2.setImage(image3, for: .normal)
        
        let proximo = UIImage(named:"next.png")
        let proximoView = UIImageView(image: proximo)
        proximoView.frame = CGRect(x:1140,y:105,width: 154, height: 154)
        
        self.view = view
        view.addSubview(imageView)
        view.addSubview(clima1)
        view.addSubview(clima2)
        view.addSubview(proximoView)
       
        
        proximoView.isUserInteractionEnabled = true

        let tapProx = UITapGestureRecognizer(target: self, action: #selector(handleTap))

        proximoView.addGestureRecognizer(tapProx)

    }
    @objc func handleTap(_ gesture: UIGestureRecognizer) {
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}

// Aparecem as opções de lugares com base no que ele escolheu antes

class ThirdViewController: UIViewController{
    
    override func loadView() {
        let view = UIView()
        view.frame.size = CGSize(width: 1440, height:900)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        var label = UILabel()
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        label.text = clima
        
        self.view = view
        view.addSubview(label)
    }
}
let firstViewController = MyViewController()
let secondViewController = SecondViewController()
let thirdViewController = ThirdViewController()

let navigation = UINavigationController(screenType: .mac, isPortrait: true)
navigation.navigationBar.isHidden = true
navigation.pushViewController(firstViewController, animated: true)

PlaygroundPage.current.liveView = navigation.scale(to: 0.4)

