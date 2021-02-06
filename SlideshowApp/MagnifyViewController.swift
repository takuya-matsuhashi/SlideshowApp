//
//  MagnifyViewController.swift
//  SlideshowApp
//
//  Created by 松橋拓哉 on 2021/02/01.
//  Copyright © 2021 松橋拓哉. All rights reserved.
//

import UIKit

class MagnifyViewController: UIViewController {

    var image: UIImage!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = image
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
