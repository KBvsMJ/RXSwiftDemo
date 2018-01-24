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
class ViewController: UITableViewController {

 
    @IBOutlet weak var btnBinds: UIButton!
    @IBOutlet weak var btnContentOffset: UIButton!
    @IBOutlet weak var btnTap: UIButton!
    @IBOutlet weak var btnTableView: UIButton!
    @IBOutlet weak var btnOther: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
       _ = btnBinds.rx.tap.subscribe(onNext:{ [unowned self] in
        let sb:UIStoryboard! = UIStoryboard.init(name: "Main", bundle: nil)
        let bindinsCtl = sb.instantiateViewController(withIdentifier: "BindingsViewController")
        self.navigationController?.pushViewController(bindinsCtl, animated: true)
        })
    
         //never
//        let disposeBag = DisposeBag()
//        let neverSequence = Observable<String>.never()
//        let neverSequenceSubScription = neverSequence.subscribe({
//            _ in print("This will never be printed")
//        })
        //empty
//        let disposeBag = DisposeBag()
//        Observable<Int>.empty().subscribe({
//            event in print(event)
//        }).disposed(by: disposeBag)
        
        //just
//        let disposeBag  = DisposeBag()
//        Observable.just("🔴").subscribe(onNext:{
//            print($0)
//        }).disposed(by: disposeBag)
        
        //of
//        let disposeBag = DisposeBag()
//        Observable.of("🐶", "🐱", "🐭", "🐹").subscribe(onNext:{
//             print($0)
//        }).disposed(by: disposeBag)
//
          //from
//        let disposeBag = DisposeBag()
//        Observable.from(["🐶", "🐱", "🐭", "🐹"]).subscribe(onNext:{
//            print($0)
//        }).disposed(by: disposeBag)

//        let disposeBag = DisposeBag()
//        let myjust = {(element:String)->Observable<String> in return Observable.create({
//            observer in observer.on(.next(element))
//            observer.on(.completed)
//
//            return Disposables.create()
//        })}
//        myjust("🔴").subscribe(onNext:{
//            print($0)
//        }).disposed(by: disposeBag)
         //range
//        let disposebag = DisposeBag()
//        Observable.range(start: 1, count: 10).subscribe(onNext:{
//            print($0)
//        }).disposed(by: disposebag)
//
     // repeatElement
//        Observable.repeatElement("🔴").take(3).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
   
        //generate
//        Observable.generate(initialState: 2, condition: {$0<3}, iterate: {$0+1}).subscribe(onNext:{
//        print($0)
//    }).disposed(by: DisposeBag())
        
