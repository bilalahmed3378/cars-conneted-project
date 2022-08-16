//
//  NewUserProfileResponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 15/08/2022.
//

import Foundation

struct NewUserProfileResponseModel : Codable {
    
    let status : String
    let code : Int
    let message : String
    let data : NewUserProfileDataModel?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            status = try container.decode(String?.self, forKey: .status) ?? ""
         } catch{
            status = ""
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
            data = try container.decode(NewUserProfileDataModel?.self, forKey: .data) ?? nil
         } catch{
             data = nil
        }
    }
    
}
    
struct NewUserProfileDataModel : Codable {
    
        let base_user : Int
        let phone : String
        let image : String
        let biography : String
        let location_lat : Double
        let location_long : Double
        let address : String
        let dob : String
        let age : Int
        let gender : String
        let id : Int
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            base_user = try container.decode(Int?.self, forKey: .base_user) ?? 0
        } catch{
            base_user = 0
        }
        
        do{
            phone = try container.decode(String?.self, forKey: .phone) ?? ""
        } catch{
            phone = ""
        }
        
        do{
            image = try container.decode(String?.self, forKey: .image) ?? ""
        } catch{
            image = ""
        }
        
        do{
            biography = try container.decode(String?.self, forKey: .biography) ?? ""
        } catch{
            biography = ""
        }
        
        do{
            location_lat = try container.decode(Double?.self, forKey: .location_lat) ?? 0.0
        } catch{
            location_lat = 0.0
        }
        
        do{
            location_long = try container.decode(Double?.self, forKey: .location_long) ?? 0.0
        } catch{
            location_long = 0.0
        }
        
        do{
            address = try container.decode(String?.self, forKey: .address) ?? ""
        } catch{
            address = ""
        }
        
        do{
            dob = try container.decode(String?.self, forKey: .dob) ?? ""
        } catch{
            dob = ""
        }
        
        do{
            age = try container.decode(Int?.self, forKey: .age) ?? 0
        } catch{
            age = 0
        }
        
        do{
            gender = try container.decode(String?.self, forKey: .gender) ?? ""
        } catch{
            gender = ""
        }
        
        do{
            id = try container.decode(Int?.self, forKey: .id) ?? 0
        } catch{
            id = 0
        }
    }
}



  
    

