//
//  addCarResponseModel.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 11/01/2023.
//

import Foundation



struct addCarResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: addCarDataModel?
    
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
            data = try container.decode(addCarDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
        
        
    }
    
}


struct addCarDataModel : Codable {
    
    let _id: String
    let owner_id: String
    let garage_id: String
    let brand: String
    let model: String
    let year: Int
    let description: String
    let isDeleted: Bool
    let comments: [String]
    let likedBy: [String]
    let lovedBy: [String]
    let sharedBy: [String]
    let images: [addCarDataImageModel]
    
    
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
            isDeleted = try container.decode(Bool?.self, forKey: .isDeleted) ?? false
        } catch{
            isDeleted = false
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
            images = try container.decode([addCarDataImageModel]?.self, forKey: .images) ?? []
        } catch{
            images = []
        }
        
    }
    
}




struct addCarDataImageModel : Codable {
    
    
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
