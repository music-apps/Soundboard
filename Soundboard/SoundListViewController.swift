//
//  SoundListViewController.swift
//  Soundboard
//
//  Created by Walter Ilijevich on 7/29/15.
//  Copyright (c) 2015 garyi113. All rights reserved.
//

import UIKit
import AVFoundation

class SoundListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var player: AVAudioPlayer?
    var aPlayerItem: AVPlayerItem?
    var anAudioStreamer: AVPlayer?
    var sounds: [Sound] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
   
        
        //var soundPath = NSBundle.mainBundle().pathForResource("whistle", ofType: "m4a")
        //var soundURL = NSURL.fileURLWithPath(soundPath!)
        
        
        //var sound1 = Sound()
        //sound1.name = "whistle"
        //sound1.URL = soundURL!
        //sound1.URL = NSURL( string: "http://howjsay.com/mp3/car.mp3")!
        //self.sounds.append(sound1)
     }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 5
        //return self.sounds.count
        return 1
    }

    func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //var sound = self.sounds[indexPath.row]
        var cell = UITableViewCell()
        cell.textLabel!.text = "Say: Car"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        /**
        var soundPath = NSBundle.mainBundle().pathForResource("whistle", ofType: "m4a")
        var soundURL = NSURL.fileURLWithPath(soundPath!)
        
        self.audioPlayer = AVAudioPlayer(contentsOfURL: soundURL, error: nil)
        self.audioPlayer.play()
**/
        //var err: NSError?
        //var fileURL: NSURL = NSURL( string: "howjsay.com/mp3/car.mp3")!
        // = AVAudioPlayer(contentsOfURL: sounds[indexPath.row].URL, error: nil)
        //let audioPlayer: AVAudioPlayer = AVAudioPlayer(contentsOfURL: soundURL, error: nil)
        //audioPlayer.play()
        
        //let urlString = "http://howjsay.com/mp3/car.mp3"
        //let url = NSURL( string: urlString)
        
        
        /***
        var fileURL: NSURL = NSURL(string: "http://howjsay.com/mp3/car.mp3")!
        var error: NSError?
        var player = AVAudioPlayer()
        player = AVAudioPlayer(contentsOfURL: fileURL, error: &error)
        if( player.prepareToPlay() && player.play()){
            println("yes")
        } else {
            println("no")
        }
***/
        
        
        
        //let url = "http://howjsay.com/mp3/car.mp3"
        //let playerItem = AVPlayerItem( URL:NSURL( string:url ) )
        //player = AVPlayer(playerItem:playerItem)
        
        /***
        var aSongURL: NSString = "http://megdadhashem.wapego.ru/files/56727/tubidy_mp3_e2afc5.mp3"
        let aPlayerItem =  AVPlayerItem( URL:NSURL(fileURLWithPath: aSongURL as String))
        var player = AVAudioPlayer(playerItem: aPlayerItem)
        player.rate = 1.0
        player.volume = 1.0
        player.delegate = self
        player.prepareToPlay()
        player.play()
        player.rate = 1.0
***/
        /****

        let url = "http://megdadhashem.wapego.ru/files/56727/tubidy_mp3_e2afc5.mp3"
        
        //let absURL = NSURL(fileURLWithPath: url)
        let absURL = NSURL(string: url)
        
        var error: NSError?
        //var errorPtr: NSErrorPointer = &error
        
        self.player = AVAudioPlayer(contentsOfURL: absURL, error: &error)
        
        if self.player == nil {
            println(" player error: \(error?.localizedDescription)")
        }
        if error != nil {
            println(" player error: \(error?.localizedDescription)")
        }
        
        
        player!.volume   = 1.0
        player!.prepareToPlay()
        player!.play()
        player!.volume   = 1.0
***/

        var aSongURL: NSString = NSString(string: "http://howjsay.com/mp3/car.mp3")
        //var aSongURL: NSString = NSString(string: "http://52.1.188.157/Kodiak.mp3")
        //var aSongURL: NSString = NSString(string: "http://megdadhashem.wapego.ru/files/56727/tubidy_mp3_e2afc5.mp3")
        aPlayerItem = AVPlayerItem( URL: NSURL(string: aSongURL as String))
        anAudioStreamer = AVPlayer(playerItem: aPlayerItem)
        if anAudioStreamer?.status == AVPlayerStatus.Failed {
            println( "Error in anAudioStreamer")        }
        
        if anAudioStreamer == nil {
            println( "Error in anAudioStreamer")
        }
        anAudioStreamer?.play()
        
        
        
    }

}

