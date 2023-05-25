//
//  ContentView.swift
//  task2.4
//
//  Created by Islam Erlan Uulu on 24/5/23.
//

import SwiftUI
struct ContentView: View {
    @State var selectIndex: Int = 0
    @State var textFromTF: String = ""
    var iconArray: [Image] = [Image(systemName: "line.horizontal.3.decrease"),
                            Image("milk"),
                              Image("bell"),
                              Image("car"),
                              Image("sale")]
    var iconTitle: [String] = ["Delivery", "Take Away Food", "Bell Service", "Delivery", "Price"]
    
    var body: some View {
        ZStack  {
            Color.white
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                
                VStack() {
                    NavBarView()
                    
                    HStack {
                        ForEach(0..<5) { index in
                            HorizontalSliderView(image: iconArray[index],
                                                 title: iconTitle[index], isSelect: selectIndex == index)
                            .padding()

                            .background(Color.white)
                            .shadow(radius: 10)
                                .cornerRadius(10)
                            .onTapGesture {
                                selectIndex = index
                            }
                            
                            
                        }
                        
                    }
                    Spacer()
                    Text("56 stores open")
                        .padding(.leading, -185)
                    Spacer()
                    SearchBarView(textFromTF: $textFromTF)
                        .padding(.leading)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(0..<3) { result in
                                MenuSelectView()
                            .padding(5)
                            }
                            
                        }
                    }
//                    .padding(5)
    
                    MenuDetail()
    
                    TabBar()
                
                   
                }
                
            }
           
            
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
struct NavBarView: View {
    @State private var showNextScreen = false
    var body: some View {
        HStack (alignment: .center) {
            Button {
                //
            } label: {
                VStack {
                    Image(systemName: "line.horizontal.3.decrease")
                        .resizable()
                        .frame(width: 20, height: 17)
                        .foregroundColor(.black)
                
                }
            }
            .padding(.trailing, 100)
            Spacer()
            Button {
                self.showNextScreen = true
            } label: {
                VStack {
                    Text("Delivering to")
                        .foregroundColor(.gray)
                    HStack {
                        NavigationLink(destination: ThirdView()) {
                            Text ("ManasAve")
                                .foregroundColor(.black)
                            Image("down")
                                
                        }
                    }
                        .sheet(isPresented: $showNextScreen) {
                            ThirdView()
                                .foregroundColor(.black)
                        }
                    .padding(.horizontal)
                    .padding(.vertical, -7)
                    }
                    Spacer()
                    Button {
                        //
                    } label: {
                        VStack {
                            Image("teleshka")
                                .resizable()
                                .frame(width: 20, height: 15)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.all)
                    .background(Color.black)
                    .cornerRadius(20)
                    .shadow(radius: 3)
                    .frame(width: 50, height: 47)
                    
                }
            }
        }
    }

        struct SearchBarView: View {
            @Binding var textFromTF: String
            
            var body: some View {
                HStack {
                    Spacer()
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Find restaurant by name", text: $textFromTF)
                    }
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 3)
                    Spacer()
                    
                    
                    Button {
                        //
                    } label: {
                        VStack {
                            Image("deteil")
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal)
                  
                    }
                    
                }
            }
        }
        
        struct MenuSelectView: View {
            var body: some View {
                VStack {
                    Image("TonyRomas")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Tony Roma's")
                        .font(.system(size: 16))
                        .bold()
                    Text("Ribs&Steaks")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
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
                        Text("35 min")
                            .font(.system(size: 12))
                            .bold()
                    }
                }
                
                
                .background(Color.white)
                .frame(width: 150, height: 230)
                .cornerRadius(20)
                .shadow(radius: 3)
               
                VStack {
                    Image("Momos")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Momos")
                        .font(.system(size: 16))
                        .bold()
                    Text("Japanese")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
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
                        Text("35 min")
                            .font(.system(size: 12))
                            .bold()
                    }
                }
                
                
                .background(Color.white)
                .frame(width: 150, height: 230)
                .cornerRadius(20)
                .shadow(radius: 3)
                
                
                VStack {
                    Image("besh")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .cornerRadius(60)
                    Text("Besh-Barmak")
                        .font(.system(size: 16))
                        .bold()
                    Text("Meat")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    Text("Delivery: FREE")
                        .font(.system(size: 10))
                        .foregroundColor(Color.gray)
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 10, height: 9.54)
                            .foregroundColor(.black)
                        Text("6.5")
                            .font(.system(size: 12))
                            .bold()
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.gray)
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("50 min")
                            .font(.system(size: 12))
                            .bold()
                    }
                }
                
                
                .background(Color.white)
                .frame(width: 150, height: 230)
                .cornerRadius(20)
                .shadow(radius: 3)
                Spacer()
            }
        }
        
struct MenuDetail: View {
    var body: some View {
        HStack {
            Spacer()
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
                    .padding(.vertical, 50)
            }
        }
        .background(Color.white)
        .frame(width: 360, height: 130)
        .cornerRadius(30)
        .shadow(radius: 3)
        Spacer()
    }

}

struct TabBar: View {
    @State private var selection = 1

       init() {
           UITabBar.appearance().barTintColor = UIColor.black
  
       }
    var body: some View {
        
        VStack {
            Spacer()
            TabView {
                Text("")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                     
                    }
                    .padding()
                Text("")
                    .tabItem {
                        Image("wallet")
                        Text("Wallet")
                    }
                    .padding()
                
                Text("")
                    .tabItem {
                        Image("chat")
                        Text("Comment")
                    
                    }
                    .padding()
                
                Text("")
                    .tabItem {
                        Image("person")
                        Text("Profile")
                    }
            }
        }
   
        .frame(width: 335, height: 55)
        .background(Color.black)
        .foregroundColor(.black)
        .cornerRadius(20)
        .padding(.top, 100)
           
    }
    
}

struct HorizontalSliderView: View {
    var image: Image
    var title: String
    var isSelect: Bool
    
    var body: some View {
        HStack {
            image
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isSelect ? .white : .black)
            
            if isSelect {
                Text(title)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
        }
        .frame(width: isSelect ? 100 : 30, height: 40)
        .background(isSelect ? Color.gray : Color.clear)
        .foregroundColor(isSelect ? Color.white : Color.black)
        .cornerRadius(10)

        
        
    }
  }


