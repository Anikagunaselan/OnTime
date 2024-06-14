//
//  OnTimeHomePage.swift
//  OnTimeHomePage
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct OnTimeHomePage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 254/255, green: 250/255, blue: 224/255)
                    .ignoresSafeArea()
               
                VStack {
                    
                    
                    Text("Where would you like to begin?")
                    
                        .multilineTextAlignment(.center)
                        .font(.custom("Charter", fixedSize: 35))
                        .padding(.vertical)
                        
                    Spacer()
                    
                    
                }
                
                VStack{
                    HStack{
//                        Button {
//                            
//                        } label:{
//                            Spacer()
//                            Image("TimerIcon")
//                                .resizable()
//                                .aspectRatio(contentMode:.fit)
//                                .frame(width:220, height:220)
//                        }
                        NavigationLink(destination: UpdatedTimerOnTime()){
                            
                            Spacer()
                            Image("TimerIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 220, height: 220)
                        }
                        
//                        Button {
//                            
//                        }label:{
//                            Spacer()
//                            Image("ScheduleIcon")
//                                .resizable()
//                                .aspectRatio(contentMode:.fit)
//                                .frame(width:222, height:224)
//                             Spacer()
//                        }
                        
                        NavigationLink(destination: ScheduleContentViewOT()){
                            
                            Spacer()
                            Image("ScheduleIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 222, height: 224)
                        }
                        
                        Spacer()
                    }
                    
                    
//
//                    HStack{
//                        Button {
//
//                        } label:{
//                            Image("NotesIcon")
//                                .resizable()
//                                .frame(width: 162, height: 162, alignment:.leading)
//
//                        }
//                        Button {
//                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                        } label:{
//                            Spacer()
//                            Image("CommunityPost")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 170, height: 170)
//                        }
//                    }
//
                    
                    
                    
                    HStack{
                        Spacer()
//                        Button {
//                            
//                        } label:{
//                            Spacer()
//                            Image("CalendarIcon")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 210, height: 210)
//                               
//                            
//                        }
                        NavigationLink(destination: OTContentView()){
                            
                            Spacer()
                            Image("CalendarIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 210, height: 210)
                        }
                        // Button {
                        NavigationLink(destination: OnTimeResourcesPage()){
                            
                            Spacer()
                            Image("ResourcesIcon")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 230, height: 230)
                        }
                        //}
                        Spacer()
                        
                    }
                    
                    
                    
                }
                
                
            }
        }
    }
}
    


#Preview {
    ContentView()
}
