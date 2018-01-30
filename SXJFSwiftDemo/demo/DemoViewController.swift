//
//  DemoViewController.swift
//  SXJFSwiftDemo
//
//  Created by jun tian on 2018/1/26.
//  Copyright © 2018年 jun tian. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //create
      
        
//        let myJust = { (singleElement: Int) -> Observable<Int> in
//            return Observable.create { observer in
//                observer.on(.next(singleElement))
//                observer.on(.completed)
//
//                return Disposables.create()
//            }
//        }
//
//        _ =  myJust(5).subscribe({event in print(event)})
//
        //deferred
        
//        let deferredSequence:Observable<Int> = Observable.deferred {
//             print("creating")
//            return Observable.create({
//                (observer) in print("emmiting")
//                observer.on(.next(0))
//                observer.on(.next(1))
//                observer.on(.next(2))
//                return Disposables.create()
//            })
//        }
//        _ = deferredSequence.subscribe({
//            print("1-->\($0)")
//        })
//        _ = deferredSequence.subscribe({
//            print("2-->\($0)")
//        })
        
        //empty
        
//        let emptySequence = Observable<Int>.empty()
//        _ = emptySequence.subscribe({
//            print($0)
//        })
        //error
//        let error  = NSError(domain: "test", code: -1, userInfo: nil)
//        let errorSequence = Observable<Int>.error(error)
//        _ = errorSequence.subscribe({
//            event in print(event)
//        })
        
      //interval
//        let interavalSequence = Observable<Int>.interval(3, scheduler: MainScheduler.instance)
//        _ = interavalSequence.subscribe(onNext:{print($0)})
        //just
//        let sigleElementSequence  = Observable.just(32)
//        _ = sigleElementSequence.subscribe(onNext:{
//            print($0)
//        })
        //of
//        let sequenceOfELements = Observable.of(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
//        _ = sequenceOfELements.subscribe(onNext:{print($0)})
        
        //range
//        let rangeSequence = Observable.range(start: 1, count: 10)
//        _ = rangeSequence.subscribe(onNext:{
//            print($0)
//        })
        //repeatElement
//        let repeatElementSequence = Observable.repeatElement(1)
//        _ = repeatElementSequence.subscribe(onNext:{
//            print($0)
//        })
        //timer
//        let timerSequence = Observable<Int>.timer(1, period: 1, scheduler: MainScheduler.instance)
//        _ = timerSequence.subscribe(onNext:{print($0)})

        //publishsubject
//        let publishSubject = PublishSubject<String>()
//        publishSubject.subscribe(onNext:{
//            print("subscription:1,event:\($0)")
//        })
//        publishSubject.on(.next("a"))
//        publishSubject.on(.next("b"))
//        publishSubject.subscribe(onNext:{
//            print("subscription:2,event:\($0)")
//        })
//        publishSubject.onNext("c")
//        publishSubject.onNext("d")
        //ReplaySubject
//        let replaySubject = ReplaySubject<String>.create(bufferSize: 2)
//        _ = replaySubject.subscribe(onNext:{
//            print("Subscription: 1, event: \($0)")
//        })
//        replaySubject.on(.next("a"))
//        replaySubject.on(.next("b"))
//        _ = replaySubject.subscribe(onNext:{
//             print("Subscription: 2, event: \($0)")
//        })
//        replaySubject.onNext("c")
//        replaySubject.onNext("d")
//
        
        //BehaviorSubject
//        let behaviorSubject = BehaviorSubject(value: "z")
//        _ = behaviorSubject.subscribe(onNext:{
//             print("Subscription: 1, event: \($0)")
//        })
//        behaviorSubject.onNext("a")
//        behaviorSubject.onNext("b")
//        _ = behaviorSubject.subscribe(onNext:{print("Subscription: 2, event: \($0)")})
//        behaviorSubject.onCompleted()
        
        //variable
//        let variable = Variable("Z")
//        _ = variable.asObservable().subscribe(onNext:{
//            print("Subscription:1,event:\($0)")
//        })
//        variable.value = "a"
//        variable.value = "b"
//        _ = variable.asObservable().subscribe(onNext:{
//            print($0)
//        })
//        variable.value = "c"
//        variable.value = "d"
        
        //map
//        let origialSequence = Observable.of(1,2,3)
//        _ = origialSequence.map({$0*2}).subscribe(onNext:{
//            print($0)
//        })
        
        //mapwithindex:enumerated().map()
//        let originalSequence  = Observable.of(1,2,3)
//        _ = originalSequence.enumerated().map({
//            number, index in number*index
//        }).subscribe(onNext:{
//            print($0)
//        })
        //flatmap
//        let sequenceInt = Observable.of(1,2,3)
//        let sequenceString = Observable.of("A","B","C","D","E","F","--")
//        _ = sequenceInt.flatMap { (x:Int) -> Observable<String> in
//            print("from sequenceInt \(x)")
//            return sequenceString
//            }.subscribe(onNext:{
//            print($0)
//        })
//        let sequenceToSum = Observable.of(0,1,2,3,4,5)
//        _ = sequenceToSum.scan(0) { acum,elem in acum + elem
//            }.subscribe(onNext:{
//                print($0)
//            })
        
        //reduce
