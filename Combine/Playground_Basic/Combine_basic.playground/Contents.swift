import UIKit
import Combine

//MARK: Just Publisher publish any value, cancellable receive the value and store it
/*
let publishers = Just("Hello Vibish, Kavi Yaazhini")

let cancellableSubscriber = publishers.sink { value in
    print(value)
}

cancellableSubscriber.cancel()
 */


//MARK: Array Publisher
/*
let integerPublisherArray = [1,2,3,4,5,6,7,8,9,10].publisher
let intCancellable = integerPublisherArray.map({$0 * 2}).sink { numbers in
    print(numbers)
}

intCancellable.cancel()
*/


//MARK: Timer Publisher
/*
let timerPublisher = Timer.publish(every: 1, on: .main, in: .common)
let anyCancellableTimer = timerPublisher.autoconnect().sink { timer in
    print("current timer is::: \(timer)")
}
*/



//MARK: Combine Error Handling

//enum CustomErrors: Error{
//    case unsatisfied
//}
//let numbers = [1,2,3,4,5,6,7,8,9,10].publisher

//MARK: Map Error Mechanism
/*
let mapPublisher = numbers.tryMap { numbers in
    if numbers == 7{
        throw CustomErrors.unsatisfied
    }
    return numbers * 2
}.mapError{ _ in
    return CustomErrors.unsatisfied
}
let anyCancellable = mapPublisher.sink { values in
    switch values{
    case .finished:
        print("task completed")
    case .failure(let error):
        print("error number is::: \(error)")
    }
} receiveValue: { output in
    
    print("output values:::: \(output)")
}
 */

//MARK: Just try catch mechanism
/*
let mapPublisher = numbers.tryMap { number in
    if number == 5{
        throw CustomErrors.unsatisfied
    }
    return number * 2
}
.catch { error in
    
    if let errors = error as? CustomErrors{
        print("error is occured::: \(errors.localizedDescription)")
    }
    return Just(0)
}

let anyCancellable = mapPublisher.sink { values in
    switch values{
    case .finished:
        print("task completed")
    case .failure(let error):
        print("error number is::: \(error)")
    }
} receiveValue: { output in
    
    print("output values:::: \(output)")
}
*/



