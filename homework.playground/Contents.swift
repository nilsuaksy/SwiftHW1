import UIKit

//1
func homework1(km:Double) -> Double {
    var mile = km * 0.621
    return mile
}

var result1 = homework1(km: 100)
print(result1)





//2
func homework2(long1:Int, long2:Int, short1:Int, short2:Int) {
    if long1 == long2 && short1 == short2 {
        var area = long1 * short2
        print("Dikdörtgenin alanı: \(area)")
    } else {
        print("Bu bir dikdörtgen değildir.")
    }
}

homework2(long1: 4, long2: 5, short1: 3, short2: 3)





//3
func homework3(sayi: Int) -> Int {
    var result = 1
    for i in 1...sayi {
        result *= i
    }
    return result
}

let result3 = homework3(sayi: 6)
print("Faktöriyel değeri: \(result3)")





//4
func homework4(sayi: Int) -> Int {
    if sayi == 0 {
        return 1
    } else {
        return sayi * homework4(sayi: sayi - 1)
    }
}

let number = 5
let result4 = homework4(sayi: number)
print("The factorial of \(number) is \(result4)")





//5
func countLetterE(in word: String) -> Int {
    var count = 0
    for character in word {
        if character == "e" {
            count += 1
        }
    }
    return count
}

let word = "pencil"
let eCount = countLetterE(in: word)
print("Kelimenin içindeki 'e' harfi sayısı: \(eCount)")





//6
func homework6(kenarSayisi:Int) -> Int {
    let icAcilarToplami = ((kenarSayisi - 2)*180) / kenarSayisi
    return icAcilarToplami
}

let result6 = homework6(kenarSayisi: 5)
print(result6)





//7
func homework7(time: Int) -> Int {
    var oneHour = 50
    
    if time <= 1 {
        return oneHour
    } else {
        var moreHour = oneHour + (time - 1) * 10
        return moreHour
    }
}

var result7 = homework7(time: 5)
print(result7)





//8
func calculateSalary(forDays days: Int) -> Double {
    let dailyWorkingHours = 8
    let hourlyRate = 40
    let overtimeRate = 80
    let maxOvertimeHours = 150
    
    let totalHours = days * dailyWorkingHours
    
    var totalSalary: Double = 0
    if totalHours <= maxOvertimeHours {
        totalSalary = Double(totalHours * hourlyRate)
    } else {
        let regularHoursSalary = Double(maxOvertimeHours * hourlyRate)
        let overtimeHours = totalHours - maxOvertimeHours
        let overtimeSalary = Double(overtimeHours * overtimeRate)
        totalSalary = regularHoursSalary + overtimeSalary
    }
    
    return totalSalary
}

let daysWorked = 20
let salary = calculateSalary(forDays: daysWorked)
print("Toplam maaş: \(salary) TL")

