func generateArrays(size: UInt8) -> [[Int]] {

  var setSizes = Set<UInt8>()
  var resultArray = [[Int]]()

  // Generates an array of unique random numeric sizes
  while setSizes.count < size {
    setSizes.insert(UInt8.random(in: 1 ... .max / 2))
  }
  let uniqArraySize = Array(setSizes)

  // Filling an two-dimensional array of sorted arrays
  for (index, size) in uniqArraySize.enumerated() {
    var randomValuesArray = [Int]()
    for _ in 0..<size {
      randomValuesArray.append(Int.random(in: Int(Int8.min) ... Int(Int8.max)))
    }

    index.isMultiple(of: 2)
      ? resultArray.append(randomValuesArray.sorted(by: <))
      : resultArray.append(randomValuesArray.sorted(by: >))
  }
  return resultArray
}
