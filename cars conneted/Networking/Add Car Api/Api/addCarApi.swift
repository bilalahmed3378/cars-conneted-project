//
//  addCarApi.swift
//  cars conneted
//
//  Created by Sohaib Sajjad on 11/01/2023.
//

import Foundation


class AddCarApi : ObservableObject{
        //MARK: - Published Variables
    @Published var isLoading = false
    @Published var isApiCallDone = false
    @Published var isApiCallSuccessful = false
    @Published var carAddedSuccessfully = false
    @Published var apiResponse :  addCarResponseModel?


    
        //MARK: - Get Customer Orders History
    func addCar(brand : String, model: String, year: Int, description: String){
        
        self.isLoading = true
        self.isApiCallSuccessful = true
        self.carAddedSuccessfully = false
        self.isApiCallDone = false
        
            //Create url
        guard let url = URL(string: NetworkConfig.baseUrl + NetworkConfig.addCar ) else {return}
        

        let data : Data = "brand=\(brand)&model=\(model)&year=\(year)&description=\(description)".data(using: .utf8)!

        
        let token = AppData().getBearerToken()

    
            //Create request
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue( token, forHTTPHeaderField: "token")
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
                print("Got add car response succesfully.....")
                DispatchQueue.main.async {
                    self.isApiCallDone = true
                }
                let main = try JSONDecoder().decode(addCarResponseModel.self, from: data)
                
                DispatchQueue.main.async {
                    self.apiResponse = main
                    self.isApiCallSuccessful  = true
                    
                    if(main.code == 200 && main.successful == true){
                        
                        self.carAddedSuccessfully = true
                    }
                    
                    else{
                        self.carAddedSuccessfully = false
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
                    self.carAddedSuccessfully = false
                    self.isLoading = false
                }
            }
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            print(responseJSON)
        }
        
        task.resume()
    }
    
 
    
}
