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
        
        Observable.of(1,2,3,4).map({$0*$0}).subscribe(onNext:{
           print($0)
        }).disposed(by: DisposeBag())
        
        
        
        
    }
    
    
  
   
    
    
   
}

