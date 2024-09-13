//
//  ShoppingItem.swift
//  RealmKakeibo
//
//  Created by 志賀翔太 on 2024/09/12.
//

import Foundation
import RealmSwift

class ShoppingItem: Object{
    @Persisted var title: String = ""
    @Persisted var price: Int = 0
    @Persisted var isMarked: Bool = false
}
