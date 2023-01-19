//
//  AddCarImagesResponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/01/2023.
//

import Foundation

struct AddCarImagesResponseModel : Codable, Hashable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: [AddCarImagesDataModel]
    
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
            data = try container.decode([AddCarImagesDataModel]?.self, forKey: .data) ?? []
        } catch{
            data = []
        }
        
        
        
    }
    
}

struct AddCarImagesDataModel : Codable, Hashable {
    
    
    
    let uploaded : Bool
    let url : String
    let fileId : String
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            uploaded = try container.decode(Bool?.self, forKey: .uploaded) ?? false
        } catch{
            uploaded = false
        }
        
        do{
            fileId = try container.decode(String?.self, forKey: .fileId) ?? ""
        } catch{
            fileId = ""
        }
        
        do{
            url = try container.decode(String?.self, forKey: .url) ?? ""
        } catch{
            url = ""
        }
        
       
        
    }
    
}
