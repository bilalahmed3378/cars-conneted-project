//
//  resetPasswordResponseModel.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 17/12/2022.
//

import Foundation


struct resetPasswordResponseModel : Codable{
    
    let successful : Bool
    let code : Int
    let message : String
    
    init(from decoder: Decoder) throws {
        
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do {
            successful = try container.decode(Bool?.self, forKey: .successful) ?? false
        } catch  {
            successful = false
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
        
        
       
        
    }
    
    
    
}
