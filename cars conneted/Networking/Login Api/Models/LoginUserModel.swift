//
//  LoginUserModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import Foundation


struct LoginUserModel : Codable  {
    
    
    let id : Int?
    let first_name : String?
    let last_name : String?
    let email : String?
    let signup_method : String?
    let user_type : String?
    let is_profile_setup : Int?
    let email_verified_at  :String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            id = try container.decode(Int?.self, forKey: .id) ?? 0
        } catch{
            id = 0
        }
        
        do{
            first_name = try container.decode(String?.self, forKey: .first_name) ?? ""
        } catch{
            first_name = ""
        }
        
        do{
            last_name = try container.decode(String?.self, forKey: .last_name) ?? ""
        } catch{
            last_name = ""
        }
        
        do{
            email = try container.decode(String?.self, forKey: .email) ?? ""
        } catch{
            email = ""
        }
        
        do{
            signup_method = try container.decode(String?.self, forKey: .signup_method) ?? ""
        } catch{
            signup_method = ""
        }
        
        do{
            user_type = try container.decode(String?.self, forKey: .user_type) ?? ""
        } catch{
            user_type = ""
        }
        
        do{
            is_profile_setup = try container.decode(Int?.self, forKey: .is_profile_setup) ?? 0
        } catch{
            is_profile_setup = 0
        }
        
        do{
            email_verified_at = try container.decode(String?.self, forKey: .email_verified_at) ?? ""
        } catch{
            email_verified_at = ""
        }
    }
}
