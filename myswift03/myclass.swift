//
//  myclass.swift
//  myswift03
//
//  Created by 江禮安 on 2017/9/13.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation
//class 類別
class PointV3 {
    var x = 0
    var y = 0
}

//需要定義屬性初始值 init()
class PointV4 {
    var x:Int
    var y:Int
    
    //不需要傳參數的建構式
    init(){
        x = 13
        y = 23
    }
    
    //建構式constructor，給予類別的屬性，初始化initialized。self指自己類別的屬性
    init(x:Int, y:Int) {
        self.x = x
        self.y = y
        print(self.x)
        print(self.y)
    }
}

class Bike {
    private var speed:Double
    //init(){ speed  = 0}
    
    init(speed: Double) {
        self.speed = speed
    }
    
    func upSpeed(){
        speed = speed < 1 ? 1 : speed * 1.2
    }
    
    func downSpeed(){
        speed = speed > 1 ? 0 : speed * 0.7
    }
    
    func getSpeed() -> Double {
        return speed
    }
    
    func clone() -> Bike {
        return Bike(speed:speed)
    }
}

class Student {
    private var name:String
    private var ch:Int
    private var eng:Int
    private var math:Int
    
    init(name:String,ch:Int,eng:Int,math:Int){
        self.name = name
        self.ch   = ch
        self.eng  = eng
        self.math = math
    }
    
    func sum() -> Int {
        return ch + eng + math
    }
    
    func avg() -> Double {
        return Double(sum()/3)
    }
}


class Brad01 {
    init(){
        print("Brad01:init()")
    }
    func sayYa(){
        print("Brad01:sayYa()")
    }
}

class Brad02 {
    // var p1 = Brad01() 意思相同  var p1:Brad01 = Brad01()
    var p1:Brad01 = Brad01()
    lazy var p2:Brad01 = Brad01()

    /*
    init(){
        p2 = Brad01()
    }
     */
    
    func doP2(){
        p2.sayYa()
    }
}



struct Brad03{
    var x = 1
    var y = 2
}

struct Brad04{
    var v1 = Brad03()
    
    //在{}內指定 屬性 和 變動屬性的方法
    var v2:Brad03{
        get {
            print("Brad04 v2 getter")
            let newx = v1.x + 10
            let newy = v1.y + 20
            return Brad03(x:newx, y:newy)  //永遠為 Brad03
            //get {} 會有return
        }
        
        set(aBrad03) {
            //aBrad03 就是目前的 v2
            print("Brad04 v2 setter :\(aBrad03.x)")
            v1.x = aBrad03.x - 1
            v1.y = aBrad03.y - 1
            //set(){}可以空程式碼
        }
        
        /*
         set {
             //newValue 就是目前的 v2
             print("Brad04 v2 setter :\(newValue.x)")
             v1.x = newValue.x - 1
             v1.y = newValue.y - 1
         }
         */
    }
    
        var v3: Brad03 {
            get{
                return Brad03()
            }
            set{
            }
        }
}


struct MyScore {
    var x = 0, y = 0, z = 0
    var sum:Int{
        get {
            return x + y + z
        }
        set {
            
        }
    }
    var avg: Double{
        get {
            return Double(sum/3)
        }
        set {
            
        }
    }
}


class Brad05 {
    var x:Int = 0 {
        willSet(newx){
            //有before的概念
            print("willSet : \(x)")
            print("willSet : \(newx)")
        }
        didSet {
            ////有after的概念
            print("didSet")
        }
    }
}

class Brad06 {
    static var x:Int!
    static var x1 = 555  //物件級別變數
    static var x2:Int {
        return x1 * 100
    }
    
    //non-static =>物件級別 => member成員
    var x1 = 321  //物件級別變數
    func m1() {
        print("A")
        x1 = 111
        Brad06.x1 = 777  // 物件級別的方法，可變更類別級別的變數
        Brad06.m1()
    }
    
    static func m1() {
        print("B")
        x1 = 222
        //無法修改物件級別的 member或是 function呼叫
    }
}


//以下是 類別物件的繼承關係(單一繼承) => 多型
//spuer 父類別； sub 子類別

class Super1 {
    private var  a = 1
    func getA() -> Int {
        return a
    }
    var b = 123
}

class Super2 {
    var a = 0   //變數是=>物件級別 層級
    static var counter = 0  //此變數是=>類別級別 層級,類別共同擁有的變數，變數要初始化
    init() {
        Super2.counter += 1
    }
    
    //解構式
    deinit {
        Super2.counter -= 1
        print("die")
    }

}

//Super1 為Sub1 的 super class
class Sub1: Super1{
    var a = 10
    var c:Int?  //在變數:資料型別加上? ，可以是nil
    override func getA() -> Int {
        print(super.getA())
        return a
    }
    
}



