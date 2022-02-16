import Foundation

// MARK: - Methods
func createAndSortArrays (size: Int) -> [[Int]] {
    
    guard size > 0 else { return [[Int]]() }
    
    // Generates an array of unique random numeric sizes
    func uniqArraySize(size: Int) -> [Int] {
        var array = [Int]()

        while array.count < size {
        for _ in 0..<size {
            let randomValue = Int.random(in: 1...size)
            
            if !array.contains(randomValue) {
                array.append(randomValue)
            }
        }
        }
        return array
    }
    
    // Generates an arrays of random numbers
    func getRandValue(size: Int) -> [Int] {
        var result = [Int]()
        
        for _ in 0..<size {
            let randomValue = Int.random(in: -10-size...size+10)
            result.append(randomValue)
        }
        return result
    }
    
    // Filling an two-dimensional array of sorted arrays
    let uniqueNumArray = uniqArraySize(size: size)

    print(uniqueNumArray)

    var resultArray = [[Int]]()
    var index = 0
    
    for i in uniqueNumArray {
      index % 2 != 0 ? resultArray.append(getRandValue(size: i).sorted().reversed())
        : resultArray.append(getRandValue(size: i).sorted())
        
        index += 1
    }
    return resultArray
}

// MARK: - Properties
var test = createAndSortArrays(size: 5)

print(test)
