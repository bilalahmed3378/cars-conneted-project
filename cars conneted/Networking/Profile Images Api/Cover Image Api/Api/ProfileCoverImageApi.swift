//
//  ProfileCoverImageApi.swift
//  cars conneted
//
//  Created by Bilal Ahmed on 18/01/2023.
//

import Foundation
import MultipartForm

class ProfileCoverImageApi : ObservableObject{
        //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var profileCoverImageUploaded = false
    @Published var apiResponse :  ProfileCoverImageResponseModel?


    

    
        //MARK: - Get Customer Orders History
    func profileCoverImage(image : Data){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.profileCoverImageUploaded = false
        self.isApiCallDone = false
        
            //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.profileCoverImage ) else {return}
        

        var formToRequest = MultipartForm()
        
        formToRequest.parts.append(MultipartForm.Part(name: "coverImage" , data: image, filename: "cover_image.png"))

        
        
        let token = AppData().getBearerToken()
        
            //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue(token, forHTTPHeaderField: "token")
        request.setValue(formToRequest.contentType, forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue(NetworkConfig.secretKey, forHTTPHeaderField: "secret_key")
        request.httpBody = formToRequest.bodyData
        
        
        
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
                print("Got profile cover image response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(ProfileCoverImageResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        self.profileCoverImageUploaded = true
                    }
                    
                    else{
                        self.profileCoverImageUploaded = false
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
                    self.profileCoverImageUploaded = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
 
    
}
