//
//  DI.swift
//  Tranq
//
//  Created by Mykola Zaporozhchenko on 9/28/20.
//

import Foundation
import DITranquillity

typealias Framework = DIFramework
typealias Container = DIContainer
protocol DILoadable {
    static var framework: Framework.Type { get }
}

extension DILoadable {
    static func make() -> Self {
        *DIContainer().append(framework: framework)
    }
}

extension DIContainer {
    func use(_ dep: DILoadable.Type) {
        //self.import(dep.framework) //-- Does not work!
        append(framework: dep.framework)
    }
}

func startLog() {
    DISetting.Log.level = .verbose
}
