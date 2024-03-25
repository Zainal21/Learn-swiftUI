//
//  ContentView.swift
//  learn-swiftui
//
//  Created by Muhamadzain on 19/03/24.
//

import SwiftUI

struct ContentView: View {
    
    //    initialize state
    @State private var username: String = ""
    @State private var password: String = ""
       
       
    
    var body: some View {
        VStack {
               Image(systemName: "person.circle.fill")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 100, height: 100)
                   .foregroundColor(.blue)
                   .padding(.bottom, 30)
               
               TextField("Username", text: $username)
                   .padding()
                   .background(Color(UIColor.lightGray))
                   .cornerRadius(5)
                   .padding(.bottom, 20)
               
               SecureField("Password", text: $password)
                   .padding()
                   .background(Color(UIColor.lightGray))
                   .cornerRadius(5)
                   .padding(.bottom, 20)
               
               Button(action: {
                   print("Username: \(username), Password: \(password)")
               }) {
                   Text("Login")
                       .foregroundColor(.white)
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.blue)
                       .cornerRadius(5)
               }
           }
           .padding()
           .navigationBarTitle("Login")
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
