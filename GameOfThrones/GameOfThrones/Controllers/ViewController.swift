//
//  ViewController.swift
//  GameOfThrones
//
//  Created by Alex Paul on 11/16/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showTableView: UITableView!
    var episodes = GOTEpisode.allEpisodes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showTableView.delegate = self
        showTableView.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = showTableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? DetailViewController else {return}
        let episode = episodes[indexPath.row]
        
        //passing the recipe data to the recipeDetailViewController
        detailViewController.episode = episode
    }
    
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "leftEpisodeCell", for: indexPath) as! EpisodeCell
        let episode = episodes[indexPath.row]
        cell.episodeImage.image = UIImage(named: episode.mediumImageID)
        cell.seasonNumber.text = String(episode.season)
        cell.episodeNumber.text = String(episode.number)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}


