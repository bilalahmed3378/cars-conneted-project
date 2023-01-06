//
//  LoginResponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import Foundation


struct LoginResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data : LoginDataModel?
    
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
            data = try container.decode(LoginDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
    }
    
}


struct LoginDataModel : Codable {
    
    
    let user_id: String
    let email: String
    let profileImage: String
    let coverImage: String
    let firstName: String
    let lastName: String
    let phone: Int
    let about: String
    let following: [String]
    let followers: [String]
    let location: LoginDataLocationModel?
    let clubs: [String]
    let classifieds: [String]
    let posts: [String]
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
            phone = try container.decode(Int?.self, forKey: .phone) ?? 0
        } catch{
            phone = 0
        }
        
        
        do{
            about = try container.decode(String?.self, forKey: .about) ?? ""
        } catch{
            about = ""
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
            location = try container.decode(LoginDataLocationModel?.self, forKey: .location) ?? nil
        } catch{
            location = nil
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


struct LoginDataLocationModel : Codable  {
    
    let lat: Double
    let long: Double
    let address: String
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            lat = try container.decode(Double?.self, forKey: .lat) ?? 0.0
        } catch{
            lat = 0.0
        }
        
        do{
            long = try container.decode(Double?.self, forKey: .long) ?? 0.0
        } catch{
            long = 0.0
        }
        
        do{
            address = try container.decode(String?.self, forKey: .address) ?? ""
        } catch{
            address = ""
        }
        
    }
    
}


