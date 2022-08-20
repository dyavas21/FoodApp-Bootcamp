//
//  GetStartedView2.swift
//  Foods
//
//  Created by Gede Dyava Savitra on 19/08/22.
//

import SwiftUI

struct GetStartedView2: View {
    var body: some View {
        VStack{
            Text("Order Your\nFavorite Foods")
                .font(.custom("Poppins-Bold",size: 26))
                .foregroundColor(Color("darkBlue"))
                .multilineTextAlignment(.center)
                .padding(.bottom, 10.0)
            Text("Sign up to get your foods faster\nand better than before")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("lightGrey"))
                .multilineTextAlignment(.center)
                .padding(.bottom, 50.0)
            Image("Group")
                .padding(.bottom,50)
                
            Button(action: {
                print("Keren")
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 327, height: 50)
                        .foregroundColor(Color("orange"))
                    Text("Create New Account")
                        .foregroundColor(Color("black"))
                        .font(.custom("Poppins-SemiBold", size: 16))
                }
            })
                .padding(.bottom,10)
            Button(action: {
                print("Wow")
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 327, height: 50)
                        .foregroundColor(Color("white"))
                    Text("Sign In")
                        .font(.custom("Poppins-Medium", size: 16))
                        .foregroundColor(Color("black"))
                }
            })
        }
    }
}

struct GetStartedView2_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView2()
    }
}
