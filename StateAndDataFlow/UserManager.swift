//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import Combine

struct Person {
    let name: String
    let isReister: Bool

//    var symbolCount: Int {
//         name.count
//    }
}


class UserManager: ObservableObject { // ObservableObject за которым наблюдаем
    @Published var isRegister = false // эти свойства не удалил пока, без них не запускается проект
    var name = ""


    @Published var person = Person()
//    не понял чем инициализировать модель
}

class DataStorage {
    static let shared = DataStorage()


//    @AppStorage("contact") private var userDefaults: Data?



    private init() {}

    /*
     будем организовывать методы по загрузке данных из userDefaults, по сохранению и по удалению
     */
}

