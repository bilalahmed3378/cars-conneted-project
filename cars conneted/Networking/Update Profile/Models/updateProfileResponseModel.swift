//
//  updateProfileResponseModel.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 12/01/2023.
//

import Foundation




struct updateProfileResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: updateProfileDataModel?
    
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
            data = try container.decode(updateProfileDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
        
        
    }
    
}


struct updateProfileDataModel : Codable {
    
    
    let user_id: String
    let email: String
    let profileImage: String
    let coverImage: String
    let firstName: String
    let lastName: String
    let phone: String
    let about: String
    let address: String
    let followRequests: [String]
    let profileImageId: String
    let coverImageId: String
    let createdAt: String
    let updatedAt: String
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            user_id = try container.decode(String?.self, forKey: .user_id) ?? ""
        } catch{
            user_id = ""
        }
        
        do{
            email = try container.decode(String?.self, forKey: .email) ?? ""
        } catch{
            email = ""
        }
        
        do{
            profileImage = try container.decode(String?.self, forKey: .profileImage) ?? ""
        } catch{
            profileImage = ""
        }
        
        do{
            coverImage = try container.decode(String?.self, forKey: .coverImage) ?? ""
        } catch{
            coverImage = ""
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
            phone = try container.decode(String?.self, forKey: .phone) ?? ""
        } catch{
            phone = ""
        }
        
        do{
            about = try container.decode(String?.self, forKey: .about) ?? ""
        } catch{
            about = ""
        }
        
       
        do{
            followRequests = try container.decode([String]?.self, forKey: .followRequests) ?? []
        } catch{
            followRequests = []
        }
        
       
        do{
            address = try container.decode(String?.self, forKey: .address) ?? ""
        } catch{
            address = ""
        }
        
        do{
            profileImageId = try container.decode(String?.self, forKey: .profileImageId) ?? ""
        } catch{
            profileImageId = ""
        }
        
        do{
            coverImageId = try container.decode(String?.self, forKey: .coverImageId) ?? ""
        } catch{
            coverImageId = ""
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




struct updateProfileDataLocationModel : Codable {
    
    
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
