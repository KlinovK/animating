//
//  ViewController.swift
//  animating
//
//  Created by Константин Клинов on 6/21/18.
//  Copyright © 2018 Константин Клинов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var mainView: UIView!
    
    
    @IBOutlet weak var mLeftUnit: UIView!
    @IBOutlet weak var mTopUnit: UIView!
    @IBOutlet weak var mRightUnit: UIView!
    @IBOutlet weak var mBottomUnit: UIView!
    @IBOutlet weak var crBottomUnit: UIView!
    @IBOutlet weak var crTopUnit: UIView!
    @IBOutlet weak var clTopUnit: UIView!
    @IBOutlet weak var clBottomUnit: UIView!
    @IBOutlet weak var refreshBtn: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
  
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        
        mainView.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        mLeftUnit.isHidden = false
        mTopUnit.isHidden = false
        mRightUnit.isHidden = false
        mBottomUnit.isHidden = false
        mBottomUnit.isHidden = false
        crBottomUnit.isHidden = false
        crTopUnit.isHidden = false
        clTopUnit.isHidden = false
        clBottomUnit.isHidden = false
        
        UIView.animate(withDuration: 2.3, animations:  {
            self.mLeftUnit.center = self.mainView.center
        })
        { (finished) in
            UIView.animate(withDuration: 2.3, animations:  {
               self.clTopUnit.center = self.mainView.center
            }) { (finished) in
                UIView.animate(withDuration: 2.3, animations:  {
                    self.mTopUnit.center = self.mainView.center
                })
                { (finished) in
                    UIView.animate(withDuration: 2.3, animations:  {
                        self.crTopUnit.center = self.mainView.center
                    })
                    { (finished) in
                        UIView.animate(withDuration: 2.3, animations:  {
                            self.mRightUnit.center = self.mainView.center
                        })
                        { (finished) in
                            UIView.animate(withDuration: 2.3, animations:  {
                                self.crBottomUnit.center = self.mainView.center
                            })
                            { (finished) in
                                UIView.animate(withDuration: 2.3, animations:  {
                                    self.mBottomUnit.center = self.mainView.center
                                })
                                { (finished) in
                                    UIView.animate(withDuration: 2.3, animations:  {
                                        self.clBottomUnit.center = self.mainView.center
                                    })
                                    { (finished) in
                                
                                
                self.refreshBtn.isHidden = false
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
