func createAndSortArrays (size: Int) -> [[Int]] {
    
    guard size > 0 else { return [] }
    
    // Generates an array of unique random numeric sizes
    func uniqArraySize(size: Int) -> [Int] {
        var setSizes = Set<Int>()
        
        while setSizes.count < size {
            setSizes.insert(Int.random(in: 1...size))
        }
        return Array(setSizes)
    }
    
    // Generates an arrays of random numbers
    func getRandValue(size: Int) -> [Int] {
        return (0..<size).map { _ in Int.random(in: -10-size...size+10) }
    }

    // Filling an two-dimensional array of sorted arrays
    let uniqueNumArray = uniqArraySize(size: size)

    var resultArray = [[Int]]()

    for (index, size) in uniqueNumArray.enumerated() {
      index.isMultiple(of: 2) 
        ? resultArray.append(getRandValue(size: size).sorted(by: <))
        : resultArray.append(getRandValue(size: size).sorted(by: >))
    }
    return resultArray
}
