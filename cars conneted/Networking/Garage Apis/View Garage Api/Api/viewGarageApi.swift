//
//  viewGarageApi.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 12/01/2023.
//

import Foundation
import SwiftUI

class ViewGarageApi : ObservableObject{
    //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var dataRetrievedSuccessfully = false
    @Published var apiResponse :  viewGarageResponseModel?
    
    
    //MARK: - Get Customer Orders History
    func viewGarage(){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.dataRetrievedSuccessfully = false
        self.isApiCallDone = false
        
        
        //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.viewGarage ) else {return}
        
        
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
                print("Got view garage response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(viewGarageResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        if (main.data != nil){
                            
                            self.dataRetrievedSuccessfully = true
                            
//                            if !(main.data!.isEmpty){
//                                
//                                carsList.wrappedValue.removeAll()
//                                carsList.wrappedValue.append(contentsOf: main.data)
//                                
//                            }
                            
                        }
                        
                        else{
                            
                            self.dataRetrievedSuccessfully = false
                            
                        }
                        
                        
                    }
                    
                    else{
                        self.dataRetrievedSuccessfully = false
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
                    self.dataRetrievedSuccessfully = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
    
    
}
