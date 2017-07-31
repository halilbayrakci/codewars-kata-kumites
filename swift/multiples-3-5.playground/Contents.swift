/*
 If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
 
 Note: If the number is a multiple of both 3 and 5, only count it once.
 */

func countArare(_ n: Int) -> String {
    let adak = n/2
    var result = [String]()
    
    
    if n == 1 {
        result.append("anane")
    } else if n == 2 {
        result.append("adak")
    } else if n > 2 {
        for _ in 1...adak {
            result.append("adak")
        }
        if n % 2 != 0 {
            result.append("anane")
        }
    }
    return result.joined(separator: " ")
}

countArare(5)

func countArare2(_ n: Int) -> String {
    var result = [String]()
    
    if n > 2 {
        for _ in 1...n/2 {
            result.append("adak")
        }
        if n % 2 != 0 {
            result.append("anane")
        }
    } else {
        return n == 2 ? "adak" : "anane"
    }
    return result.joined(separator: " ")
}

countArare2(1)