//        let sequenceToSum = Observable.of(1,2,3,4)
//        _ = sequenceToSum.reduce(0, accumulator: {
//            (acum,elem) in acum + elem
//        }).subscribe(onNext:{
//            print($0)
//        })
        
//        let squenceToSum = Observable.of(1,2,3,4,5)
//        _ = squenceToSum.buffer(timeSpan: 5, count: 2, scheduler: MainScheduler.instance)
//            .subscribe(onNext:{
//                print($0)
//            })
        
        //filter
//        _ = Observable.of(1,2,3,4,5,6,7,8,9,10).filter({
//            $0 % 2 == 0
//        }).subscribe(onNext:{
//            print($0)
//        })
        //distinceuntilchanged
//        _ = Observable.of(1,2,3,1,1,4).distinctUntilChanged().subscribe(onNext:{
//            print($0)
//        })
        //take
//        _ = Observable.of(1,2,3,4,5,6).take(3).subscribe(onNext:{
//            print($0)
//        })
        
        //takelast
//        _ = Observable.of(1,2,3,4,5,6).takeLast(3).subscribe(onNext:{
//            print($0)
//        })
//        _ = Observable.of(1,2,3,4,5,6).skip(3).subscribe(onNext:{
//            print($0)
//        })
        
        //debounce.throttle
//        _ = Observable.of(1,2,3,4,5,6).debounce(1, scheduler: MainScheduler.instance).subscribe(onNext:{
//            print($0)
//        })
        
        //startwith
//        let subscription = Observable.of(4,5,6,7,8,9)
//        _ = subscription.startWith(3).startWith(2).subscribe(onNext:{
//            print($0)
//        })
        
        //combineLastest
//        let intOb1 = PublishSubject<String>()
//        let intOb2 = PublishSubject<Int>()
//        let intOb3 = PublishSubject<Int>()
//        _ = Observable.combineLatest(intOb1, intOb2,intOb3) {
//                "(\($0) \($1) \($2))"
//                }
//                .subscribe {
//                    print($0)
//        }
//        intOb1.onNext("A")
//        intOb2.onNext(1)
//        intOb3.onNext(3)
//        intOb1.onNext("B")
//        intOb2.onNext(2)
//        intOb3.onNext(4)
        
//        let intOb1 = Observable.just(2)
//        let intOb2 = Observable.of(0,1,2,3)
//        let intOb3 = Observable.of(0,1,2,3,4)
//        _ = Observable.combineLatest(intOb1,intOb2,intOb3){
//            "\($0) \($1) \($2)"
//            }.subscribe(onNext:{
//                print($0)
//            })
        
//         let intObj1 = Observable.just(2)
//         let intObj2 = ReplaySubject<Int>.create(bufferSize: 2)
//         intObj2.onNext(8)
//         let intObj3 = Observable.of(0,1,2,3,4)
//         intObj2.onNext(1)
//        _ = Observable.combineLatest(intObj1,intObj2,intObj3){
//            "\($0) \($1) \($2)"
//            }.subscribe(onNext:{
//                print($0)
//            })
//        intObj2.onNext(5)
//        intObj2.onNext(6)
        
        
//        let intOb1 = Observable.just(2)
//        let intOb2 = Observable.of(0,1,2,3)
//        let intOb3 = Observable.of(0,1,2,3,4)
//        _ = Observable.combineLatest([intOb1,intOb2,intOb3]){
//            intArray -> Int in ((intArray[0] + intArray[1]) * intArray[2])
//            }.subscribe(onNext:{print($0)})

//        let intOb1 = PublishSubject<String>()
//        let intOb2 = PublishSubject<Int>()
//        _ = Observable.zip(intOb1,intOb2){
//            "\($0) \($1)"
//            }.subscribe(onNext:{
//                print($0)
//            })
//        intOb1.onNext("A")
//        intOb2.onNext(1)
//        intOb1.onNext("B")
//        intOb1.onNext("C")
//        intOb2.onNext(2)
//
//        let subject1 = PublishSubject<Int>()
//        let subject2 = PublishSubject<Int>()
//        _ = Observable.of(subject1,subject2)
//            .merge().subscribe(onNext:{
//                print($0)
//            })
//        subject1.onNext(20)
//        subject1.onNext(40)
//        subject2.onNext(80)
//        subject2.onNext(100)
//        let var1  = Variable(0)
//        let var2 = Variable(200)
//        let var3 = Variable(var1.asObservable())
//        _ = var3.asObservable().switchLatest().subscribe(onNext:{
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
        //retry
//        var count = 1
//        let funnyLookingSequence = Observable<Int>.create({
//            observer in let error = NSError(domain: "Test", code: 0, userInfo: nil)
//            observer.onNext(0)
//            observer.onNext(1)
//            observer.onNext(2)
//            if count<2{
//                observer.onError(error)
//                count += 1
//            }
//            observer.onNext(3)
//            observer.onNext(4)
//            observer.onNext(5)
//            return Disposables.create()
//        })
//        _ = funnyLookingSequence.retry(2).subscribe({
//            print($0)
//        })
//
        //catchError
        
