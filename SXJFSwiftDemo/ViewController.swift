//
//  ViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/16.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var textField_UserName: UITextField!
    
    @IBOutlet weak var textField_Pwd: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var textField_Result: UITextField!
    let dosposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
//       let squenceElements = Observable.of(1,2,3,4,5)
//        _ = squenceElements.subscribe({ event in
//            print(event)
//        })
//
//        let generated = Observable.generate(initialState: 0, condition: {$0<20}, iterate: {$0+4})
//        _ = generated.subscribe{
//            print($0)
//        }
//
//      let error = NSError(domain: "TEST", code: -1, userInfo: nil)
//        let erroredSequence = Observable<Any>.error(error)
//        _ = erroredSequence.subscribe{
//            print($0)
//        }
//
//        let deferredSequence:Observable<Int> = Observable.deferred{
//            print("creating")
//            return Observable.create{
//                observer in print("emminting")
//                observer.onNext(0)
//                observer.onNext(1)
//                observer.onNext(2)
//
//                return Disposables.create()
//            }
//        }
//        _ = deferredSequence.subscribe{
//            event in print("\(event)")
//        }
       
//        let emptySequence = Observable<Int>.empty()
//        _ = emptySequence.subscribe{
//            event in print(event)
//        }
//
//      let singleElementSequenece = Observable.just("iOS")
//        _ = singleElementSequenece.subscribe({
//            print($0)
//        })
//
//         let subject = PublishSubject<Int>()
//        _ = subject.subscribe({
//            print($0)
//        })
//        subject.onNext(1)
//        subject.onNext(2)
//        subject.onNext(3)
//        subject.onNext(4)
//
//
//        let subject1 = ReplaySubject<Int>.create(bufferSize:1)
//        _ = subject1.subscribe({
//            event in print("1->\(event)")
//        })
//
//        subject1.onNext(1)
//        subject1.onNext(2)
//        _ = subject1.subscribe({
//            event in
//            print("2->\(event)")
//        })
//        subject1.onNext(3)
//        subject1.onNext(4)

//         let subject = BehaviorSubject(value: "z")
//        _ = subject.subscribe({
//            event in print("1->\(event)")
//        })
//        subject.onNext("a")
//        subject.onNext("b")
//        _ = subject.subscribe({
//            event in print("2->\(event)")
//        })
//
//        subject.onNext("c")
//        subject.onCompleted()

//        let  variable = Variable("Z")
//        _ = variable.asObservable().subscribe({
//            event in print("1->\(event)")
//        })
//        variable.value = "a"
//        variable.value = "b"
//        _ = variable.asObservable().subscribe({
//            event in print("2->\(event)")
//        })
//        variable.value = "c"
        
//
//        let originalSequence = Observable.of(1,2,3)
//        _ = originalSequence.map({
//            number in number*2
//        }).subscribe({
//            print($0)
//        })
//
//        let sequenceInt = Observable.of(1,2,3,4)
//        let sequenceString = Observable.of("A","B","C","D","E","F","iOS")
//        _ = sequenceInt.flatMap({
//            (event:Int)->Observable<String> in print("From sequentInt \(event)")
//            return sequenceString
//        }).subscribe({
//            print($0)
//        })
        
//        let sequenceToSum = Observable.of(0,1,2,3,4,5)
//        _ = sequenceToSum.scan(0){
//            acum,elem in acum + elem
//        }.subscribe({
//            print($0)
//        })
//
//         _ = Observable.of(0,1,2,3,4,5,6,7,8,9).filter({
//            $0%2 == 0
//        }).subscribe({
//            print($0)
//        })
        
//        _ = Observable.of(1,5,6,7,2,4,6,8,41,2).take(5).subscribe({
//            print($0)
//        })
//

        
//          _ = Observable.of(1,2,3).startWith(0).subscribe({
//                print($0)
//          })

