//
//  DeleteGarageResponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/01/2023.
//

import Foundation


struct DeleteGarageResponseModel : Codable, Hashable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    
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
        
        
        
    }
    
}
