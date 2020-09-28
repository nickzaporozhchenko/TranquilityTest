//
//  P5.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import Foundation

protocol P5 {
    var descr: String { get }
}


class P5a_Impl: P5 {
    var descr: String { "P5a" }
}


extension P5a_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {
            container.register(P5a_Impl.init).as(P5.self)
        }
    }
}


class P5b_Impl: P5 {
    var descr: String { "P5b" }
}


extension P5b_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {
            container.register(P5b_Impl.init).as(P5.self)
        }
    }
}


class P5c_Impl: P5 {
    var descr: String { "P5c" }
}


extension P5c_Impl: DILoadable {
    static var framework: Framework.Type {
        F.self
    }

    class F: Framework {
        static func load(container: Container) {
            container.register(P5c_Impl.init).as(P5.self)
        }
    }
}
