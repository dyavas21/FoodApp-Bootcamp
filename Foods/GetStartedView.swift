//
//  GetStartedView.swift
//  Foods
//
//  Created by Gede Dyava Savitra on 19/08/22.
//

import SwiftUI

struct GetStartedView: View {
    
    @State private var showHomePage = false
    
    var body: some View {
        
        return Group {
            if showHomePage {
                HomeView()
            }else {
                VStack(spacing: 0.0){
                    Image("onboardingIllustration")
                        .padding(.bottom, 50.0)
                    HStack{
                        VStack(alignment: .leading){
                            Text("180K Store").font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("lightGrey"))
                                .padding(.bottom, 4.0)
                            Text("Order Your\nFavorite Foods").font(.custom("Poppins-Bold", size: 36))
                                .foregroundColor(Color("darkBlue"))
                                .padding(.bottom, 30.0)
                            Button(action: {
                                self.showHomePage = true
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 327, height: 50)
                                        .foregroundColor(Color("orange"))
                                    Text("Explore Now").font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("white"))
                                }
                            })
                        }
                    }
                }
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
