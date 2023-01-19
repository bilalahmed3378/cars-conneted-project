//
//  GetGarageCarsApi.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 19/01/2023.
//

import Foundation
import SwiftUI


class GetGarageCarsApi : ObservableObject{
    //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var dataRetrivedSuccessfully = false
    @Published var apiResponse :  ViewAllGarageCarsResponseModel?
    @Published var isLoadingMore = false

    
    
    
    
    //MARK: - Get Customer Orders History
    func viewAllGarageCars(carsList : Binding<[ViewAllGarageCarsCarsModel]>){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.dataRetrivedSuccessfully = false
        self.isApiCallDone = false
        
        //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.getGarageCars+"?page=1&limit=10") else {return}
        
        
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
                print("Got view garage cars response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(ViewAllGarageCarsResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        if(main.data != nil){
                            self.dataRetrivedSuccessfully = true

                            if !(main.data!.cars.isEmpty){
                                carsList.wrappedValue.append(contentsOf: main.data!.cars)
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
    
    func viewMorecars(carsList : Binding<[ViewAllGarageCarsCarsModel]>){
        
        var urlString = NetworkConfig.baseUrl + NetworkConfig.getGarageCars
        
        if(apiResponse?.data?.currentPage != nil){
            let new_page = apiResponse!.data!.currentPage + 1
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
                print("Got more garage cars response succesfully.....")
               
                let main = try JSONDecoder().decode(ViewAllGarageCarsResponseModel.self, from: data)
                DispatchQueue.main.async {
                    self.apiResponse = main
                    if(main.code == 200 && main.successful == true){
                        if(main.data != nil){
                            if !(main.data!.cars.isEmpty){
                                carsList.wrappedValue.append(contentsOf: main.data!.cars)
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
