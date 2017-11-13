//
//  Collection.swift
//
//  Created by MARCELO GRACIETTI on 01/12/16.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import RealmSwift

extension Results {
    
    func toArray<T>() -> [T] {
        var array = [T]()
        for i in 0 ..< count {
            if let result = self[i] as? T {
                array.append(result)
            }
        }
        return array
    }
}
