//
//  getProfileResponseModel.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 12/01/2023.
//

import Foundation


struct getProfileResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: getProfileDataModel?
    
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
            data = try container.decode(getProfileDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
        
        
    }
    
}


struct getProfileDataModel : Codable {
    
    
    let user_id: String
    let email: String
    let location: getProfileDataLocationModel?
    let profileImage: String
    let coverImage: String
    let firstName: String
    let lastName: String
    let phone: String
    let about: String
    let following: [String]
    let followers: [String]
    let followRequests: [String]
    let address: String
    let clubs: [String]
    let classifieds: [String]
    let posts: [String]
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
            location = try container.decode(getProfileDataLocationModel?.self, forKey: .location) ?? nil
        } catch{
            location = nil
        }
        
        do{
            following = try container.decode([String]?.self, forKey: .following) ?? []
        } catch{
            following = []
        }
        
        do{
            followers = try container.decode([String]?.self, forKey: .followers) ?? []
        } catch{
            followers = []
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
            clubs = try container.decode([String]?.self, forKey: .clubs) ?? []
        } catch{
            clubs = []
        }
        
        do{
            classifieds = try container.decode([String]?.self, forKey: .classifieds) ?? []
        } catch{
            classifieds = []
        }
        
        do{
            posts = try container.decode([String]?.self, forKey: .posts) ?? []
        } catch{
            posts = []
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




struct getProfileDataLocationModel : Codable {
    
    
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
