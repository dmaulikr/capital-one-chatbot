//
//  TestViewController.swift
//  Nessie-iOS-Wrapper
//
//  Created by John Madden on 6/7/17.
//  Copyright © 2017 Nessie. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet var test: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.test.image = UIImage(named: "logo.png")
        print("loaded")
        self.test.alpha = 1.0;
        
        // Fade the logo into view
        self.test.alpha = 1.0
        UIView.animate(withDuration: 2.0, delay: 2.5, options: .curveLinear,
                       animations: {
                        self.test.alpha = 0.0
        },
                       completion: { finished in
                        if (finished) {
                            // Working on a fade out animation
                            print ("doing fadeOut")
                            self.fadeOut()
                        }
        }
        )
    }
    
    func fadeOut() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveLinear,
                       animations: {
                        self.test.alpha = 0.0
        }
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //        Sleep for 2 sec to show logo
        sleep(5)
        print ("performSegue")
        DispatchQueue.main.async {
            self.performSegue(withIdentifier: "logoToApp", sender: nil)}
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
