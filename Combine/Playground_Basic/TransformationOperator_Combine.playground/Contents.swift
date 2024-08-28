import UIKit
import Combine

//MARK: Transformation Operator in Combine

//MARK: Map operator
/*
let firstPublisher = [1,2,3,4,5,6,7].publisher

let mapPublisher = firstPublisher.map { numbers in
    return "Mapped Objects: \(numbers * 2)"
}

let anyCancellable = mapPublisher.sink { response in
    print(response)
}
*/

//MARK: Flat Map Operator
//MARK: Array of array values return in single array in swift
/*
let nameList = [["Prabhakaran","Ranjith"],["Sathish","Kavi"],[]].publisher

let mapPublisher = nameList.flatMap { names in
    names.publisher
}
let anyCancellable = mapPublisher.sink { values in
    print("value is::: \(values)")
}
 */



//MARK: Merge Publisher it will merge two or more publisher into single publisher
/*
let firstPublisher = ["Prabhakaran","Ranjith"].publisher
let secondPublisher = ["Sathish","Kavi","Karthi","Gowtham"].publisher

//it will allign as per the order of merge
let mergePublisher = Publishers.Merge(secondPublisher, firstPublisher)

let anyCancellable = mergePublisher.sink { value  in
    print("name list: \(value)")
}

*/
