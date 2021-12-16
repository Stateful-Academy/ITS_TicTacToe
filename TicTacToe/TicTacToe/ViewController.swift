//
//  ViewController.swift
//  TicTacToe
//
//  Created by Karl Pfister on 12/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    @IBOutlet weak var box3: UIButton!
    @IBOutlet weak var box4: UIButton!
    @IBOutlet weak var box5: UIButton!
    @IBOutlet weak var box6: UIButton!
    @IBOutlet weak var box7: UIButton!
    @IBOutlet weak var box8: UIButton!
    @IBOutlet weak var box9: UIButton!
    
    @IBOutlet weak var box1Image: UIImageView!
    @IBOutlet weak var box2Image: UIImageView!
    @IBOutlet weak var box3Image: UIImageView!
    @IBOutlet weak var box4Image: UIImageView!
    @IBOutlet weak var box5Image: UIImageView!
    @IBOutlet weak var box6Image: UIImageView!
    @IBOutlet weak var box7Image: UIImageView!
    @IBOutlet weak var box8Image: UIImageView!
    @IBOutlet weak var box9Image: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func boxTapped(sender: UIButton) {
        switch sender {
        case box1:
            boxClicked(sender)
        case box2:
            boxClicked(sender)
        case box3:
            boxClicked(sender)
        case box4:
            boxClicked(sender)
        case box5:
            boxClicked(sender)
        case box6:
            boxClicked(sender)
        case box7:
            boxClicked(sender)
        case box8:
            boxClicked(sender)
        case box9:
            boxClicked(sender)
        default:
            break
        }
    }
    

    
//    func createTap(on imgageView: UIImageView, type box: Box) {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(boxClicked(_:)))
//        tap.name = box.rawValue
//        imgageView.isUserInteractionEnabled = true
//        imgageView.addGestureRecognizer(tap)
//    }

    func boxClicked(_ sender: UIButton) {
        print("Box \(sender.tag) was clicked")
        let selectedBox = sender.tag + 1
        
        sender.setImage(UIImage.init(named: "xIcon"), for: .normal)
        sender.imageView?.contentMode = .scaleAspectFit
    }
    
//    func makeChoice(_ selectedBox: UIButton) {
//
//        if
//
//    }
//
//    enum Box: String {
//        case one, two, three, four, five, six, seven, eight, nine
//    }

}

