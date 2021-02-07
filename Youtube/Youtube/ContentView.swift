//
//  ContentView.swift
//  Youtube
//
//  Created by m.luthfi rizky ginting on 28/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
 
                    }
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
 
                    }
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("subcription")
 
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
 
struct Home: View {
    var body: some View {
        NavigationView{
            Kontent()
                .navigationBarItems(
                    leading: HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube-logo-2020")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 90)
                        }
                    },
                    trailing:
                        HStack(spacing:20){
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "tray")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                    NavigationLink( destination: SettingView()){
                                Image("me 2")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .clipShape(Circle())
                                    }
                                }
                        }
                )
                .navigationBarTitle("",displayMode:.inline)
 
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
 
struct Kontent: View{
    var body: some View{
        List{
            
            CellKontent(ImageKontent: "kokbisa_bola", ProfileKontent: "kok_bisa", Judul: "kok bisa cok", deskripsi: "kok bisa deskripsi", durasi: "10:12")
            
            CellKontent(ImageKontent: "kokbisa_kesehatan", ProfileKontent: "kok_bisa", Judul: "kok bisa cok", deskripsi: "kok bisa deskripsi", durasi: "10:12")
            
            CellKontent(ImageKontent: "kokbisa_kimia", ProfileKontent: "kok_bisa", Judul: "kok bisa cok", deskripsi: "kok bisa deskripsi", durasi: "10:12")
            
        }
    }
}
struct CellKontent: View{
    var ImageKontent: String
    var ProfileKontent: String
    var Judul: String
    var deskripsi: String
    var durasi: String
        
    var body: some View{
        
        VStack{
            
                        ZStack (alignment: .bottomTrailing){
                            Image(ImageKontent)
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            Text(durasi)
                                .padding()
                                .foregroundColor(Color.white)
                                .font(.caption)
                                .background(Color.black)
                                .cornerRadius(5)
                                .padding(.trailing, 5)
                                .padding(.bottom, 5)
                        }

            HStack{
                            Image(ProfileKontent)
                                .resizable()
                                .frame(width: 30, height:30)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack(alignment: .leading){
                                Text(Judul)
                                    .font(.headline)
                                HStack{
                                    Text(deskripsi)
                                        .font(.caption)
                                }
                            }
                Spacer()
                Image(systemName: "list.bullet")


       }

   }
    }
}
