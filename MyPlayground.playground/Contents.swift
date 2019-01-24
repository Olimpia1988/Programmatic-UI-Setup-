import UIKit


//runtime for buble sort is O(n^2)
func bubblesort(inputArray: inout [Int]) {
    for i in 0..<inputArray.count {
        for j in 1..<inputArray.count {
            if inputArray[j - 1] > inputArray[j] { //swap values
                let tmp = inputArray[j - 1]
                inputArray[j - 1] = inputArray[j]
                inputArray[j] = tmp
            }
        }
    }
    
}

var input1 = [11, -3, 8, 0, 1]

bubblesort(inputArray: &input1) // output [-3, 0, 1, 8, 11]
print()

//insertion sort

func insertionSort(inputArray: inout [Int]) {
    for i in 0..<inputArray.count {
        var j = i
        while j > 0 && inputArray[j - 1] > inputArray[j] {
            inputArray.swapAt(j - 1, j) //swap values
            j -= 1
        }
    }
}
var input2 = [-7, 11, 5, 3, 0, 1]
insertionSort(inputArray: &input2)
print(input2)



var srtInput = "Whats up"

func reverse(str: String) -> String {
    var strEmpty = ""
    var emptyStr = str
    for _ in 0..<str.count {
        strEmpty.append(emptyStr.last!)
        emptyStr = String(emptyStr.dropLast())
    }
    return strEmpty
}

print(reverse(str: srtInput))


func palindrome(strng: String) -> Bool {
    var otherString = reverse(str: strng)
    if otherString == strng {
       return true
    } else {
        return false
    }
}


var test = "racecar"
print(palindrome(strng: test))


func evenAdds(input:[Int]) -> Int {
    var sum = 0
    for i in 0..<input.count {
         if i % 2 == 0 {
           sum += input[i]
    }
    
        
    }
    return sum
}
var arrayInts = [1, 2, 4, 5, 2]
print(evenAdds(input: arrayInts))



func reverseInt(numbers: [Int]) -> [Int] {
    var emptyArray = [Int]()
    
    for i in 0..<numbers.count {
        emptyArray.append(numbers[(numbers.count - 1) - i])
       
    }
    return emptyArray
}

var ints = [1, 2, 3]

print(reverseInt(numbers: ints))


func crazyStuff( x: Int) {
   
    for i in 0..<x {
        if i % 3 == 0 {
            print("Fizz -> \(i)")
            if i % 5 == 0 {
                print("Buzz -> \(i)")
                if i % 3 == 0 && i % 5 == 0 {
                    print("Fizz and Buzz")
                    
                }
            }
        }
    }
}

print(crazyStuff(x: 30))


//number 7


