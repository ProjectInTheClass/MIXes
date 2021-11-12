//
//  dataMixes.swift
//  MIXes
//
//  Created by 김결 on 2021/11/09.
//

import Foundation

struct Meterial {
    var meterialName:String
    var meterialIndex:Int
    var meterialPercent:Double
}

class  meterialData {
    static let shared = meterialData()
    
    var meterial: [Meterial] = [
        Meterial(meterialName: "딸기향", meterialIndex: 1, meterialPercent: 20.5),
        Meterial(meterialName: "딸기향", meterialIndex: 1, meterialPercent: 20.5),
        Meterial(meterialName: "딸기향", meterialIndex: 1, meterialPercent: 20.5),
    ]
}


