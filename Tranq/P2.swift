//
//  P2.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import Foundation

protocol P2 {
    var descr: String { get }
}


class P2_Impl: P2 {
    var c3: P3!
    var c4: P4!
    var c5: P5!

    init(c3: P3, c4: P4, c5: P5) {
        self.c3 = c3
        self.c4 = c4
        self.c5 = c5
    }

    var descr: String { "P2 -> [ c3:{\(c3.descr)}; c4:{\(c4.descr)}; c5:{\(c5.descr)} ]"  }
}


extension P2_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {

            container.use(P3_Impl.self)
            container.use(P4_Impl.self)
            container.use(P5a_Impl.self)

            container.register(P2_Impl.init).as(P2.self)
        }
    }
}
