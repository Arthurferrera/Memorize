//
//  Array+Only.swift
//  Memorize
//
//  Created by Arthur Ferreira on 15/08/20.
//  Copyright © 2020 Arthur Ferreira. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
