/*: (C) Gaetano Causio 2015

# Tuples

*/

import Foundation

let userInfo1 = ("petersmith", "Peter Smith", 18, "simon@gmail.com")
print(userInfo1)

// decompose a tuple
print(userInfo1.3)
let (_, name, _, email) = userInfo1
print(name, email)

let userInfo2 = (id: "petersmith", name: "Peter Smith", age: 18, email: "simon@gmail.com")
print(userInfo2)
print(userInfo2.id)
print(userInfo2.email)

