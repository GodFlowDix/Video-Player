//
//  ViewController.swift
//  Video Player
//
//  Created by Mike Dix on 6/16/19.
//  Copyright © 2019 Mike Dix. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBAction func buttonAction(_ sender: Any) {
        
        if let path = Bundle.main.path(forResource: "mikeSwimming", ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }


}

