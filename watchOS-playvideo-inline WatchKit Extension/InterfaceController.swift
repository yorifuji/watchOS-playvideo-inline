//
//  InterfaceController.swift
//  watchOS-playvideo-inline WatchKit Extension
//
//  Created by yorifuji on 2020/05/24.
//  Copyright © 2020 yorifuji. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var movie: WKInterfaceInlineMovie!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        movie.setPosterImage(WKImage(imageName: "poster"))

        // auto play is true as default
        movie.setAutoplays(false)

        let path = Bundle.main.path(forResource: "sample", ofType: "mp4")!
        let url = URL(fileURLWithPath: path)
        movie.setMovieURL(url)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onTapPlay() {
        print(#function)
        movie.play()
    }

    @IBAction func onTapPause() {
        print(#function)
        movie.pause()
    }

}
