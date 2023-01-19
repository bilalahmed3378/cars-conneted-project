//
//  RegisterApi.swift
//  MeccaFitness
//
//  Created by CodeCue on 09/04/2022.
//

import Foundation

class SignupApi : ObservableObject{
        //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var signupSuccessful = false
    @Published var apiResponse :  SignupResponseModel?
    @Published var emailAlreadyInUse = false


    

    
        //MARK: - Get Customer Orders History
    func signupUser( email : String , password : String){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.signupSuccessful = false
        self.emailAlreadyInUse = false
        self.isApiCallDone = false
        
            //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.signup ) else {return}
        
        
        let data : Data = "email=\(email)&password=\(password)".data(using: .utf8)!

    
            //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue(NetworkConfig.secretKey, forHTTPHeaderField: "secret_key")
        request.httpBody = data
        
        
        
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
                print("Got signup response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(SignupResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        if(main.data != nil){
                            self.signupSuccessful = true
                        }
                        else{
                            self.signupSuccessful = false

                        }
                    }
                    
                    else if (main.message == "Email already in use. Please try different email."){
                        
                        self.emailAlreadyInUse = true
                        
                    }

                    else{
                        self.signupSuccessful = false
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
                    self.signupSuccessful = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
 
    
}
