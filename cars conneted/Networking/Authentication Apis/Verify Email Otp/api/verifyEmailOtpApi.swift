//
//  sendOtpApi.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 17/12/2022.
//

import Foundation


import MultipartForm



class verifyEmailOtpApi : ObservableObject{
    
        //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var otpVerified = false
    @Published var apiResponse :  verifyEmailOtpResponseModel?
    

    

    
    func verifyEmailOtp(otpId: String, otp: String){
        
        self.isLoading = true
        self.isApiCallSuccessful = false
        self.otpVerified = false
        self.isApiCallDone = false
        
        
            //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.verifyEmailOtp ) else {return}
        
        
        
        let data : Data = "otp_id=\(otpId)&otp=\(otp)".data(using: .utf8)!

    
            //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.setValue(NetworkConfig.secretKey, forHTTPHeaderField: "secret_key")
        request.httpBody = data
        
        
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
                print("Got verify email otp response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(verifyEmailOtpResponseModel.self, from: data)
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    if(main.code == 200 && main.successful == true){
                        
                        self.otpVerified = true

                    }
                    else{
                        self.otpVerified = false
                    }
                    self.isLoading = false
                }
            }catch{  // if error
                print(error)
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                    self.apiResponse = nil
                    self.isApiCallSuccessful  = true
                    self.otpVerified = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    

    
}
