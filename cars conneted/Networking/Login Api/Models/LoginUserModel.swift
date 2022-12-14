//
//  LoginUserModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import Foundation


struct LoginUserModel : Codable  {
    
    
    let id : Int?
    let fullName : String?
    let email : String?
    let type : String?
   
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            id = try container.decode(Int?.self, forKey: .id) ?? 0
        } catch{
            id = 0
        }
        
        do{
            fullName = try container.decode(String?.self, forKey: .fullName) ?? ""
        } catch{
            fullName = ""
        }
        
        
        do{
            email = try container.decode(String?.self, forKey: .email) ?? ""
        } catch{
            email = ""
        }
        
       
        do{
            type = try container.decode(String?.self, forKey: .type) ?? ""
        } catch{
            type = ""
        }
        
      
    }
}
