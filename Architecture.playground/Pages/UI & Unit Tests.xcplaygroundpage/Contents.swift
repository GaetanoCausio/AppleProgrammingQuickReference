/*: (C) Gaetano Causio 2017
 
 # Unit Tests

 ## Add a Unit Test
 
 1) In Xcode add a new target of type "... Unit Testing Bundle"
 2) Show **Test navigator** and enable your test targets
 3) Add test cases
 
 ## Setup Code Coverage
 
 1) Edit scheme of your application
 2) Choose **Test**
 3) Enable option **Gather Coverage Data**
 3) Run test an go to **Report navigator**
 
 ## Some Code Examples
 
 */
import XCTest

let numValue = 1.5
let stringValue = "abc"
var notDefined: String? = nil

XCTAssert(numValue > 1.0, "Number is too big.")

XCTAssertEqual(stringValue, "abc")
XCTAssertEqual(numValue, 1.5)

XCTAssertTrue(numValue > 1.0)

XCTAssertNil(notDefined)
