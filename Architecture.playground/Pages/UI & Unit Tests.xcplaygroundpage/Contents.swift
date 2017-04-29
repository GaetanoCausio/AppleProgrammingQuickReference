/*: (C) Gaetano Causio 2017
 
 # Unit Tests

 ## Add a Unit Test
 
 1) In Xcode add a new target of type "... Unit Testing Bundle"
 2) Add test cases
 
 ## You may also need this
 
 1) Show **Test Navigator** and eventually enable your test targets
 2) For a console application edit scheme and add your unit test target under the **Test** phase
 3) Make sure you share your classes within the unit test target if not yet done automatically

 ## Setup Code Coverage
 
 1) Edit scheme of your application
 2) Choose **Test** phase
 3) Enable option **Gather Coverage Data**
 3) Run test and go to **Report navigator**
 
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
