func generateArrays(size: UInt8) -> [[Int]] {

  // Generates an array of unique random numeric sizes
  var setSizes = Set<UInt8>()

  while setSizes.count < size {
    setSizes.insert(UInt8.random(in: 1...size + 10))
  }
  let uniqArraySize = Array(setSizes)

  // Filling an two-dimensional array of sorted arrays
  var randomValuesArray = [Int]()
  var resultArray = [[Int]]()

  let intRange = Int(size)

  for (index, size) in uniqArraySize.enumerated() {

    for _ in 0..<size {
      randomValuesArray.append(Int.random(in: -10 - intRange...intRange + 10))
    }

    index.isMultiple(of: 2)
      ? resultArray.append(randomValuesArray.sorted(by: <))
      : resultArray.append(randomValuesArray.sorted(by: >))

    randomValuesArray = [Int]()
  }
  return resultArray
}
