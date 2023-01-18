//
//  ViewAllFaqsRsponseModel.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/01/2023.
//

import Foundation

struct ViewAllFaqsRsponseModel : Codable, Hashable {
    
    
    let successful : Bool
    let code : Int
    let message : String
    let data: ViewAllFaqsDataModel?
    
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
            data = try container.decode(ViewAllFaqsDataModel?.self, forKey: .data) ?? nil
        } catch{
            data = nil
        }
        
        
        
    }
    
}


struct ViewAllFaqsDataModel : Codable, Hashable {
    
    let faqs : [ViewAllFaqsFaqsModel]
    let pagination : ViewAllFaqsPaginationModel?
    
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        do{
            pagination = try container.decode(ViewAllFaqsPaginationModel?.self, forKey: .pagination) ?? nil
        } catch{
            pagination = nil
        }
        
        do{
            faqs = try container.decode([ViewAllFaqsFaqsModel]?.self, forKey: .faqs) ?? []
        } catch{
            faqs = []
        }
        
        
        
    }
    
}


struct ViewAllFaqsFaqsModel : Codable, Hashable {
    
   
    let _id: String
    let question: String
    let answer: String
    let createdAt: String
    let updatedAt: String
    let __v: Int
   
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        do{
            _id = try container.decode(String?.self, forKey: ._id) ?? ""
        } catch{
            _id = ""
        }
        
        do{
            question = try container.decode(String?.self, forKey: .question) ?? ""
        } catch{
            question = ""
        }
        
        do{
            answer = try container.decode(String?.self, forKey: .answer) ?? ""
        } catch{
            answer = ""
        }
        
        do{
            createdAt = try container.decode(String?.self, forKey: .createdAt) ?? ""
        } catch{
            createdAt = ""
        }
        
        do{
            updatedAt = try container.decode(String?.self, forKey: .updatedAt) ?? ""
        } catch{
            updatedAt = ""
        }
        
        do{
            __v = try container.decode(Int?.self, forKey: .__v) ?? 0
        } catch{
            __v = 0
        }
        
       
        
    }
    
}


struct ViewAllFaqsPaginationModel : Codable, Hashable {
    
   
    let currentPage: Int
    let totalPages: Int
    let answer: Int
    let totalDocuments: Int
    let limit: Int
   
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        do{
            currentPage = try container.decode(Int?.self, forKey: .currentPage) ?? 0
        } catch{
            currentPage = 0
        }
        do{
            totalPages = try container.decode(Int?.self, forKey: .totalPages) ?? 0
        } catch{
            totalPages = 0
        }
        do{
            answer = try container.decode(Int?.self, forKey: .answer) ?? 0
        } catch{
            answer = 0
        }
        do{
            totalDocuments = try container.decode(Int?.self, forKey: .totalDocuments) ?? 0
        } catch{
            totalDocuments = 0
        }
        do{
            limit = try container.decode(Int?.self, forKey: .limit) ?? 0
        } catch{
            limit = 0
        }
        
       
        
    }
    
}



