/*: (C) Gaetano Causio 2017
 
 # iOS - Tips and Trics
 
 */

import Foundation

// prevents application screen to dim and sleep
UIApplication.shared.isIdleTimerDisabled = true

// hide status bar
override var prefersStatusBarHidden: Bool { return true }
