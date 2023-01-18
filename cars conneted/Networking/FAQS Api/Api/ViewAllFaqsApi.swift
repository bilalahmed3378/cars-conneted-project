//
//  ViewAllFaqsApi.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/01/2023.
//

import Foundation
import SwiftUI


class ViewAllFaqsApi : ObservableObject{
    //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var dataRetrivedSuccessfully = false
    @Published var apiResponse :  ViewAllFaqsRsponseModel?
    @Published var isLoadingMore = false

    
    
    
    
    //MARK: - Get Customer Orders History
    func viewAllFaqs(FaqsList : Binding<[ViewAllFaqsFaqsModel]>){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.dataRetrivedSuccessfully = false
        self.isApiCallDone = false
        
        //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.viewAllFaqs+"?page=1&limit=10") else {return}
        
        
        let token = AppData().getBearerToken()
        
        
        //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue( token, forHTTPHeaderField: "token")
        request.setValue(NetworkConfig.secretKey, forHTTPHeaderField: "secret_key")
        
        
        
        //:end
        
        
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                    self.isApiCallSuccessful=false
                    self.isLoading = false
                }
                return
            }
            //If sucess
            
            
            do{
                print("Got view all faqs response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(ViewAllFaqsRsponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        if(main.data != nil){
                            self.dataRetrivedSuccessfully = true

                            if !(main.data!.faqs.isEmpty){
                                FaqsList.wrappedValue.append(contentsOf: main.data!.faqs)
                            }
                        }
                        
                        else{
                            self.dataRetrivedSuccessfully = false
                        }
                        
                    }
                    
                    else{
                        self.dataRetrivedSuccessfully = false
                    }
                    self.isLoading = false
                }
            }catch{  // if error
                print(error)
                DispatchQueue.main.async {
                    print(error)
                    self.isApiCallDone = true
                    self.apiResponse = nil
                    self.isApiCallSuccessful  = true
                    self.dataRetrivedSuccessfully = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
    func viewMoreFaqs(faqsList : Binding<[ViewAllFaqsFaqsModel]>){
        
        var urlString = NetworkConfig.baseUrl + NetworkConfig.viewAllFaqs
        
        if(apiResponse?.data?.pagination?.currentPage != nil){
            let new_page = apiResponse!.data!.pagination!.currentPage + 1
            urlString = urlString + "?page=\(new_page)&limit=10"
        }
        else{
            return
        }
        
        
        self.isLoadingMore = true
            //Create url
        guard let url = URL(string: urlString) else {return}
        
        
        let token = AppData().getBearerToken()

        
        //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue( token, forHTTPHeaderField: "token")
        request.setValue(NetworkConfig.secretKey, forHTTPHeaderField: "secret_key")
        
            //:end
    

        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            DispatchQueue.main.async {
                self.isLoadingMore = false
            }
            
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
                //If sucess
            
            
            
            
            do{
                print("Got more faqs response succesfully.....")
               
                let main = try JSONDecoder().decode(ViewAllFaqsRsponseModel.self, from: data)
                DispatchQueue.main.async {
                    self.apiResponse = main
                    if(main.code == 200 && main.successful == true){
                        if(main.data != nil){
                            if !(main.data!.faqs.isEmpty){
                                faqsList.wrappedValue.append(contentsOf: main.data!.faqs)
                            }
                        }
                        
                    }
                    
                }
            }catch{  // if error
                print(error)
                
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }

    
   
    
}
