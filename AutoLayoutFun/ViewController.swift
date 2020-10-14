//
//  ViewController.swift
//  AutoLayoutFun
//
//  Created by Gharin Pautz on 10/7/20.
//  Copyright © 2020 Gharin Pautz. All rights reserved.
//

import UIKit

// MARK: - Auto Layout
// so far we have been hardcoding the positioning of our views
// a view is defined by a rectangle
// this rectangle has a lot fo attributes
// origin: the upper lefthand corner used for positioning the view inside its superview (container view)
// size: the width and the height of the view
// point: a point is a relative unit of measurement
// the number of pixels in a point is dependent on screen resolution

// demo 1:
// auto layout will determine the position and size at run-time based on the size of the screen
// auto layout requires a view to have *at least 4 constraints*
// constraint: a relationship between views that can be determined at runtime
// 4 constraints
// position: X and Y constraints (horizontal and vertical)
// size: width and height constraints
// views have implicit widths and heights, which makes our jobs easier


// so far when we used stack views, we set the distribution to "fill equally"
// but what if we have a view that we want to fill the available space? or be twice as big as another view?
// 2 ways
// 1. specifying a multiplier as part of an equal widths/heights constraint
//      the end of section 2.10 in ADS has a calculator lab that does this

// 2. specifying content-hugging priority (CHP) and compression resistance priority (CRP)
// suppose we have 2 buttons, we want one button to "hug" its intrinsic content size, and we want the other button to fill the available space (not hug)
// CHP: this is like a rubber band that keeps a view "hugging" its intrinsic content size
// the higher the CHP, the more likely the view will stay small
// CRP: the higher the CRP, the more likely the view will "resist" getting smaller

// demo 2:

// task: create a layout of 3x3 buttons that equally share the available width and height of the screen
// all 9 buttons should be wired up to the same action that simply prints "button pressed" when any button is pressed

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button pressed")
        // how do we know ehich button was pressed?
        // 2 ways
        // use the tag property of UIView
        print("tag: \(sender.tag)")
        
        // use an outlet collection
        if let senderIndex = buttons.firstIndex(of: sender) {
            print("sender index: \(senderIndex)")
        }
    }
    
}

