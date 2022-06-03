//
//  ViewController.swift
//  TicTacToe
//
//  Created by Karl Pfister on 12/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var box0: UIButton!
    @IBOutlet weak var box1: UIButton!
    @IBOutlet weak var box2: UIButton!
    @IBOutlet weak var box3: UIButton!
    @IBOutlet weak var box4: UIButton!
    @IBOutlet weak var box5: UIButton!
    @IBOutlet weak var box6: UIButton!
    @IBOutlet weak var box7: UIButton!
    @IBOutlet weak var box8: UIButton!
    
    @IBOutlet weak var box0Image: UIImageView!
    @IBOutlet weak var box1Image: UIImageView!
    @IBOutlet weak var box2Image: UIImageView!
    @IBOutlet weak var box3Image: UIImageView!
    @IBOutlet weak var box4Image: UIImageView!
    @IBOutlet weak var box5Image: UIImageView!
    @IBOutlet weak var box6Image: UIImageView!
    @IBOutlet weak var box7Image: UIImageView!
    @IBOutlet weak var box8Image: UIImageView!
    
    //MARK: - Properties
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    @IBAction func boxTapped(_ sender: UIButton) {
        print("box tapped", sender.tag)
    }
}

