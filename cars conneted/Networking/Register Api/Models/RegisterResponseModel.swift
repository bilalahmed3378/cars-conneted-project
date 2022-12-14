//
//  RegisterResponseModel.swift
//  MeccaFitness
//
//  Created by CodeCue on 09/04/2022.
//

import Foundation

struct RegisterResponseModel : Codable {
    
    
    let status : String
    let code : Int
    let message : String
    let data : RegisterDataModel?
    
    
    
    init(from decoder: Decoder) throws {
       
               
       let container = try decoder.container(keyedBy: CodingKeys.self)

        do {
            status = try container.decode(String?.self, forKey: .status) ?? ""
        } catch  {
            status = ""
        }
        
        do {
            code = try container.decode(Int?.self, forKey: .code) ?? 0
        } catch  {
            code = 0
        }
       
       do {
           message = try container.decode(String?.self, forKey: .message) ?? ""
       } catch  {
           message = ""
       }
       
       
       do {
           data = try container.decode(RegisterDataModel?.self, forKey: .data) ?? nil
       } catch  {
           data = nil
       }
        
       
   }
    
    
}


struct RegisterDataModel : Codable {
    
    
    let token : String?
    let user : RegisterUserModel?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            token = try container.decode(String?.self, forKey: .token) ?? ""
        } catch{
            token = ""
        }
        
        do{
            user = try container.decode(RegisterUserModel?.self, forKey: .user) ?? nil
        } catch{
            user = nil
        }
    }
    
}
