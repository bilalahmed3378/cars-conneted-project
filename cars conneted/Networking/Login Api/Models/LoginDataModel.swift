//
//  LoginDataModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import Foundation


struct LoginDataModel : Codable {
    
    
    let token : String?
    let user : LoginUserModel?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            token = try container.decode(String?.self, forKey: .token) ?? ""
        } catch{
            token = ""
        }
        
        do{
            user = try container.decode(LoginUserModel?.self, forKey: .user) ?? nil
        } catch{
            user = nil
        }
    }
    
}
