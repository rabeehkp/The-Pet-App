//
//  WorkingHourConfig_Model.swift
//  ThePetApp
//
//  Created by rabeeh kp on 08/03/23.
//

import UIKit

class WorkingHourConfig_Model: NSObject {

    private let daysOfWeekWithMinimal = ["M", "Tu", "W", "T", "F", "Sa", "Su"]
    private let daysOfWeek = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    
    func getDateAndCheckItsWorkingHour()->Bool {
        let formatter = DateFormatter()
        formatter.dateFormat = "E HH:mm"
        
        let currentTime = Date()
        let dateString = formatter.string(from: currentTime)
        let currentDay = dateString.components(separatedBy: " ")[0]
        
        ///Load the contents of the "config.json" file
        guard let path = Bundle.main.path(forResource: "config", ofType: "json"),
              let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
              let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
              let workHoursString = json["settings"] as? [String: Any],
              let workHours = workHoursString["workHours"] as? String else {
            fatalError("Failed to load or parse JSON file")
        }
        
        let workHoursArr = workHours.components(separatedBy: " ")
        let workDaysArr = workHoursArr[0].components(separatedBy: "-")
        formatter.dateFormat = "HH:mm"

        let startWorkTime = self.addTime(time: workHoursArr[1])
        let endWorkTime = self.addTime(time: workHoursArr[3])
        guard let startWorkDayIndex = daysOfWeekWithMinimal.firstIndex(of: workDaysArr[0]),
              let endWorkDayIndex = daysOfWeekWithMinimal.firstIndex(of: workDaysArr[1]) else { return false}
        
        if let todayIndex = daysOfWeek.firstIndex(of: currentDay) {
            let isWorkday = (startWorkDayIndex...endWorkDayIndex).contains(todayIndex)
            let isWorkingHour = startWorkTime <= currentTime && endWorkTime >= currentTime
            
            return isWorkday && isWorkingHour
        }
        else {
            return false
        }
    }
    
    private func addTime(time: String)-> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let workHoursArr = time.components(separatedBy: ":")
        let calendar = Calendar.current.date(bySettingHour: Int(workHoursArr[0]) ?? 0, minute: Int(workHoursArr[1]) ?? 0, second: 00, of: .now)
        
        if let date = calendar {
           return date
        }else {
            return formatter.date(from: time)!
        }
    }
    
    func convertStringToDate(dateString: String, format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        let dateObj = dateFormatter.date(from: dateString)

        dateFormatter.dateFormat = format
        return dateFormatter.string(from: dateObj!)
    }
}
