////
////  FirebaseService.swift
////  Flash Chat iOS13
////
////  Created by James  Farrell on 09/03/2021.
////  Copyright © 2021 Angela Yu. All rights reserved.
////
//
//import Foundation
//import Firebase
//
////create default implementations
//protocol FirebaseServiceDelegate {
//    func didCreateUser() 
//    func didCreateDocument()
//    func didSignInUser()
//    func didRetrieveDocuments()
//    func signOutUser()
//    func didFailWithError(error: Error)
//}
//
//struct FirebaseService {
//    func createUser(email: String, password pwd: String) -> Bool {
//        Auth.auth().createUser(withEmail: email, password: pwd) { (authResult, err) in
//            if let e = err {
//                print(e.localizedDescription)
//            } else {
//                //self.performSegue(withIdentifier: K.registerSegue, sender: self)
//            }
//        }
//        return true
//    }
//    
//    func getCurrentUser(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//    
//    func createDocument(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//    
//    func signInUser(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//    
//    func singOutUser(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//    
//    func retrieveDocuments(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
//    
//}
