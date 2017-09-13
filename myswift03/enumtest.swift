//
//  enumtest.swift
//  myswift03
//
//  Created by 江禮安 on 2017/9/13.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation
func enumtest(){
    //列舉、枚舉
    var dir:Direction = Direction.STOP
    dir = .LEFT
    dir = .RIGHT
    print(type(of:dir))  // Direction
    
    switch dir {
    case .STOP:
        print("stop")
    case .DOWN:
        print("down")
    case .LEFT:
        print("left")
    case .RIGHT:
        print("right")  // right
    case .UP:
        print("up")
    default :
        print("xxx")
    }
    
    var area:Zipcode = .NANTUN
    print(area.rawValue)  // 408
    
    var status1:IOStatus = .OK
    status1 = .NotFound(404, "file not fond")
    var status2:IOStatus = .NotFound(404, "222")
    
    switch status2 {
    case .NotFound(404, let mesg) :
          print("A => \(mesg)")  // A => 222
    case .NotFound(404, _):
          print("D")
    case .OK:
          print("B")
    default:
        print("C")
    }
}

//列舉的宣告式
enum Direction {
    //定義列舉項目
    case UP
    case DOWN
    case LEFT
    case RIGHT
    case STOP
    /*
     //相同定義方式
     case UP, DOWN, LEFT, RIGHT, STOP
    */
}

enum Zipcode:String {
    case NANTUN = "408"
    case BEITUN = "409"
    case WESTVILLAGE = "405"
}

enum IOStatus {
    case OK
    case NotFound(Int,String)
    case IOERROR(Int, String)
    case PermissionDeny
    case Unknow
}
