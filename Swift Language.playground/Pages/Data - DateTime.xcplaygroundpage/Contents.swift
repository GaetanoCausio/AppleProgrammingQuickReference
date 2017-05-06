/*: (C) Gaetano Causio 2015

# DateTime

*/

import Foundation

let startTime = Date()

let stopTime = abs(startTime.timeIntervalSinceNow)

let calendar = Calendar.current

let day:TimeInterval = 24 * 60 * 60 // 24h * 60min * 60sec

var dateComponents = DateComponents()
dateComponents.year = 1973
dateComponents.month = 4
dateComponents.day = 3

let endDateComponents = DateComponents(calendar: calendar, year: 2017, month: 2, day: 09)
let endDate = calendar.date(from: endDateComponents)!

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"

print(dateFormatter.string(from: startTime))

let newDate = endDate.addingTimeInterval(day)



