//
//  ModelData.swift
//  TrainingApp1
//
//  Created by Pham Ky on 5/24/16.
//  Copyright © 2016 AwpSpace. All rights reserved.
//

import Foundation

class ModelData{
    
    func getDatas() -> [Model]{
        
        var lstData = [Model]()
        
        lstData.append(Model(name: "Phạm Hồng Kỳ", country: "Việt Nam", message: "Xin Chào"))
        lstData.append(Model(name: "Nguyễn Hoàng Điệp", country: "Đông Ti-mo", message: "Timo Hi"))
        lstData.append(Model(name: "Nguyễn Tuấn Hải", country: "Singapore", message: "Gapore Chao"))
        lstData.append(Model(name: "Đỗ Thu Hà", country: "Indonexia", message: "Xia la"))
        lstData.append(Model(name: "Vi Thị Huyền", country: "Malaysia", message: "Mala helia"))
        lstData.append(Model(name: "Lê Ngọc Hà", country: "Mianmar", message: "Maniar"))
        lstData.append(Model(name: "Nguyễn Thiện Phúc", country: "Thái Lan", message: "Pukec"))
        lstData.append(Model(name: "Nguyễn Trung Hưng", country: "Campuchia", message: "Cam không chua"))
        lstData.append(Model(name: "Nguyễn Tiến Mạnh", country: "Lào", message: "Láo"))
        lstData.append(Model(name: "Nguyễn Tiến Cường", country: "Trung Quốc", message: "Chung Quả"))
        lstData.append(Model(name: "Nguyễn Ngọc Tiệp", country: "Mỹ", message: "Mẽo Thor"))
        return lstData
    }

}