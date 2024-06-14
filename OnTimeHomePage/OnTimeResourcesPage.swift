//
//  OnTimeResourcesPage.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI
struct OnTimeResourcesPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 254/255, green: 250/255, blue: 224/255)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Resources")
                    
                        .multilineTextAlignment(.center)
                        .font(.custom("Charter", fixedSize: 50))
                        .padding()
                    Button(action: {
                        if let url = URL(string: "https://www.youtube.com/@Thomasfrank") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Study Tips and Tricks")
                            .font(.custom("Charter", size: 30))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.867, green: 0.629, blue: 0.371))
                            .cornerRadius(15)
                        
                    }
                    
                    Button(action: {
                        if let url = URL(string: "https://www.youtube.com/@heimlershistory") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Mr.Heimler Videos")
                            .font(.custom("Charter", size: 30))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.74, green: 0.42, blue: 0.15))
                            .cornerRadius(15)
                        
                        
                        
                    }
                    .padding(7.0)
                    Button(action: {
                        if let url = URL(string: "https://www.khanacademy.org") {
                            UIApplication.shared.open(url)
                        }
                      
                    }) {
                        Text("Khan Academy")
                            .font(.custom("Charter", size: 30))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.867, green: 0.629, blue: 0.371))
                            .cornerRadius(15)
                        
                    }
                    
                    
                    Button(action: {
                        if let url = URL(string: "https://www.youtube.com/@MrSinn") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Mr.Sinn Videos")
                            .font(.custom("Charter", size: 30))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.65, green: 0.39, blue: 0.21))
                            .cornerRadius(15)
                            
                    }
                  
                    Button(action: {
                        if let url = URL(string: "https://quizlet.com/gb") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Quizlet")
                            .font(.custom("Charter", size: 30))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.867, green: 0.629, blue: 0.371))
                            .cornerRadius(15)
                        
                    }
                    Button(action: {
                        if let url = URL(string: "https://www.simplestudies.org/") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("More Studying Materials")
                            .font(.custom("Charter", size: 35))
                            .padding()
                            .foregroundColor(.white)
                            .background(Color(red: 0.74, green: 0.42, blue: 0.15))
                            .cornerRadius(15)
                            
                    }
                    NavigationLink(destination: ContentView()){
                        Text("Go Back To Home")
                            .font(.custom("Charter", size:20))
                            .foregroundColor(Color(hue: 0.437, saturation: 0.314, brightness: 0.38))
                           
                          
                    }
                    
                    .padding()
                }
            }
        }
    }
}

#Preview {
    OnTimeResourcesPage()
}
