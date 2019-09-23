
// 선택 정렬

var a:Array<Int> = [22,11,33,16,27]

var Selectcount = a.count


func SelectionSorted(Array a:inout Array<Int>,count n:Int) -> Void {
    var temp,min:Int
    for i in 0...n-2 {
        min = i
        
        for j in i+1...n-1 {
            if a[j]<a[min] {
                min = j
            }
        }
        temp = a[i]
        a[i] = a[min]
        a[min] = temp
    }
}

SelectionSorted(Array: &a, count: Selectcount)

for i in a {
    print(i)
}


// 버블 정렬

var bouble:Array<Int> = [22,11,8,55,777,44,32,67,48,2,6,4,44]
var Boublecount = bouble.count

func BoubleSorted(Array a:inout Array<Int>,Count n:Int) -> Void {
    var temp:Int
    for i in stride(from: n-1, to: 0, by: -1) {
        for j in 1...i {
            if a[j-1]>a[j] {
                temp = a[j-1]
                a[j-1] = a[j]
                a[j] = temp
            }
        }
    }
    
}

BoubleSorted(Array: &bouble, Count: Boublecount)

for i in bouble {
    print(i)
}
