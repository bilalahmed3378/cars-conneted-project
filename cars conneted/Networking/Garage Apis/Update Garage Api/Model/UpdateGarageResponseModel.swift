//
//  UpdateGarageResponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/01/2023.
//

import Foundation

struct UpdateGarageResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: UpdateGarageDataModel?
    
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
            data = try container.decode(UpdateGarageDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
        
        
    }
    
}


struct UpdateGarageDataModel : Codable {
    
    let owner_id: String
    let garageName: String
    let isPublic: Bool
    let address: String
    let location: UpdateGarageLocationModel?
    let cars: [String]
    let createdAt: String
    let updatedAt: String
    
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
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
            cars = try container.decode([String]?.self, forKey: .cars) ?? []
        } catch{
            cars = []
        }
        
        do{
            location = try container.decode(UpdateGarageLocationModel?.self, forKey: .location) ?? nil
        } catch{
            location = nil
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




struct UpdateGarageLocationModel : Codable {
    
    
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
