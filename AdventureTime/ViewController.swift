//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!

    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            updateViews(with: finn)
        case 2:
            updateViews(with: jake)
        case 3:
            updateViews(with: bubblegum)
        case 4:
            updateViews(with: bmo)
        case 5:
            updateViews(with: lemongrab)
        case 6:
            updateViews(with: lsp)
        default:
            nameLabel.text = ""
        }
        
    }
    
    func createAllCharacters(){
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Hero", powerLevel: 50.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Gum", occupation: "Princess", powerLevel: 30.0)
        bmo = Character(name: "BMO", species: "Gameboy", occupation: "Robot", powerLevel: 20.0)
        lemongrab = Character(name: "Lemongrab", species: "Lemon", occupation: "Citrus", powerLevel: 20.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Lumpy", occupation: "Princess", powerLevel: 20.0)
        
    }
    
    func updateViews(with character: Character){
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species
        characterImageView.image = character.displayImage()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createAllCharacters()
        
    }

  
    
    
   

}

