import UIKit

//implementing Quick Sort algorithm using the Lomotu's partitioning scheme to achive pivot

func partionLumoto<T: Comparable>(inputArray: inout [T], low: Int, high: Int) -> Int {
    let pivot = inputArray[high] //allways the last element
    var i = low //to be able to mutate state
    for j in low..<high {
        if inputArray[j] <= pivot {
            //sawp
            (inputArray[i], inputArray[j]) = (inputArray[j],inputArray[i])
            i += 1 // return index pivot
       }
        
    }
    (inputArray[i], inputArray[high]) = (inputArray[high],inputArray[i])
    return i
}

func quicksortLomuto<T: Comparable>(inputArray: inout[T], low: Int, high: Int) {
    if low < high {
        let pivot = partionLumoto(inputArray: &inputArray, low: low, high: high)
        quicksortLomuto(inputArray: &inputArray, low: low, high: pivot - 1)
        quicksortLomuto(inputArray: &inputArray, low: pivot  + 1, high: high)
    }
}

var list = [ 10, 0, 3, 9, 2, 14, 26, 27, 1, 5, 8, -1, 8]
quicksortLomuto(inputArray: &list, low: 0, high: list.count - 1)
