//
//  LoginApi.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 02/08/2022.
//

import Foundation
import MultipartForm


class LoginApi: ObservableObject {
    @Published var isloading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var loginSuccessful = false
    @Published var ApiResponse: LoginResponseModel?
    
    
    func login(email: String , password: String){
        self.isloading = true
        self.isApiCallDone = false
        self.isApiCallSuccessful = false
        self.loginSuccessful = false
        
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.login)
        else{return}
        
        let toFormRequest = MultipartForm(parts: [MultipartForm.Part(name: "email", value: email), MultipartForm.Part(name: "password", value: password)])
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue(toFormRequest.contentType, forHTTPHeaderField: "content-type")
        request.setValue("application/json", forHTTPHeaderField: "Accepted")
        request.httpBody = toFormRequest.bodyData
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data , error == nil
            
            else {
                print(error?.localizedDescription ?? "No Data")
                DispatchQueue.main.async {
                    self.isloading = false
                    self.isApiCallDone = true
                    self.isApiCallSuccessful = false
                }
                
                return
            }
            
            do{
                print("login response successful")
                DispatchQueue.main.async{
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(LoginResponseModel.self, from: data)
                DispatchQueue.main.async {
                    self.ApiResponse = main
                    self.isApiCallSuccessful = true
                    if(main.code == 200 && main.status == "success"){
                        if(main.data != nil){
                            if(main.data!.user != nil){
                                AppData().saveBearerToken(bearerToken: main.data!.token ?? "")
                                self.loginSuccessful = true
                            }
                            else{
                                self.loginSuccessful = false
                            }
                            
                        }
                        else{
                            self.loginSuccessful = false
                        }
                    }
                    else{
                        self.loginSuccessful = false
                    }
                    self.isloading = false
                }
            }
            catch{
                print(error)
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                    self.ApiResponse = nil
                    self.isApiCallSuccessful = true
                    self.loginSuccessful = false
                    self.isloading = false
                }
            }
        }
        
        task.resume()
        
        
    }
}


