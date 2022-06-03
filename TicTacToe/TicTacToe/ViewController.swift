//
//  ViewController.swift
//  TicTacToe
//
//  Created by Karl Pfister on 12/14/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rematchButton: UIButton!
    @IBOutlet weak var annoucementLabel: UILabel!
    
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
    
    // Default values for the first game - I could abstract this more..
    var playerMove = 10
    var gamestate = [10,10,10,10,10,10,10,10,10]
    let winningCombos = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    var currentPlayer: Int = 1
    var moveCount = 0
    var gameIsActive = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designPlayAgainButton()
        annoucementLabel.text = "Player 1 - Start us off!"
    }
    //MARK: - Helper Functions
    func designPlayAgainButton() {
        rematchButton.layer.cornerRadius = rematchButton.frame.height / 2
        rematchButton.layer.borderWidth = 1
        rematchButton.layer.borderColor = CGColor(red: 0.993, green: 0.503, blue: 0.000, alpha: 1.00)
    }
    
    //MARK: - Actions
    @IBAction func rematchButtonTapped(_ sender: Any) {
        playerMove = 10
        gamestate = [10,10,10,10,10,10,10,10,10]
        currentPlayer = 1
        moveCount = 0
        gameIsActive = true
        box0Image.image = nil
        box1Image.image = nil
        box2Image.image = nil
        box3Image.image = nil
        box4Image.image = nil
        box5Image.image = nil
        box6Image.image = nil
        box7Image.image = nil
        box8Image.image = nil
        toggleButtons()
        annoucementLabel.text = "Player 1 - Start us off!"
    }
    
    @IBAction func boxTapped(sender: UIButton) {
        print("Box \(sender.tag) was clicked")
        let spot = sender.tag
        // Update the game state
        if gamestate[spot] == 10 {
            // this is a valid move
            gamestate[spot] = currentPlayer
            // Updates the gamestate using the index the user wishes to place a peice at
            updateImage(player: currentPlayer, place: spot)
            
            moveCount += 1
            checkDraw()
            checkForWinner()
            print("\(moveCount) Number of moves completed")
            print("The current Player is player\(currentPlayer)")
            print(gamestate)
        } else {
            annoucementLabel.text = "That spot is taken player \(currentPlayer)! Try again"
        }
    }
    
    func checkForWinner() {
        for combo in winningCombos {
            // we need to check the value of the index in the game state to the index of the wining combo. if they are all the same number thats a win. This is where I got hung up for maybe 30 mins. Once I remembered how to check mutliple cases it all came together.
            if gamestate[combo[0]] != 10 && gamestate[combo[0]] == gamestate[combo[1]] && gamestate[combo[1]] == gamestate[combo[2]] {
                gameIsActive = false
                toggleButtons()
                annoucementLabel.text = "Thats game! Great work player \(currentPlayer)"
            }
        }
        // Outside the for in, we check if the game is active and update the players
        if gameIsActive {
            // to update the current player
            let updatedPlayer = currentPlayer == 1 ? 2:1
            currentPlayer = updatedPlayer
            // add the announcement text
            annoucementLabel.text = "It's Player \(updatedPlayer)'s turn!"
        }
    }
    
    func checkDraw() {
        if moveCount >= 9 {
            gameIsActive = false
            toggleButtons()
            annoucementLabel.text = "Its a draw!"
        }
    }
    
    func updateImage(player: Int, place: Int) {
        switch place {
        case 0:
            box0Image.image = UIImage(named: "\(player)")
        case 1:
            box1Image.image = UIImage(named: "\(player)")
        case 2:
            box2Image.image = UIImage(named: "\(player)")
        case 3:
            box3Image.image = UIImage(named: "\(player)")
        case 4:
            box4Image.image = UIImage(named: "\(player)")
        case 5:
            box5Image.image = UIImage(named: "\(player)")
        case 6:
            box6Image.image = UIImage(named: "\(player)")
        case 7:
            box7Image.image = UIImage(named: "\(player)")
        case 8:
            box8Image.image = UIImage(named: "\(player)")
        default:
            break
        }
    }
    
    func toggleButtons() {
        box0.isEnabled = gameIsActive
        box1.isEnabled = gameIsActive
        box2.isEnabled = gameIsActive
        box3.isEnabled = gameIsActive
        box4.isEnabled = gameIsActive
        box5.isEnabled = gameIsActive
        box6.isEnabled = gameIsActive
        box7.isEnabled = gameIsActive
        box8.isEnabled = gameIsActive
    }
}

