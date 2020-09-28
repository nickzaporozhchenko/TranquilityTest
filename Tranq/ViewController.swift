//
//  ViewController.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        startLog()

        let c1: P1 = P1_Impl.make()


        print(c1.descr)
    }


}

