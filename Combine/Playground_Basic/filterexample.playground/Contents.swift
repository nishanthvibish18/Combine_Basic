import UIKit
import Combine


//MARK: Filter Operations Combine
/*
 let numberPublishers = (1...20).publisher
 
 let filterPublisher = numberPublishers.filter { numbers in
 return numbers % 2 == 0
 }
 
 let anyCancellable = filterPublisher.sink { value in
 print(value)
 }
 */

//MARK: Compact Map Filter Combine. it remove the null value it does not return null values
/*
let numbersPublisher = ["1","2","5","100","120","Gowtham","129"].publisher
let mappedPublisher = numbersPublisher.compactMap { numbers in
   return  Int(numbers)
}
let anyCancellable = mappedPublisher.sink { result in
    print(result)
}
*/


//MARK: Debounce Operator
/*
let passthroughts = PassthroughSubject<String, Never>()

let bouncer = passthroughts.debounce(for: .seconds(12.0), scheduler: DispatchQueue.main)


let anyCanellable = bouncer.sink { value in
    print(value)
}

passthroughts.send("Prasanth")
passthroughts.send("Vignesh")
passthroughts.send("Karthi")
passthroughts.send("Arun")

*/



