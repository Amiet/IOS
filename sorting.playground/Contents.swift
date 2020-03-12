//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
        
        let arrayValue = [6,5,8,4,7,3,1,0,3,2,9]
        print(merging(array: arrayValue))
    }
    
    
    func merging(array : [Int]) -> [Int]
    {
        guard array.count > 1 else {
            
        return array
            
        }
        
        let leftArray = Array(array[0..<array.count/2])
        let rightArray = Array(array[array.count/2..<array.count])
        
        return sorting(left: merging(array: leftArray), right: merging(array: rightArray))
    }
    
    func sorting(left: [Int], right :[Int]) -> [Int]
    {
        var margingArray = [Int]()
        var left = left
        var right = right
        while left.count > 0 && right.count > 0 {
            if left.first! < right.first!
            {
                margingArray.append(left.removeFirst())
            }else
            {
                margingArray.append(right.removeFirst())
            }
        }
        return margingArray + left + right
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
