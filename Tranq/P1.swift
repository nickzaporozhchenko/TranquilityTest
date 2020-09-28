//
//  C1.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import Foundation

protocol P1 {
    var descr: String { get }
}

class P1_Impl: P1 {
    var c2: P2!
    var c5: P5!

    init(c2: P2, c5: P5) {
        self.c2 = c2
        self.c5 = c5
    }

    var descr: String { "P1 -> [ c2:{\(c2!.descr)}; c5:{\(c5.descr)} ]" }
}


extension P1_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {
            container.use(P5b_Impl.self)
            container.use(P2_Impl.self)
            
            container.register(P1_Impl.init).as(P1.self)
        }
    }
}
