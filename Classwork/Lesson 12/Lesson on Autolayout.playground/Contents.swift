import UIKit

let cgWidth: CGFloat = 10.0
let width: Float = 10.0
let widthAgain = 10.0 // same as 'width'

// x, y, width, height

// Points
let point = CGPointMake(10, 10)

// Size
let size = CGSizeMake(20, 20)

// Rectangle
let  rect: CGRect = CGRectMake(10, 10, 20, 20)
rect.origin // getting the point
rect.size // getting the size


/**************************************************************/

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let squarerek = UIView(frame: CGRectMake(20, 20, 80, 80))
        squarerek.backgroundColor = UIColor.blackColor()
        view.addSubview(squarerek)
        
        let squareBRect = CGRectMake(
            squarerek.frame.origin.x = 100,
            squarerek.frame.origin.y = 150,
            squarerek.frame.size.width,
            squarerek.frame.size.height)
        
        let squareB = UIView(frame: squareBRect)
        
        squareB.backgroundColor = UIColor.redColor()
        view.addSubview(squareB)
        
        let squareC = UIView(frame: CGRectMake(
            squareB.bounds.origin.x,
            squareB.bounds.origin.y,
            squareB.bounds.size.width/2.0,
            squareB.bounds.size.height/2.0))
        squareC.backgroundColor - UIColor.blackColor()
        squareB.addSubview(squareC)
    }
    
}