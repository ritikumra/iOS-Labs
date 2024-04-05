/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection : [Any] = ["Hello", 24, true, 5464.9,28,99.00]
print(collection)

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in collection{
    if item is Int{
        print("The integer has a value of \(item)")
    } else if item is String{
        print("The string has a value of \(item)")
    } else if item is Double{
        print("The double has  a value of \(item)")
    } else if item is Bool{
        print("The boolean has a value of \(item)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var items : [String : Any] = ["Hello" : 1 , "Riti" : true , "Kumra" : 2.5, "ABC" : false]
print(items)

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total : Double = 0
for item in items.values{
    if item is Double{
        if let doubleValue = item as? Double{
            total += doubleValue
            print(total)
        }
    } else if item is Int {
        if let intValue = item as? Double{
            total += intValue
            print(total)
        }
    } else if item is String {
        total += 1
        print(total)
    } else if item is Bool{
        if let boolValue = item as? Bool{
            if(boolValue){
                total += 2
                print(total)
            } else {
                total -= 3
                print(total)
            }
        }
    }
}
print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2 : Double = 0
for item in items.values{
    if item is Double{
        if let doubleValue = item as? Double{
            total += doubleValue
        }
    } else if item is Int {
        if let intValue = item as? Double{
            total += intValue
        }
    } else if item is String {
        if let stringVal = item as? Double{
            total += stringVal
        }
    }
}
print(total2)



/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
