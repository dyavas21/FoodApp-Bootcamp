//
//  DetailsView.swift
//  Foods
//
//  Created by Gede Dyava Savitra on 20/08/22.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0){
            Image("gyozaPhoto")
                .padding(.bottom, 20)
            HStack(spacing: 0.0){
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Gyoza Sapi")
                        .font(.custom("Poppins-Bold", size: 22))
                        .foregroundColor(Color("darkBlue"))
                        .padding(.bottom, 6)
                    Text("Meal")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("lightGrey"))
                }
                Spacer()
                Text("4.8")
                    .font(.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("darkBlue"))
                    .padding(.trailing, 4)
                Image("iconStar")
            }
            .padding(.bottom, 16)
            Text("Makanan asal Bandung dengan tekstur\nyang lembut sehingga ketika dimakan\nrasanya tidak sakit tenggorokan.")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("darkBlue"))
                .padding(.bottom, 20)
                .lineSpacing(5.0)
            Text("Bundle")
                .font(.custom("Poppins-SemiBold", size: 16))
                .foregroundColor(Color("darkBlue"))
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 0.0){
                    Image("bundleOne")
                        .padding(.trailing, 16)
                    Image("bundleTwo")
                        .padding(.trailing, 16)
                    Image("bundleThree")
                        .padding(.trailing, 16)
                    Image("bundleOne")
                        .padding(.trailing, 16)
                }
                .padding(.top, 12)
            })
                .padding(.bottom, 32)
            HStack(spacing: 0.0){
                VStack(alignment: .leading,  spacing: 0.0){
                    Text("$808.00")
                        .font(.custom("Poppins-SemiBold", size: 22))
                        .foregroundColor(Color("darkBlue"))
                        .padding(.bottom, 6)
                    Text("/porsi")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("lightGrey"))
                }
                .padding(.trailing, 39)
                Button(action: {
                    print(Text("berhasil"))
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(height: 50)
                            .foregroundColor(Color("orange"))
                        Text("Order Now")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("white"))
                        
                    }
                })
            }
        }
        .padding(.horizontal, 24)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