        //deferred
//        var count = 1
//        let deferredSequence = Observable<String>.deferred({
//            print("createing \(count)")
//            count+=1
//
//            return Observable.create({
//                observer in print("Emitting...")
//                observer.onNext("🐶")
//                observer.onNext("🐱")
//                observer.onNext("🐵")
//                return Disposables.create()
//            })
//        })
//        deferredSequence.subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
//        deferredSequence.subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
       
//        Observable.of("🍎", "🍐", "🍊", "🍋").do(onNext:{
//            print("Intercepted:", $0)
//        },onError:{print("Intercepted error:", $0)},onCompleted:{print("Completed")}).subscribe(onNext: { print($0) },onCompleted: { print("结束") }).disposed(by: DisposeBag())
//
        
//        let subject = PublishSubject<String>()
//        subject.subscribe(onNext:{print($0)}).disposed(by: DisposeBag())
//        subject.onNext("🐶")
//        subject.onNext("🐱")
//        subject.onCompleted()
        
//        let subject = BehaviorSubject(value: "🔴")
//        _ = subject.subscribe(onNext:{
//            print($0)
//        })
//        subject.onNext("🐶")
//        subject.onNext("🐱")
//        subject.onNext("🅰️")
//        subject.onNext("🅱️")
        
        
//        let variable = Variable("🔴")
//        _ = variable.asObservable().subscribe(onNext:{print($0)})
//        variable.value = "🐶"
//        variable.value = "🐱"
        
//        Observable.of("2","3").startWith("1").subscribe(onNext:{
//            print($0)
//          }).dispose()
//

//        let subject1 = PublishSubject<String>()
//        let subject2 = PublishSubject<String>()
//        _ = Observable.of(subject1,subject2).merge().subscribe(onNext:{
//            print($0)
//        })
//        subject1.onNext("🅰️")
//
//        subject1.onNext("🅱️")
//
//        subject2.onNext("①")
//
//        subject2.onNext("②")
//
//        subject1.onNext("🆎")
//
//        subject2.onNext("③")
        
//        let stringSubject = PublishSubject<String>()
//        let intSubject = PublishSubject<Int>()
//        _ = Observable.zip(stringSubject,intSubject){ stringElement, intElement in
//            "\(stringElement) \(intElement)"
//            }.subscribe(onNext:{
//                print($0)
//            })
//        stringSubject.onNext("🅰️")
//        stringSubject.onNext("🅱️")
//
//        intSubject.onNext(1)
//
//        intSubject.onNext(2)
//
//        stringSubject.onNext("🆎")
//        intSubject.onNext(3)
        
//
//       let stringSubject = PublishSubject<String>()
//       let intSubject = PublishSubject<Int>()
//        _ = Observable.combineLatest(stringSubject,intSubject){
//            stringElement, intElement in
//            "\(stringElement) \(intElement)"
//            }.subscribe(onNext:{
//                print($0)
//            })
//        stringSubject.onNext("🅰️")
//
//        stringSubject.onNext("🅱️")
//        intSubject.onNext(1)
//
//        intSubject.onNext(2)
//
//        stringSubject.onNext("🆎")
        
//        let subject1 = BehaviorSubject(value: "⚽️")
//        let subject2 = BehaviorSubject(value: "🍎")
//        let variable = Variable(subject1)
//        _ = variable.asObservable().switchLatest().subscribe(onNext:{
//            print($0)
//        })
//        subject1.onNext("🏈")
//        subject1.onNext("🏀")
//        variable.value = subject2
//       subject1.onNext("⚾️")
//       subject2.onNext("🍐")
//        variable.value = subject1
//        subject2.onNext("test1")
//        subject1.onNext("test2")
        
//        Observable.of(1,2,3,4).map({$0*$0}).subscribe(onNext:{
//           print($0)
//        }).disposed(by: DisposeBag())
        
//        struct Player{
//            var score:Variable<Int>
//        }
//
//        let score1 = Player(score: Variable(80))
//        let score2 = Player(score:Variable(90))
//        let score3 = Player(score: Variable(550))
//        let player = Variable(score1)
//       _ = player.asObservable().flatMap({
//            $0.score.asObservable()
//        }).subscribe(onNext:{print($0)})
//        score1.score.value = 85
//        player.value = score2
//        score1.score.value = 95
//        score1.score.value = 222
//        player.value = score3
//        score2.score.value = 100
        
//        _ = Observable.of(10,100,1000).scan(1, accumulator: {
//            aggregateVaule,newValue in aggregateVaule + newValue
//        }).subscribe(onNext:{
//            print($0)
//        })
        
//        Observable.of("🐱", "🐰", "🐶",
//                      "🐸", "🐱", "🐰",
//                      "🐹", "🐸", "🐱").filter({
//                        $0 == "🐱"
//                      }).subscribe(onNext:{
//                        print($0)
//                      }).disposed(by: DisposeBag())

//        Observable.of("🐱", "🐷", "🐱", "🐱", "🐱", "🐵", "🐱")
//            .distinctUntilChanged().subscribe(onNext:{
//                print($0)
//            }).disposed(by: DisposeBag())
//
        
//        Observable.of("🐱", "🐰", "🐶", "🐸", "🐷", "🐵").elementAt(5).subscribe(onNext:{
//            print($0)
//         }).disposed(by: DisposeBag())

        
//        Observable.of("🐱", "🐰", "🐶", "🐸", "🐰","🐷", "🐵").single({
//            $0 == "🐶"
//        }).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
  
//        Observable.of("🐱", "🐰", "🐶", "🐸", "🐷", "🐵").take(3).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
        
//        Observable.of("🐱", "🐰", "🐶", "🐸", "🐷", "🐵").takeLast(3).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
//
//        Observable.of(1, 2, 3, 4, 5, 6).takeWhile({
//            $0<4
//        }).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())

        
//        let sourceSequence = PublishSubject<String>()
//        let referenceSequence = PublishSubject<String>()
//        _ = sourceSequence.takeUntil(referenceSequence).subscribe(onNext:{
//          print($0)
//        })
//        sourceSequence.onNext("🐱")
//        sourceSequence.onNext("🐰")
//        sourceSequence.onNext("🐶")
//        referenceSequence.onNext("🔴")
//        sourceSequence.onNext("🐸")
//        sourceSequence.onNext("🐷")
//        sourceSequence.onNext("🐵")
        
//        Observable.of(1,2,3,4,5,6,7).skipWhile({
//            $0<4
//        }).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
//
//        Observable.of("🐱", "🐰", "🐶", "🐸", "🐷", "🐵").enumerated().skipWhile { (index,element) -> Bool in
//            return index<3
//            }.subscribe(onNext:{
//                print($0)
//            }).disposed(by: DisposeBag())
        
//        Observable.range(start: 1, count: 10).toArray().subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())

//        Observable.of(10,100,1000,10000).reduce(0, accumulator: +).subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())

//        let subject1 = BehaviorSubject(value: "🍎")
//        let subject2 = BehaviorSubject(value: "🐶")
//        let variable = Variable(subject1)
//        _ = variable.asObservable().concat().subscribe(onNext:{
//            print($0)
//        })
//
//        subject1.onNext("🍐")
//        subject1.onNext("🍊")
//        variable.value = subject2
//        subject2.onNext("🐱")    //1完成前，会被忽略
//        subject2.onNext("teng") //1完成前，会被忽略
//        subject2.onNext("fei")    //1完成前的最后一个，会被接收
//        subject1.onCompleted()
//        subject2.onNext("🐭")
        
//         let intSequence = Observable<Int>.interval(1, scheduler: MainScheduler.instance).publish()
//        _ = intSequence.subscribe(onNext:{print("Subscription 1:, Event: \($0)")})
//        DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
//           _ = intSequence.connect()
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
//            _ =  intSequence.subscribe(onNext:{print("Subscription 2:, Event: \($0)")})
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+6) {
//            _ = intSequence.subscribe(onNext:{
//                print("Subscription 3:, Event: \($0)")
//            })
//        }
        
//            let intSequence = Observable<Int>.interval(1, scheduler: MainScheduler.instance).replay(5)
//
//        _ = intSequence.subscribe(onNext:{print("Subscription 1:, Event: \($0)")})
//        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
//            _ = intSequence.connect()
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
//            _ = intSequence.subscribe(onNext:{
//                 print("Subscription 2:, Event: \($0)")
//            })
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+8) {
//            _ = intSequence.subscribe(onNext:{
//                print("Subscription 3:, Event: \($0)")
//            })
//        }
//
        
        
//        let subject = PublishSubject<Int>()
//        _ = subject.subscribe(onNext:{
//            print("Subject: \($0)")
//        })
//        let intSequence = Observable<Int>.interval(1, scheduler: MainScheduler.instance).multicast(subject)
//        _ = intSequence.subscribe(onNext:{print("\tSubscription 1:, Event: \($0)")})
//        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
//            _ =  intSequence.connect()
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
//            _ =  intSequence.subscribe(onNext:{
//                print("\tSubscription 2:, Event: \($0)")
//            })
//        }
        
//        let sequenceThatFails = PublishSubject<String>()
//        sequenceThatFails.catchErrorJustReturn("😊").subscribe(onNext:{
//            print($0)
//        }).disposed(by: DisposeBag())
//        sequenceThatFails.onNext("😬")
//        sequenceThatFails.onNext("😨")
//        sequenceThatFails.onNext("😡")
//        sequenceThatFails.onNext("🔴")
//        var count = 1
//        let sequenceThatErrors = Observable<String>.create({observer in  observer.onNext("🍎")
//            observer.onNext("🍐")
//            observer.onNext("🍊")
//            
//            if count == 1  {
//                observer.onError(NSError(domain: "test", code: 0, userInfo: nil))
//                print("Error encountered")
//                count += 1
//            }
//            observer.onNext("🐶")
//            observer.onNext("🐱")
//            observer.onNext("🐭")
//            observer.onCompleted()
//            
//            return Disposables.create()
//            
//            
//        })
//       _ = sequenceThatErrors.retry(3).subscribe(onNext:{
//            print($0)
//        })
       
        
        
        //监听tableviewContentoffset
        _ = tableView.rx.contentOffset.map({$0.y}).subscribe(onNext:{ [unowned self] in
            self.title =  "contentOffset.y =" + " " + String(format:"%.2f",$0)
        })
        
        
    }
    
    
  
   
    
    
   
}