//        let sequenceThatFails = PublishSubject<Int>()
//        let recoverySequence = Observable.of(100,200,300,400)
//        _ = sequenceThatFails.catchError({ (error) -> Observable<Int> in
//            print(error)
//            return recoverySequence
//        }).subscribe(onNext:{
//            print($0)
//        })
//        sequenceThatFails.onNext(1)
//        sequenceThatFails.onNext(2)
//        sequenceThatFails.onNext(3)
//        sequenceThatFails.onError(NSError(domain: "test", code: 0, userInfo: nil))
//        sequenceThatFails.onNext(4)
        
        //catcherrorjustReturn
//        let sequenceThatFails = PublishSubject<Int>()
//        _ = sequenceThatFails.catchErrorJustReturn(100).subscribe(onNext:{
//            print($0)
//        })
//        sequenceThatFails.onNext(1)
//        sequenceThatFails.onNext(2)
//        sequenceThatFails.onNext(3)
//        sequenceThatFails.onError(NSError(domain: "Test", code: 0, userInfo: nil))
//        sequenceThatFails.onNext(4)
//
//        let sequenceOfInts = PublishSubject<Int>()
//        _ = sequenceOfInts.do(onNext: {
//            print("Intercepted event \($0)")
//        }).subscribe(onNext:{print($0)})
//
//        sequenceOfInts.onNext(1)
//        sequenceOfInts.onCompleted()
        
        //takeuntil
//        let originalSequence = PublishSubject<Int>()
//        let whenThisSendsNextWordStops = PublishSubject<Int>()
//        _ = originalSequence.takeUntil(whenThisSendsNextWordStops).subscribe(onNext:{
//            print($0)
//        })
//         originalSequence.onNext(1)
//         originalSequence.onNext(2)
//         originalSequence.onNext(3)
//         whenThisSendsNextWordStops.onNext(5)
//        originalSequence.onNext(4)
        //takewhile
//        let sequence = PublishSubject<Int>()
//        _ = sequence.takeWhile({ $0 < 4
//        }).subscribe(onNext:{
//            print($0)
//        })
//        sequence.onNext(1)
//        sequence.onNext(2)
//        sequence.onNext(3)
//        sequence.onNext(4)
        //amb
//        let intSequence1 = PublishSubject<Int>()
//        let intSequence2 = PublishSubject<Int>()
//        _ = intSequence1.amb(intSequence2).subscribe(onNext:{print($0)})
//        intSequence2.onNext(10)
//        intSequence1.onNext(1)
//        intSequence1.onNext(2)
//        intSequence2.onNext(20)
        
        //concat
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
//        var1.onNext(5)
//        var3.onNext(var2)
//        var2.onNext(201)
//        var1.onNext(5)
//        var1.onNext(6)
//        var1.onNext(7)
//        var1.onCompleted()
//        var2.onNext(202)
//        var2.onNext(203)
//        var2.onNext(204)
//        var2.onCompleted()
        
        
        //reduce
//        _ = Observable.of(0,1,2,3,4,5,6,7,8,9,10)
//            .reduce(0, accumulator: +).subscribe(onNext:{print($0)})
//
//
//
        //multicast
//        let subject1 = PublishSubject<Int64>()
//        _ = subject1.subscribe(onNext:{
//            print($0)
//        })
//        let int1 = Observable<Int64>.interval(1.0, scheduler: MainScheduler.instance).multicast(subject1)
//        _ = int1.subscribe(onNext:{
//            print("first subscription \($0)")
//         })
//        DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
//           _ = int1.connect()
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+4.0) {
//            _ = int1.subscribe(onNext:{
//                 print("second subscription \($0)")
//            })
//        }
        
        //replay
//        let Int1 = Observable<Int>.interval(1, scheduler: MainScheduler.instance).replay(0)
//        _ = Int1.subscribe(onNext:{print("first subscription \($0)")})
//        DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
//            _ = Int1.connect()
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+4.0) {
//            _ = Int1.subscribe(onNext:{
//                print("second subscription \($0)")
//            })
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+6.0) {
//            _ = Int1.subscribe(onNext:{
//                 print("third subscription \($0)")
//            })
//        }
        
        //publish
//        let int1 = Observable<Int>.interval(1.0, scheduler: MainScheduler.instance).publish()
//         _ = int1.subscribe(onNext:{
//           print("first subscription \($0)")
//        })
//        DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
//            _ =  int1.connect()
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+4.0) {
//            _ =  int1.subscribe(onNext:{
//                print("second subscription \($0)")
//            })
//        }
//
//        DispatchQueue.main.asyncAfter(deadline: .now()+6.0) {
//            _ =  int1.subscribe(onNext:{
//                print("second subscription \($0)")
//            })
//        }
        
        //refcount
        
        
        
        
        
        
        
        
        
        
        
        
    }

   
    
}
