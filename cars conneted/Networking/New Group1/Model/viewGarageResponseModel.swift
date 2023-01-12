//
//  viewGarageResponseModel.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 12/01/2023.
//

import Foundation


struct viewGarageResponseModel : Codable, Hashable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: [viewGarageDataModel]?
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            successful = try container.decode(Bool?.self, forKey: .successful) ?? false
        } catch{
            successful = false
        }
        
        do{
            code = try container.decode(Int?.self, forKey: .code) ?? 0
        } catch{
            code = 0
        }
        
        do{
            message = try container.decode(String?.self, forKey: .message) ?? ""
        } catch{
            message = ""
        }
        
        do{
            data = try container.decode([viewGarageDataModel]?.self, forKey: .data) ?? []
        } catch{
            data = []
        }
        
        
        
    }
    
}



struct viewGarageDataModel : Codable, Hashable {
    
    let _id: String
    let owner_id: String
    let garageName: String
    let isPublic: Bool
    let address: String
    let location: viewGarageDataLocationModel?
    let cars: [viewGarageDataCarModel]
    let createdAt: String
    let updatedAt: String
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            _id = try container.decode(String?.self, forKey: ._id) ?? ""
        } catch{
            _id = ""
        }
        
        do{
            owner_id = try container.decode(String?.self, forKey: .owner_id) ?? ""
        } catch{
            owner_id = ""
        }
        
        do{
            garageName = try container.decode(String?.self, forKey: .garageName) ?? ""
        } catch{
            garageName = ""
        }
        
        do{
            isPublic = try container.decode(Bool?.self, forKey: .isPublic) ?? false
        } catch{
            isPublic = false
        }
        
        do{
            address = try container.decode(String?.self, forKey: .address) ?? ""
        } catch{
            address = ""
        }
        
        do{
            location = try container.decode(viewGarageDataLocationModel?.self, forKey: .location) ?? nil
        } catch{
            location = nil
        }
        
        do{
            cars = try container.decode([viewGarageDataCarModel]?.self, forKey: .cars) ?? []
        } catch{
            cars = []
        }
        
        do{
            createdAt = try container.decode(String?.self, forKey: .createdAt) ?? ""
        } catch{
            createdAt = ""
        }
        
        do{
            updatedAt = try container.decode(String?.self, forKey: .updatedAt) ?? ""
        } catch{
            updatedAt = ""
        }
        
        
        
    }
    
}


struct viewGarageDataLocationModel : Codable, Hashable {
    
    
    let type: String
    let coordinates: [Double]
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        do{
            type = try container.decode(String?.self, forKey: .type) ?? ""
        } catch{
            type = ""
        }
        
        do{
            coordinates = try container.decode([Double]?.self, forKey: .coordinates) ?? []
        } catch{
            coordinates = []
        }
        
        
        
    }
    
}



struct viewGarageDataCarModel : Codable, Hashable {
    
    let _id: String
    let owner_id: String
    let garage_id: String
    let brand: String
    let model: String
    let year: Int
    let description: String
    let isShared: Bool
    let sharedFromUser: String
    let sharedFromGarage: String
    let sharedCar: String
    let comments: [String]
    let likedBy: [String]
    let lovedBy: [String]
    let sharedBy: [String]
    let images: [viewGarageDataCarImageModel]
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            _id = try container.decode(String?.self, forKey: ._id) ?? ""
        } catch{
            _id = ""
        }
        
        do{
            owner_id = try container.decode(String?.self, forKey: .owner_id) ?? ""
        } catch{
            owner_id = ""
        }
        
        do{
            garage_id = try container.decode(String?.self, forKey: .garage_id) ?? ""
        } catch{
            garage_id = ""
        }
        
        do{
            brand = try container.decode(String?.self, forKey: .brand) ?? ""
        } catch{
            brand = ""
        }
        
        do{
            model = try container.decode(String?.self, forKey: .model) ?? ""
        } catch{
            model = ""
        }
        
        do{
            year = try container.decode(Int?.self, forKey: .year) ?? 0
        } catch{
            year = 0
        }
        
        do{
            description = try container.decode(String?.self, forKey: .description) ?? ""
        } catch{
            description = ""
        }
        
        do{
            isShared = try container.decode(Bool?.self, forKey: .isShared) ?? false
        } catch{
            isShared = false
        }
        
        do{
            sharedFromUser = try container.decode(String?.self, forKey: .sharedFromUser) ?? ""
        } catch{
            sharedFromUser = ""
        }
        
        do{
            sharedFromGarage = try container.decode(String?.self, forKey: .sharedFromGarage) ?? ""
        } catch{
            sharedFromGarage = ""
        }
        
        do{
            sharedCar = try container.decode(String?.self, forKey: .sharedCar) ?? ""
        } catch{
            sharedCar = ""
        }
        
        
        do{
            comments = try container.decode([String]?.self, forKey: .comments) ?? []
        } catch{
            comments = []
        }
        
        do{
            likedBy = try container.decode([String]?.self, forKey: .likedBy) ?? []
        } catch{
            likedBy = []
        }
        
        do{
            lovedBy = try container.decode([String]?.self, forKey: .lovedBy) ?? []
        } catch{
            lovedBy = []
        }
        
        do{
            sharedBy = try container.decode([String]?.self, forKey: .sharedBy) ?? []
        } catch{
            sharedBy = []
        }
        
        do{
            images = try container.decode([viewGarageDataCarImageModel]?.self, forKey: .images) ?? []
        } catch{
            images = []
        }
        
    }
    
}



struct viewGarageDataCarImageModel : Codable, Hashable {
    
    
    let url: String
    let image_id: String
    
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        do{
            url = try container.decode(String?.self, forKey: .url) ?? ""
        } catch{
            url = ""
        }
        
        do{
            image_id = try container.decode(String?.self, forKey: .image_id) ?? ""
        } catch{
            image_id = ""
        }
        
        
        
    }
    
}



