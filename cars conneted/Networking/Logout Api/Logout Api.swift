//
//  Logout Api.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 03/08/2022.
//

import Foundation

class LogoutApi: ObservableObject {
    @Published var isloading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var logoutSuccessful = false
    @Published var apiResponse: LogoutResponseModel?
    
    func Logout(){
        self.isloading = true
        self.isApiCallDone = false
        self.isApiCallSuccessful = false
        self.logoutSuccessful = false
        
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.updateProfileData)
        else{return}
        
        let token = AppData().getBearerToken()

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("bearer\(token)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = URLSession.shared.dataTask(with: request) {data, response, error in
            guard let data = data , error == nil
            else {
                print(error?.localizedDescription ?? "No Data")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                    self.isloading = false
                   self.isApiCallSuccessful = false
                }
                return
            }
            
            do{
                print("got logout response successfully")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                
                let main = try JSONDecoder().decode(LogoutResponseModel.self, from: data)
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful = true
                    if(main.code == 200  &&  main.status == "success"){
                        self.logoutSuccessful = true
                    }
                    else{
                        self.logoutSuccessful = false
                    }
                    self.isloading = false
                }
            }
            
            catch{
                print(error)
                DispatchQueue.main.async
                {
                    self.isApiCallDone = true
                    self.apiResponse = nil
                    self.isApiCallSuccessful = true
                    self.logoutSuccessful = false
                    self.isloading = false
                }
            }
            
        }
        
        task.resume()
        
    }
    
}
        
        
        
        
        
        

