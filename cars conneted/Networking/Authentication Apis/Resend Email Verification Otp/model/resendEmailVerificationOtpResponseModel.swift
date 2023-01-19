//
//  resendEmailVerificationOtpResponseModel.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 06/01/2023.
//

import Foundation


struct resendEmailVerificationOtpResponseModel : Codable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data : resendEmailVerificationOtpDataModel?
    
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
            data = try container.decode(resendEmailVerificationOtpDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
    }
    
}



struct resendEmailVerificationOtpDataModel : Codable {
    
    
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