//           let observer1 = PublishSubject<String>()
//            let observer2 = PublishSubject<Int>()
//        _ = Observable.combineLatest(observer1, observer2){
//            "\($0)\($1)"
//        }.subscribe({
//            print($0)
//        })
//        observer1.onNext("iOS")
//        observer2.onNext(6)
//        observer1.onNext("swift")
//        observer2.onNext(66)
//        observer1.onNext("rx")
//        observer2.onNext(666)
//
//        let observer1 = Observable.just(2)
//        let observer2 = Observable.of(0,1,2,3,4)
//        _ = Observable.combineLatest(observer1, observer2){
//            $0*$1
//        }.subscribe({
//            print($0)
//        })
//
        
//        let observer1 = Observable.just(2)
//        let observer2 = Observable.of(0,1,2,3)
//        let observer3 = Observable.of(0,1,2,3,4)
//        _ = Observable.combineLatest(observer1, observer2,observer3){
//            ($0+$1)*$2
//        }.subscribe({
//            print($0)
//        })
//
        
//
//            let stringObserver = PublishSubject<String>()
//            let intObserver = PublishSubject<Int>()
//        _ = Observable.zip(stringObserver,intObserver){
//            "\($0)\($1)"
//        }.subscribe({
//            print($0)
//        })
//
//        stringObserver.onNext("iOS")
//        intObserver.onNext(6)
//        stringObserver.onNext("swift")
//        intObserver.onNext(66)
//        stringObserver.onNext("rx")
//        intObserver.onNext(666)
//        stringObserver.onNext("不会打印")
       
//        let subject1 = PublishSubject<Int>()
//        let subject2 = PublishSubject<Int>()
//        _ = Observable.of(subject1,subject2).merge(maxConcurrent: 2).subscribe({
//            event in print(event)
//        })
//
//        subject1.onNext(10)
//        subject2.onNext(30)
//
//        subject1.onNext(50)
//        subject2.onNext(70)
//
//        subject1.onNext(90)
//        subject2.onNext(110)
        
//        let var1 = Variable(0)
//        let var2 = Variable(200)
//        let var3 = Variable(var1.asObservable())
//        _ = var3.asObservable().switchLatest().subscribe({
//            print($0)
//        })
//        var1.value = 1
//        var1.value = 2
//        var1.value = 3
//        var1.value = 4
//        var3.value = var2.asObservable()
//        var2.value = 201
//        var1.value = 5
//        var1.value = 6
//        var1.value = 7

//          let sequeceThatFails = PublishSubject<Int>()
//          let recoverySequence = Observable.of(100,200,300,400)
//          _ = sequeceThatFails.catchError({
//            error in return recoverySequence
//          }).subscribe({
//            print($0)
//          })
//        sequeceThatFails.onNext(1)
//        sequeceThatFails.onNext(2)
//        sequeceThatFails.onNext(3)
//        sequeceThatFails.onNext(4)
//        sequeceThatFails.onError(NSError(domain: "test", code: -1, userInfo: nil))
//
        
//        var count = 1
//        let funnyLookingSequence = Observable<Int>.create({
//            observer in let error = NSError(domain: "test", code: 0, userInfo: nil)
//            observer.onNext(1)
//            observer.onNext(2)
//            if count < 2{
//                observer.onError(error)
//                count += 1
//            }
//            observer.onNext(3)
//            observer.onNext(4)
//            observer.onNext(5)
//            observer.onCompleted()
//            return Disposables.create()
//        })
//        _ = funnyLookingSequence.retry().subscribe({
//            print($0)
//        })
//
//
//        let sequenceOfInts = PublishSubject<Int>()
//        _ =  sequenceOfInts.subscribe({
//            print($0)
//        })
//        sequenceOfInts.onNext(1)
//        sequenceOfInts.onNext(2)
//        sequenceOfInts.onCompleted()
//        
//
        
