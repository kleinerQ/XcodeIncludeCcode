//
//  ViewController.swift
//  20200929_timecodeEncoder
//
//  Created by Yen on 2020/9/29.
//  Copyright © 2020 Yen. All rights reserved.
//

import UIKit
import Sw
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let v = Sw()
        let documentDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor:nil, create:false)
        guard let fileURL = documentDirectory?.appendingPathComponent("abc.raw") else {
            return
        }
        v.encodeAndSaveToLocal(fileURL: fileURL)
                sleep(3)
                v.decodeLocalFile(fileURL: fileURL)
//        guard let fileURL2 = documentDirectory?.appendingPathComponent("LTC_00_58_00_00__1mins_30.wav") else {
//            return
//        }
//        v.decodeLocalFile(fileURL: fileURL2)
        // Do any additional setup after loading the view.
    }
}

