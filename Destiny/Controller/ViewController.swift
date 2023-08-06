//
//  ViewController.swift
//  Destiny
//
//  Created by Anna Zaitsava on 4.08.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var storyLabel: UILabel!
    
    @IBOutlet var choiceOneButton: UIButton!
    
    @IBOutlet var choiceTwoButton: UIButton!
    
    var storyLogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        
        storyLogic.nextStory(userChoice: userChoice)
        updateUI()
        
    }
    
    
    
    
    func updateUI() {
        storyLabel.text = storyLogic.storyTitle()
        choiceOneButton.setTitle(storyLogic.isChoiceOne(), for: .normal)
        choiceTwoButton.setTitle(storyLogic.isChoiceTwo(), for: .normal)
    }
}
