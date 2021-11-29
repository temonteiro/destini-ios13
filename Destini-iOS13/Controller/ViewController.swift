//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stories = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(position: stories.storyNumber)
    }

    @IBAction func choiseMade(_ sender: UIButton) {
        let optionChoise = sender.currentTitle!
        
        let position = stories.nextStory(userChoice: optionChoise)
        print("controller \(position)")
        updateUI(position: position)
    }
    
    func updateUI(position: Int){
        storyLabel.text = stories.storyTitle(position)
        choice1Button.setTitle(stories.storyChoiceOne(position), for: .normal)
        choice2Button.setTitle(stories.storyChoiceTwo(position), for: .normal)
    }
    
}

