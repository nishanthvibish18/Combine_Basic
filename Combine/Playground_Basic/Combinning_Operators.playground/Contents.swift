import UIKit

import Combine


//MARK: Combine Latest Operator in Swift
/*
let firstSubject = CurrentValueSubject<String, Never>("Karthi")
let secondSubject = CurrentValueSubject<String, Never>("Gowtham")

let combinePublisher = firstSubject.combineLatest(secondSubject)

let anyCancellable = combinePublisher.sink { value1, value2 in
    print("value 1 is::: \(value1) and value 2 is::: \(value2)")
}

firstSubject.send("Karthi KPTC")
secondSubject.send("Gowtham KPTC")
*/
//MARK: Output
/*
 // value 1 is::: Karthi and value 2 is::: Gowtham
 // value 1 is::: Karthi KPTC and value 2 is::: Gowtham
// value 1 is::: Karthi KPTC and value 2 is::: Gowtham KPTC
 */


//MARK: Zip Operator
/*
let publisher1 = [1,2,3,4,5].publisher
let publish2 = ["A","B","C","D","E","F"].publisher
let publisher3 = [1.0, 2.0, 3.0,4.0,5.0].publisher

let zipOperators = Publishers.Zip3(publisher1, publish2, publisher3)

let anycancellable = zipOperators.sink { value in
    print("value 1 is::: \(value.0), value 2 is:: \(value.1), value 3 is::: \(value.2)")
}
 */
//MARK: Output: here it will not return the F alphabet, because this index count is out of range compare with other 2 array index, so it is not execute
//value 1 is::: 1, value 2 is:: A, value 3 is::: 1.0
//value 1 is::: 2, value 2 is:: B, value 3 is::: 2.0
//value 1 is::: 3, value 2 is:: C, value 3 is::: 3.0
//value 1 is::: 4, value 2 is:: D, value 3 is::: 4.0
//value 1 is::: 5, value 2 is:: E, value 3 is::: 5.0




//MARK: SwitchToLatest Operator Publisher
//let passthroughSubjectPublisher = PassthroughSubject<AnyPublisher<String, Never>, Never>()
//let firstPublisher = CurrentValueSubject<String, Never>("Karthik Raja")
//let secondPublisher = CurrentValueSubject<String, Never>("Sathish")
//
//let anyCancellable = passthroughSubjectPublisher.switchToLatest().sink { values in
//    print(values)
//}
//
//passthroughSubjectPublisher.send(AnyPublisher(firstPublisher))
//firstPublisher.send("Gowtham")
//passthroughSubjectPublisher.send(AnyPublisher(secondPublisher))
//firstPublisher.send("Ranjith")
//firstPublisher.send("Sri Ram")
