//
//  SettingView.swift
//  Youtube
//
//  Created by m.luthfi rizky ginting on 01/02/21.
//

import SwiftUI

struct SettingView: View {
    var body:some View {
        NavigationView{
            Form{
                //tempat poto profile
                Section(){
                    HStack{
                        Image("me 2")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        VStack(alignment :.leading){
                            Text("Luthfi rizky")
                                .font(.headline)
                            Text("Product designer")
                                .font(.caption)
                        }
                    }
                }
                //Pengaturan umum
                Section(header: Text("Pengaturan umum")){
                    HStack{
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Video favorit")
                    }
                    HStack{
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Channel")
                    }
                    
                }
                
                
                //Pengaturan Akun
                Section(header: Text("Pengaturan akun")){
                    HStack{
                        Image(systemName: "heart")
                            .frame(width: 35, height: 35)
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Video yang disukai")
                    }
                    HStack{
                        Image(systemName: "lock.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Keamanan")
                    }
                    
                }
            }.navigationBarTitle("Setting")
        }
        
    }
    
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
