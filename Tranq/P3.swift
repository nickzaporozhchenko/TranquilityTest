//
//  P3.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import Foundation

protocol P3 {
    var descr: String { get }
}


class P3_Impl: P3 {
    var c5: P5!

    init(c5: P5!) {
        self.c5 = c5
    }

    var descr: String { "P3 -> [ c5:{\(c5.descr)} ]" }
}


extension P3_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {
            container.use(P5c_Impl.self)
            
            container.register(P3_Impl.init).as(P3.self)
        }
    }
}
