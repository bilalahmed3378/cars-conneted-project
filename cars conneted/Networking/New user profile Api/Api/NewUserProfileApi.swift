//
//  NewUserProfileApi.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 15/08/2022.
//

import Foundation
import MultipartForm

class NewUserProfileApi: ObservableObject {
    @Published var isloading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var userProfileSuccessful = false
    @Published var ApiResponse: NewUserProfileResponseModel?
    
    
    
    func addUserProfileData( firstName : String , lastName: String, number: String, location : String, bio : String   ){
        
        self.isloading = true
        self.isApiCallDone = false
        self.isApiCallSuccessful = false
        self.userProfileSuccessful = false
        
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.addProfileData)
        else{return}
        
      
        
        let toFormRequest = MultipartForm(parts: [
            MultipartForm.Part(name: "First Name", value: firstName),
            MultipartForm.Part(name: "Last Name", value: lastName),
            MultipartForm.Part(name: "Number", value: number),
            MultipartForm.Part(name: "location", value: location),
            MultipartForm.Part(name: "bio", value: bio)
           
        ])
        
        let token = AppData().getBearerToken()
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.setValue( "Bearer \(token)", forHTTPHeaderField: "Authorization")
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
                print("got add profile data response successfully....")
                DispatchQueue.main.async{
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(NewUserProfileResponseModel.self, from: data)
                DispatchQueue.main.async {
                    self.ApiResponse = main
                    self.isApiCallSuccessful = true
                    if(main.code == 200 && main.status == "success"){
                        if(main.data != nil){
                               
                                self.userProfileSuccessful = true
                        }
                            else{
                                self.userProfileSuccessful = false
                            }
                            
                        }
                        else{
                            self.userProfileSuccessful = false
                        }
                    }
                  
                    self.isloading = false
                }
            
            catch{
                print(error)
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                    self.ApiResponse = nil
                    self.isApiCallSuccessful = true
                    self.userProfileSuccessful = false
                    self.isloading = false
                }
            }
        }
        
        task.resume()
        
        
    }
}

