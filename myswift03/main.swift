//
//  main.swift
//  myswift03
//
//  Created by 江禮安 on 2017/9/13.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation

print("Hello, World!")
//列舉
enumtest()




//結構 (api.swift)
var p0 = Point()
print(p0.x)  // 0
p0.x = 12
print(p0.x)  // 12
print(p0)  // Point(x: 12, y: 0)


var p1 = Point2(x:34,y:56)  //建構子
print("p1.x:\(p1.x) , p1.y:\(p1.y)")  // p1.x:34 , p1.y:56

var line1 = Line(p0:Point2(x:0,y:0),p1:Point2(x:3,y:4))
print(line1.p1.x)  // 3
print(line1.len())  // 5.0

//tuple
//var line2:[Point,Point] = (1,2)

var line2 = line1  // copy value, not reference
print(line2.len())  // 5.0
line2.p0.x = 120
line2.p0.y = 34
print(line1.len())  // 5.0
print(line2.len())  // 120.784932835184



//類別
var p2 = PointV3()
print("p2.x => \(p2.x)")  // 0

//建構物件實體
var p3 = PointV4(x: 99, y: 88)
print("p3.x => \(p3.x)")  // 99

var p4 = PointV4()
print("p4.y => \(p4.y)")  // 23

var p5 = p3
print("p3.x : \(p3.x), p3.y : \(p3.y)")  // p3.x : 99, p3.y : 88
print("p5.x : \(p5.x), p5.y : \(p5.y)")  // p5.x : 99, p5.y : 88
p5.x = 100
p5.y = 200
print("p3.x : \(p3.x), p3.y : \(p3.y)")  // p3.x : 100, p3.y : 200
print("p5.x : \(p5.x), p5.y : \(p5.y)")  // p5.x : 100, p5.y : 200


var myBike = Bike(speed: 1)
var youBike = Bike(speed: 2)
myBike.upSpeed()
myBike.upSpeed()
print("myBike.getSpeed() => \(myBike.getSpeed())")  // 1.44

var hisBike = myBike.clone()
print("hisBike.getSpeed() => \(hisBike.getSpeed())")  // 1.44
hisBike.upSpeed()
hisBike.upSpeed()
print("hisBike.getSpeed() => \(hisBike.getSpeed())")  // 2.0736


var s1 = Student(name: "Allan", ch: 88, eng: 89, math: 90)
print("s1.sum() : \(s1.sum())")  // s1.sum() : 267
print("s1.avg() : \(s1.avg())")  // s1.avg() : 89.0


//建構式，是在屬性初始化，給值的動作
var b1 = Brad01()  //有印出 Brad01:init()
var b2 = Brad02()  //有印出 Brad01:init()
b2.doP2()         //有印出 Brad01:sayYa()


var b3 = Brad04()
print("b3.v1.x => \(b3.v1.x)")  // b3.v1.x => 1
print("b3.v1.y => \(b3.v1.y)")  // b3.v1.y => 2

print("b3.v2.x => \(b3.v2.x)")  // Brad04 v2 getter  &  b3.v2.x => 11
print("b3.v2.y => \(b3.v2.y)")  // Brad04 v2 getter  &  b3.v2.y => 22

print("----------")

b3.v1.x = 123
print("b3.v1.x => \(b3.v1.x)")  // b3.v1.x => 123
print("b3.v2.x => \(b3.v2.x)")  // Brad04 v2 getter  &  b3.v2.x => 133

b3.v2.x = 100
print("b3.v2.x => \(b3.v2.x)")
//Brad04 v2 getter  &  Brad04 v2 setter  &  Brad04 v2 getter  &  b3.v2.x => 109


var s2 = MyScore(x: 50, y: 60, z: 70)
print("s2.sum => \(s2.sum)")  //s2.sum => 180
print("s2.avg => \(s2.avg)")  //s2.avg => 60.0
s2.y = 100
print("s2.sum => \(s2.sum)")  //s2.sum => 220
print("s2.avg => \(s2.avg)")  //s2.avg => 73.0


print("===========")

var b5 = Brad05()
b5.x = 100
print(b5.x)  // 100

print("===========")


var b6 = Sub1()
print(b6.a)  // 10
print(b6.b)  // 123
print(b6.getA())  //1

print("===========")

var b71:Super2? = Super2()
var b72:Super2? = Super2()
var b73 = Super2()
var b74 = Super2()

print(Super2.counter)  // 4
print(b71!.a)  //0

b71 = nil  //賦予nil，就會執行 解構式
print(Super2.counter)  // 3

print("===========")

var b8 = Brad06()
print(b8.x1)  //321
print(Brad06.x1)  //555

b8.m1()   // =>A
print(b8.x1)  //111
print(Brad06.x1)  //555

//物件級別的變更物件級別的
//類別級別的變更類別級別的




var myId = "A123456789"
if TWId.isRightId(id: myId){
    var id1 = TWId(id: myId)
}else{
    var id2 = TWId()
}
