//
//  resendEmailVerificationOtpApi.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 06/01/2023.
//

import Foundation


class resendEmailVerificationOtpApi : ObservableObject{
        //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var otpSent = false
    @Published var apiResponse :  resendEmailVerificationOtpResponseModel?


    

    
        //MARK: - Get Customer Orders History
    func resendEmailVerificationOtp( email : String){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.otpSent = false
        self.isApiCallDone = false
        
            //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.resendEmailVerificationOtp ) else {return}
        
        
        let data : Data = "email=\(email)".data(using: .utf8)!

    
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
                print("Got resend Email Verification Otp response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(resendEmailVerificationOtpResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        if(main.data != nil){
                            self.otpSent = true
                        }
                        else{
                            self.otpSent = false
                        }
                    }
                    
                    else{
                        self.otpSent = false
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
                    self.otpSent = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
 
    
}
