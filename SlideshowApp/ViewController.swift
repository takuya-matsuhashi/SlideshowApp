//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 松橋拓哉 on 2021/01/29.
//  Copyright © 2021 松橋拓哉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playbutton: UIButton!
    @IBOutlet weak var imageViewSegue: UIImageView!
    
    var imagefile = ["sky-asa","sky-yuu","sky-yoru"]
    var imagenumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            // imagefileの画像をstoryboardの画像にセットする
        
        imageViewSegue.image = UIImage(named: imagefile[imagenumber])
    }
    
    
    @IBAction func nextbutton(_ sender: Any) {
        imagenumber += 1
        if imagenumber >= imagefile.count {
            imagenumber = 0
        }
          // imagefileの画像をstoryboardの画像にセットする
        
        imageViewSegue.image = UIImage(named: imagefile[imagenumber])
    }
    
    
    @IBAction func returnbutton(_ sender: Any) {
        imagenumber -= 1
        if imagenumber < 0 {
            imagenumber = imagefile.count - 1
        }
         imageViewSegue.image = UIImage(named: imagefile[imagenumber])
    }
    
    
    var timer: Timer!
    
    @IBAction func playbutton(_ sender: Any) {
        
        // 再生中か停止しているかを判定
               if (timer == nil) {
                   // 再生時の処理を実装

                   // タイマーをセットする
                timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
                // ボタンの名前を停止に変える
                    playbutton.setTitle("停止", for: .normal)
                
                
                } else {
                         // 停止時の処理を実装
                         // タイマーを停止する
                         timer.invalidate()
                         timer = nil
                
                // ボタンの名前を再生に直しておく
                    playbutton.setTitle("再生", for: .normal)
                
                }

        
    }
    
    @objc func changeImage() {
        // indexを増やして表示する画像を切り替える
        imagenumber += 1
        // indexが表示予定の画像の数と同じ場合
        if (imagenumber == imagefile.count) {
            // indexを一番最初の数字に戻す
            imagenumber = 0
        }
         imageViewSegue.image = UIImage(named: imagefile[imagenumber])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
           // segueから遷移先のMagnifyViewControllerを取得する
        
           let magnifyViewController:MagnifyViewController = segue.destination as! MagnifyViewController
        
        magnifyViewController.image = imageViewSegue.image

       }

    @IBAction func back(_ segue: UIStoryboardSegue){
    }
    
}

