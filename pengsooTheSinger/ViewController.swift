//
//  ViewController.swift
//  pengsooTheSinger
//
//  Created by Kim Yeon Jeong on 2020/2/4.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var musicNote: UIImageView!
    @IBOutlet weak var musicNote2: UIImageView!
    @IBOutlet weak var pengSoo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        musicNote.alpha = 0
        musicNote2.alpha = 0
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print(scrollView.contentOffset)
        
        //When pengsoo arrived at (0,0)
        //Then show the music note
        
        if scrollView.contentOffset.x == 0 {
//            musicNote?.isHidden = false
//            musicNote2?.isHidden = false
//How to make animation
//https://stackoverflow.com/questions/6177393/how-to-add-animation-while-changing-the-hidden-mode-of-a-uiview
            
            UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
                self.musicNote?.alpha = 1
                self.musicNote2?.alpha = 1
            }, completion: nil)
        } else {
            UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
                self.musicNote?.alpha = 0
                self.musicNote2?.alpha = 0
            }, completion: nil)
        }
    }
}

