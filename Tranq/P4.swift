//
//  P4.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import Foundation

protocol P4 {
    var descr: String { get }
}


class P4_Impl: P4 {
    var descr: String { "P4" }
}


extension P4_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {
            container.register(P4_Impl.init).as(P4.self)
        }
    }
}
