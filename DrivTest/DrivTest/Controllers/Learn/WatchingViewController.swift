//
//  WatchingViewController.swift
//  DrivTest
//
//  Created by Minh Tri on 1/19/21.
//  Copyright © 2021 18120200_18120250_18120254. All rights reserved.
//

import youtube_ios_player_helper
import UIKit

class videoId{
    var Id:String = ""
    
    init(_idName:String){
        self.Id = _idName
    }
}

class WatchingViewController: UIViewController, YTPlayerViewDelegate {

    var type: Int = -1; // license type (A1,A2,B1,B2,C,F)
    
    // video id for each license type
    var listVideoId = [
        videoId(_idName: "ISJeeUw_xKs"),
        videoId(_idName: "b2iYg7Trsz4"),
        videoId(_idName: "RohdkY938J8"),
        videoId(_idName: "0tMNRfvGbLM"),
        videoId(_idName: "16EE-UQtR4M"),
        videoId(_idName: "")
    ]
    
    @IBOutlet var playerView: YTPlayerView!
    
    @IBOutlet weak var BackButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let otherPlayer = YTPlayerView()
        //view.addSubview(otherPlayer)
        
        playerView.delegate = self
        playerView.load(withVideoId: listVideoId[type].Id, playerVars: ["playsinline": 1])
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }

    @IBAction func didTapBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

