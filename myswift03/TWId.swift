//
//  TWId.swift
//  myswift03
//
//  Created by 江禮安 on 2017/9/13.
//  Copyright © 2017年 江禮安. All rights reserved.
//

import Foundation
class TWId {
    private var id:String
    init(){
        id = "A123456789"
    }
    convenience init(area:String) {
        self.init(area: area, gender: true)
        id = "A123456789"
    }
    init(gender:Bool) {
        id = "A123456789"
    }
    init(area:String, gender:Bool) {
        id = "A123456789"
    }
    init(id:String) {
        self.id = id
    }
    func getArea() -> String {
        return "taichung"
    }
    func getGender() -> Bool {
        return true
    }
    static func isRightId(id:String) -> Bool {
        //先檢查，該類別共同擁有的方法，先用正規表示法櫛選
        if let range = id.range(of: "^[A-Z][12][0-9]{8}$", options: .regularExpression){
            return true
        }else {return false}
    }
    
    
}
