//
//  ViewController.swift
//  PrivateModule
//
//  Created by fireJera on 05/25/2020.
//  Copyright (c) 2020 fireJera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    dynamic func run(a: String) {
        print(self.count)
        let name = "\(#function)"
        run(a: name)
    }
    
    dynamic var count = 0

}


extension ViewController {
    @_dynamicReplacement(for: run(a:))
    func run_new(a: String) {
        
    }
    
    @_dynamicReplacement(for: count)
    var vCount: Int {
        count = count * 10
        return count
    }
}
