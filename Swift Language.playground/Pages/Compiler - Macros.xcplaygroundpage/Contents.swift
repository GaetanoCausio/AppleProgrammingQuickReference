 import Foundation
 /*: (C) Gaetano Causio 2015
  
 # Macros
 
 ## Availability checking
  
  */
 if #available(iOS 8, *) {
    // iOS 8 or up
    let queryItem = NSURLQueryItem()
    print(queryItem)
 } else {
    // Earlier iOS versions
 }
 
 func myNewFunc() {
    guard #available(iOS 8.0, OSX 10.10, *) else { return }
    // iOS 9, OSX 10.10 or up
 }
 
 // a whole function availability
 @available(iOS 9, *)
 func iOS9Work() {
    // do stuff
 }
 
 #if swift(>=3.0)
 print("Swift version >= 3.0")
 #else
    print("Swift version < 3.0")
 #endif
 
 #if os(iOS)
 print("this code is compiled only on iOS")
 #endif
