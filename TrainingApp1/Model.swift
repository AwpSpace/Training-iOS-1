//
//  ModelData.swift
//  TrainingApp1
//
//  Created by Pham Ky on 5/24/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import Foundation

struct Model {
    var name : String
    var country : String
    var message: String
    
    init(name: String, country: String, message: String){
        self.name = name
        self.country = country
        self.message = message
    }
    
    func say() -> String {
        return self.name + " comes from " + self.country + " and  says " + self.message
    }
    
}