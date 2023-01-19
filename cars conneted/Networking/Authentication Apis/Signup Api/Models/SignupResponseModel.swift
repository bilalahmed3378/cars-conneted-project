//
//  RegisterUserModel.swift
//  MeccaFitness
//
//  Created by CodeCue on 09/04/2022.
//

import Foundation


struct SignupResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data : SignupDataModel?
    
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
            data = try container.decode(SignupDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
    }
    
}



struct SignupDataModel : Codable {
    
    
    let otp_id: String
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            otp_id = try container.decode(String?.self, forKey: .otp_id) ?? ""
        } catch{
            otp_id = ""
        }
        
    }
    
}
