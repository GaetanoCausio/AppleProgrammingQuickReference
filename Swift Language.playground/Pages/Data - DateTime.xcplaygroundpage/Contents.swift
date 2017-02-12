/*: (C) Gaetano Causio 2015

# DateTime

*/

import Foundation

let startTime = NSDate()

let stopTime = abs(startTime.timeIntervalSinceNow)

let calendar = Calendar.current

let day:TimeInterval = 24 * 60 * 60 // 24h * 60min * 60sec

var dateComponents = DateComponents()
dateComponents.year = 1973
dateComponents.month = 4
dateComponents.day = 3

let endDateComponents = DateComponents(calendar: calendar, year: 2010, month: 2, day: 17)
let endDate = calendar.date(from: endDateComponents)!

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yy-MM-dd"

print(dateFormatter.string(from: endDate))

let newDate = endDate.addingTimeInterval(day)



