import Cocoa

struct Car {
    let model: String
    let numSeats: Int
    var currentGear: Int
    
    func printSummary() {
        print("\(model), \(numSeats), \(currentGear)")
    }
    
    func printGear() {
        print("Current gear is \(currentGear)")
    }
    
    mutating func upShift() {
        if currentGear >= -1 && currentGear < 10 {
            currentGear += 1
            if currentGear == 0{
                print("You upshifted into neutral.")
            } else {
                print("You upshifted to gear number \(currentGear)")
            }
        } else {
            print("You are in \(currentGear) gear, which is the highest gear.")
        }
    }
    
    mutating func downShift() {
        if currentGear > -1 && currentGear <= 10 {
            currentGear -= 1
            if currentGear == -1 {
                print("You downshifted into reverse")
            } else if currentGear == 0 {
                print("You downshifted into neutral")
            } else {
                print("You downshifted into gear number \(currentGear)")
            }
        } else {
            print("You are already in reverse, you cannot downshift any further")
        }
    }
}

var ride = Car(model: "Honda Accord", numSeats: 5, currentGear: 8)

print(ride.currentGear)
ride.upShift()
ride.upShift()
ride.upShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.downShift()
ride.upShift()
ride.upShift()
ride.upShift()
ride.upShift()