//      let sequenceOfInts = PublishSubject<Int>()
//        _ = sequenceOfInts.subscribe(onNext: {
//            print($0)
//        })
//        sequenceOfInts.onNext(1)
//        sequenceOfInts.onCompleted()

//        let sequenceOfInts = PublishSubject<Int>()
//        _ = sequenceOfInts.subscribe(onCompleted:{
//            print("已经完成了")
//        })
//        sequenceOfInts.onNext(1)
//        sequenceOfInts.onCompleted()
//          let sequenceOfInts = PublishSubject<Int>()
//        _ = sequenceOfInts.subscribe( onError:{
//
//            error in
//            print(error)
//        })
//        sequenceOfInts.onNext(1)
//        sequenceOfInts.onError(NSError(domain: "test", code: -1, userInfo: nil))
        
        
//        let sequenceOfInts = PublishSubject<Int>()
//
//
//        _ = sequenceOfInts.do(onNext:
//            {
//                print("监听 event \($0)")
//        },  onCompleted:
//            {
//
//        }).subscribe{
//
//            print($0)
//        }
//
//        sequenceOfInts.onNext(1)
//        sequenceOfInts.onNext(2)
//        sequenceOfInts.onCompleted()
        
//        let originalSequence = PublishSubject<Int>()
//        let whenThisSendsNextWordStops = PublishSubject<Int>()
//        _ = originalSequence.takeUntil(whenThisSendsNextWordStops).subscribe({
//                print($0)
//        })
//        originalSequence.onNext(1)
//        originalSequence.onNext(2)
//        originalSequence.onNext(3)
//        originalSequence.onNext(4)
//        originalSequence.onNext(5)
//        originalSequence.onNext(6)
//        whenThisSendsNextWordStops.onNext(9)
//        originalSequence.onNext(8)
        
//        let sequence = PublishSubject<Int>()
//        _ = sequence.takeWhile({
//            event in event < 6
//        }).subscribe({
//            print($0)
//        })
//        sequence.onNext(1)
//        sequence.onNext(2)
//        sequence.onNext(3)
//        sequence.onNext(4)
//        sequence.onNext(5)
        
//        let var1 = BehaviorSubject(value: 0)
//        let var2 = BehaviorSubject(value: 200)
//        let var3 = BehaviorSubject(value: var1)
//        _ = var3.concat().subscribe({
//            print($0)
//        })
//        var1.onNext(1)
//        var1.onNext(2)
//        var1.onNext(3)
//        var1.onNext(4)
//        var3.onNext(var2)
//        var2.onNext(201)
//        var1.onNext(5)
//        var1.onNext(6)
//        var1.onNext(7)
//        var1.onCompleted()
//        var2.onNext(202)
//        var2.onNext(203)
//        var2.onNext(204)
////
//        _ = Observable.of(0,1,2,3,4,5,6,7,8,9).reduce(0, accumulator: +).subscribe({
//            print($0)
//        })
//
//           let intObserver = Observable<Int>.interval(1, scheduler: MainScheduler.instance)
//           _ = intObserver.subscribe({
//             print("第一次走 \($0)")
//           })
//
//        DispatchQueue.main.asyncAfter(deadline:.now() + 5.0){
//            _ = intObserver.subscribe({
//                print("延迟5s走的 \($0)")
//            })
//        }
      //just
//       let observer1 = Observable.just(30)
//        _ = observer1.subscribe(onNext:{
//            print($0)
//        })

//        let sequenceOfElements = Observable.of(0,1,2,3)
//       _ = sequenceOfElements.subscribe({
//            event in print(event)
//        })
        
//        let emptyStream:Observable<Int> = Observable.empty()
//        _ = emptyStream.subscribe({
//            event in print(event)
//        })
        
//          let singleElementStream = Observable.just(32)
//          _ = singleElementStream.subscribe({
//            event in print(event)
//          })
        
//          let stream = Observable.of(1,2,3)
//          _ = stream.subscribe({
//            event in print(event)
//           })
        
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

