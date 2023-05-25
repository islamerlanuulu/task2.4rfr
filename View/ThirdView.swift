//
//  ThirdView.swift
//  task2.4
//
//  Created by Islam Erlan Uulu on 24/5/23.
//


import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            DeliveryLocation()
            Spacer()
            MenuDetail1()
            Spacer()
            TabBar1()
        }
        .navigationTitle("ThirdView")
    }
}
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

struct MenuDetail1: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Paul")
                    .font(.system(size: 16))
                    .bold()
                Text("Fresh Pasta")
                    .font(.system(size: 10))
                    .foregroundColor(Color.gray)
                HStack {
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Spacer()
                }
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 9.54)
                        .foregroundColor(.black)
                    Text("4.5")
                        .font(.system(size: 12))
                        .bold()
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.gray)
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("25 min")
                        .font(.system(size: 12))
                        .bold()
                }
            }
            .padding(.all)
            
            Spacer()
            
            VStack {
                Image("Paul")
                    .resizable()
                    .frame(width: 135, height: 135)
            }
        }
        .background(Color.white)
        .frame(width: 330, height: 130)
        .cornerRadius(30)
        .shadow(radius: 3)
        Spacer()
    }
}

struct TabBar1: View {
    @State private var selection = 1

       init() {
           UITabBar.appearance().barTintColor = UIColor.black
  
       }
    
    var body: some View {
        
        VStack (spacing: 50) {
            TabView {
                Text("")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Wallet")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "message")
                        
                        Text("Comment")
                    }
                
                Text("")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            
        }
        .frame(width: 335, height: 55)
        .background(Color.black)
        .foregroundColor(.black)
        .cornerRadius(20)
        Spacer()
        .padding(.vertical)
    }
      
}

struct DeliveryLocation: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Choose delivery location")
                .padding(.top)
                .padding(.leading)
                .foregroundColor(.black)
                .font(.system(size: 19))
                Spacer()
            
            VStack() {
            HStack {
                Image("gps")
                    .padding(.top, 31)
                    .padding(.leading, 30)
                Button(action: {
                    //
                }) {
                    Text("Deliver to current location")
                        .foregroundColor(.black)
                        
                        .padding(.top, 25)
                     
                        .font(.system(size: 16))
                       
                    
                }
                .padding(0)
            }
        }
            Rectangle()
                .frame(width: 351, height: 1)
                .foregroundColor(.gray)
                .padding(.all)
            
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image("gps2")
                        .padding(.top, 31)
                        .padding(.leading, 30)
                    Button(action: {
                        //
                    }) {
                        Text("Deliver to different location")
                            .foregroundColor(.black)
                            
                            .padding(.top, 25)
                         
                            .font(.system(size: 16))
                           
                    }
                    .padding(0)
                }
                Spacer()
                Rectangle()
                    .frame(width: 351, height: 1)
                    .foregroundColor(.gray)
                    .padding(.all)
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Saved addresses")
                    .padding(.leading)
                    .foregroundColor(.black)
                    .font(.system(size: 18))
                    
                Spacer()
                HStack {
                    Image(systemName: "house")
                        .frame(width: 15, height: 15)
                        .padding(.leading, 30)
                    Button(action: {
                        //
                    }) {
                        Text("Home")
                            .foregroundColor(.black)
                            .font(.system(size: 16))
                            .bold()
                    }
                    Spacer()
                        VStack  (alignment: .leading, spacing: 4){
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                        }
                    }
                    Rectangle()
                        .frame(width: 351, height: 1)
                        .foregroundColor(.gray)
                }
            
            HStack {
                Image("work")
                    .frame(width: 15, height: 15)
                    .padding(.leading, 30)
                Button(action: {
                    //
                }) {
                    Text("Work")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .bold()
                }
                Spacer()
                VStack {
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                }
            }
            Rectangle()
                .frame(width: 351, height: 1)
                .foregroundColor(.gray)
            
            HStack {
                Image("pes")
                    .frame(width: 15, height: 15)
                    .padding(.leading, 30)
                Button(action: {
                    //
                }) {
                    Text("Hotel")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .bold()
                }
                Spacer()
                VStack {
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                }
            }
            
            Rectangle()
                .frame(width: 351, height: 1)
                .foregroundColor(.gray)
        }
    }
}
