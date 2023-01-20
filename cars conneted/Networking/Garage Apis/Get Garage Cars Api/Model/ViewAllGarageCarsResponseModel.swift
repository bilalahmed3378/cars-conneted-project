//
//  ViewAllGarageCarsResponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/01/2023.
//

import Foundation


struct ViewAllGarageCarsResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: ViewAllGarageCarsDataModel?
    
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
            data = try container.decode(ViewAllGarageCarsDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
        
        
    }
    
}
    


struct ViewAllGarageCarsDataModel : Codable {
    
    let cars : [ViewAllGarageCarsCarsModel]
    let totalcars: Int
    let totalPages : Int
    let pageCounter : Int
    let currentPage : Int
    let limit : Int
    let hasNextPage : Bool
    let hasPreviousPage: Bool
 
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            cars = try container.decode([ViewAllGarageCarsCarsModel]?.self, forKey: .cars) ?? []
        } catch{
            cars = []
        }
        
        do{
            totalcars = try container.decode(Int?.self, forKey: .totalcars) ?? 0
        } catch{
            totalcars = 0
        }
        
        do{
            totalPages = try container.decode(Int?.self, forKey: .totalPages) ?? 0
        } catch{
            totalPages = 0
        }
        
        do{
            pageCounter = try container.decode(Int?.self, forKey: .pageCounter) ?? 0
        } catch{
            pageCounter = 0
        }
        
        do{
            currentPage = try container.decode(Int?.self, forKey: .currentPage) ?? 0
        } catch{
            currentPage = 0
        }
        
        do{
            limit = try container.decode(Int?.self, forKey: .limit) ?? 0
        } catch{
            limit = 0
        }
        
        do{
            hasNextPage = try container.decode(Bool?.self, forKey: .hasNextPage) ?? false
        } catch{
            hasNextPage = false
        }
        
        do{
            hasPreviousPage = try container.decode(Bool?.self, forKey: .hasPreviousPage) ?? false
        } catch{
            hasPreviousPage = false
        }
       
        
    }
    
}
 


struct ViewAllGarageCarsCarsModel : Codable  {
    
    let _id : String
    let owner_id : String
    let garage_id : String
    let brand : String
    let model : String
    let year : Int
    let description : String
    let isShared : Bool
    let sharedFromUser : String
    let sharedFromGarage : String
    let sharedFromCar : String
    let orignalCar : String
    let comments : [String]
    let likedBy : [String]
    let lovedBy : [String]
    let sharedBy : [String]
    let images : [ViewAllGarageCarsImagesModel]
    let createdAt : String
    let updatedAt : String
    let __v : Int
    let owner : ViewAllGarageCarsOwnerModel?
 
    
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
            isShared = try container.decode(Bool?.self, forKey: .description) ?? false
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
            sharedFromCar = try container.decode(String?.self, forKey: .sharedFromCar) ?? ""
        } catch{
            sharedFromCar = ""
        }
        
        do{
            orignalCar = try container.decode(String?.self, forKey: .orignalCar) ?? ""
        } catch{
            orignalCar = ""
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
            images = try container.decode([ViewAllGarageCarsImagesModel]?.self, forKey: .images) ?? []
        } catch{
            images = []
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
        
        do{
            __v = try container.decode(Int?.self, forKey: .__v) ?? 0
        } catch{
            __v = 0
        }
        
        do{
            owner = try container.decode(ViewAllGarageCarsOwnerModel?.self, forKey: .owner) ?? nil
        } catch{
            owner = nil
        }
        
    }
    
}


struct ViewAllGarageCarsOwnerModel : Codable {
    
    let location : ViewAllGarageCarsLocationModel?
    let user_id : String
    let profileImage : String
    let firstName : String
    let lastName : String
    let address : String
    
  
 
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            location = try container.decode(ViewAllGarageCarsLocationModel?.self, forKey: .location) ?? nil
        } catch{
            location = nil
        }
        
        do{
            user_id = try container.decode(String?.self, forKey: .user_id) ?? ""
        } catch{
            user_id = ""
        }
        
        do{
            profileImage = try container.decode(String?.self, forKey: .profileImage) ?? ""
        } catch{
            profileImage = ""
        }
        
        do{
            firstName = try container.decode(String?.self, forKey: .firstName) ?? ""
        } catch{
            firstName = ""
        }
        
        do{
            lastName = try container.decode(String?.self, forKey: .lastName) ?? ""
        } catch{
            lastName = ""
        }
        
        do{
            address = try container.decode(String?.self, forKey: .address) ?? ""
        } catch{
            address = ""
        }
        
      
    }
    
}

 
struct ViewAllGarageCarsLocationModel : Codable {
    
  
    let type : String
    let coordinates : [Double]
    
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

 

struct ViewAllGarageCarsImagesModel : Codable {
    
    let url : String
    let image_id : String
    let _id : String
   
 
    
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
        
        do{
            _id = try container.decode(String?.self, forKey: ._id) ?? ""
        } catch{
            _id = ""
        }
        
      
    }
    
}
