# RxSwift函数响应式编程练习Demo


#1---Bindings绑定监听TextField的text属性值变化

```
//绑定textfield 监听text的值变化
        _ = Observable.combineLatest(textField_First.rx.text,textField_Second.rx.text).map { (text1,text2) -> String in
            let result1 = Int(text1!) ?? 0
            let result2 = Int(text2!) ?? 0
        
            return "\(result1+result2)"
        }.bind(to: textField_Result.rx.text)


```

#效果演示图


![Image](https://github.com/KBvsMJ/RXSwiftDemo/blob/master/bindings_gif/1.gif)




#2---监听TableView的contentoffset属性

```
//监听tableviewContentoffset
        _ = tableView.rx.contentOffset.map({$0.y}).subscribe(onNext:{ [unowned self] in
            self.title =  "contentOffset.y =" + " " + String(format:"%.2f",$0)
        })

```

#效果演示图


![Image](https://github.com/KBvsMJ/RXSwiftDemo/tree/master/tableView_ContentoffSet_gif)

