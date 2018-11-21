//
//  DetailViewController.swift
//  GameOfThrones
//
//  Created by Aaron Cabreja on 11/20/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var episode: GOTEpisode!
    
    @IBOutlet weak var episodeImage: UIImageView!
    
    @IBOutlet weak var episodeName: UILabel!
    
    
    @IBOutlet weak var seasonNumber: UILabel!
    
    @IBOutlet weak var episodeNumber: UILabel!
    
    
    @IBOutlet weak var runTime: UILabel!
    
    
    @IBOutlet weak var airDate: UILabel!
    
    
    @IBOutlet weak var episodeDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateRecipeUI()
    }
    private func updateRecipeUI() {
        episodeImage.image = UIImage(named: episode.mediumImageID)
        episodeName.text = episode.name
        episodeDescription.text = episode.summary
        runTime.text = "Runtime: \(episode.runtime)"
        seasonNumber.text = "Season: \(episode.season)"
        episodeNumber.text = "Episode: \(episode.number)"
        airDate.text = "AirDate: \(episode.airdate)"
        
    }

}
