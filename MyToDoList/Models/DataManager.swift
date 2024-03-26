//
//  DataManager.swift
//  MyToDoList
//
//  Created by 김시종 on 3/25/24.
//

import UIKit

class DataManager {
    var todoDataArray: [Todo] = []
    
    func makeTodoData() {
        todoDataArray = [
        Todo(id: 1, title: "test", isCompleted: false),
        Todo(id: 2, title: "test2", isCompleted: false)
        ]
    }
    
    func getTodoData() -> [Todo] {
        return todoDataArray
    }
}
