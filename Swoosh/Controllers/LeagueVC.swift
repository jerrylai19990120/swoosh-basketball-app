//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Jerry Lai on 2021-01-24.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
        nextBtn.isEnabled = false
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCsegue", sender: self)
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }

}
