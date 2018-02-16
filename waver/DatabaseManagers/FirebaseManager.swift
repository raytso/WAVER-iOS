//
//  FirebaseManager.swift
//  waver
//
//  Created by Ray Tso on 14/02/2018.
//  Copyright © 2018 waver. All rights reserved.
//

import FirebaseDatabase
import RxSwift

class FirebaseManager: DatabaseManager {
    private lazy var root = Database.database().reference()
    
    func get(item: ItemType) {
        root.child(item.rawValue).observe(.value) { (snapshot) in
            print(snapshot)
        }
    }
}
