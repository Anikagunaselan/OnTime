//
//  ContentView.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/11/24.
//


//
// ContentView.swift
// LoginScreen
//
// Created by Federico on 13/11/2021.
//
import SwiftUI
struct ContentView: View {
  @State private var username = ""
  @State private var password = ""
  @State private var wrongUsername: Float = 0
  @State private var wrongPassword: Float = 0
  @State private var showingLoginScreen = false
    @State private var setLoginActive = false
  var body: some View {
    NavigationStack {
      ZStack {
        Color(red: 40/255, green: 54/255, blue: 24/255)
          .ignoresSafeArea()
        Circle()
          .scale(1.7)
          .foregroundColor(Color(hue: 0.437, saturation: 0.314, brightness: 0.38))
        Circle()
          .scale(1.35)
          .foregroundColor(Color(red: 254/255, green: 250/255, blue: 224/255)
)
        VStack {
          Text("Welcome to OnTime!")
            .font(.custom ("Charter", fixedSize: 30))
          Text("Login")
            .font(.largeTitle)
            .bold()
            .padding()
          TextField("Username", text: $username)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .border(.red, width: CGFloat(wrongUsername))
          SecureField("Password", text: $password)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.black.opacity(0.05))
            .cornerRadius(10)
            .border(.red, width: CGFloat(wrongPassword))
          
            // this is gonna be to navigate to calendar
            /*
            NavigationLink(destination: OTContentView()) {
                Text("Login")
            }
             */
          
            Button("Authenticate") {
            authenticateUser(username: username, password: password)
                setLoginActive = true
            }
          .foregroundColor(.black)
//          .frame(width: 300, height: 50)
//          .background(Color.black)
//          .cornerRadius(10)
          
            
            if setLoginActive{
                NavigationLink(destination: OnTimeHomePage()/*, isActive: $showingLoginScreen*/) {
                    Text("Login!")
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.black)
                .cornerRadius(10)
            }
        }
      }.navigationBarHidden(true)
    }
  }
  func authenticateUser(username: String, password: String) {
    if username.lowercased() == "mario2021" {
      wrongUsername = 0
      if password.lowercased() == "abc123" {
        wrongPassword = 0
        showingLoginScreen = true
      } else {
        wrongPassword = 2
      }
    } else {
      wrongUsername = 2
    }
  }
}
struct contentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
