//: [Previous](@previous)
import UIKit
import PlaygroundSupport

class ColorViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
//    var background: UIImage = UIImageView(image:#imageLiteral(resourceName: <#T##String#>))
//
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
        self.view = view
        
        }

    }

//let fundo = #imageLiteral(resourceName: "Group 1-2.png")

let categorias = ColorViewController()
categorias.title = "Categorias"

let destinos = ColorViewController()
//destinos.view = UIImageView (image: fundo)
//destinos.background = #imageLiteral(resourceName: <#T##String#>)
destinos.color = .blue
destinos.title = "Destinos"


let viewControllers = [ /* suas telas */
    categorias,
    destinos
]

let tabBarController = UITabBarController(screenType: .mac)
tabBarController.viewControllers = viewControllers

let colorViewController = ColorViewController()

colorViewController.modalPresentationStyle = .currentContext

PlaygroundPage.current.liveView = tabBarController.scale(to: 0.4)

