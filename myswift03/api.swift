//
//  api.swift
//  myswift03
//
//  Created by 江禮安 on 2017/9/13.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation

// Struct

struct Point {
    var x = 0
    var y = 0
}

struct Point2 {
    var x:Int
    var y:Int
    // mutate : 產生突變。判斷x值是否超過範圍，再來給變數的值
    mutating func setX(newx:Int) {
        if newx >= 1000 || newx < 0 {return}
        x  = newx
    }
}

struct Line {
    var p0:Point2
    var p1:Point2
    func len() ->Double {
        //畢式定理:a*a + b*b = c*c。計算點1到點2的長度。開根號sqrt
        let xpow = (p0.x - p1.x) * (p0.x - p1.x)
        let ypow = (p0.y - p1.y) * (p0.y - p1.y)
        return sqrt(Double(xpow + ypow))
    }
}
