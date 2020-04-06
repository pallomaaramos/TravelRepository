//: [Previous](@previous)
import UIKit
import PlaygroundSupport

class ColorViewController: UIViewController {
    var color: UIColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = self.color
        self.view = view
        
        }

    }

let categorias = ColorViewController()
categorias.title = "Categorias"

let destinos = ColorViewController()
destinos.color = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
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

