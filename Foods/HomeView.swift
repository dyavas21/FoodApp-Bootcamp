//
//  HomeView.swift
//  Foods
//
//  Created by Gede Dyava Savitra on 20/08/22.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood: String = ""
    @State private var showDetailPage = false
    
    var body: some View {
        return Group{
            if showDetailPage{
                DetailsView()
            }else {
                VStack(alignment: .leading, spacing: 0.0){
                    HStack{
                        Image("userPhoto")
                        Spacer()
                        VStack(alignment: .trailing){
                            Text("Howdy")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("lightGrey"))
                            Text("Luna Polar")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("darkBlue"))
                        }
                    }
                    VStack(alignment: .center){
                        Text("What do you want\nfor lunch?")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("darkBlue"))
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 66,  maxHeight: 66)
                    .padding(.top, 30.0)
                    .padding(.bottom, 24)
                    HStack{
                        TextField("Search pizza, burger, etc ...",
                        text: $searchFood)
                            .disableAutocorrection(true)
                            .padding(.leading,24)
                    }
                    .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 50,  maxHeight: 50)
                    .background(Color("darkWhite"))
                    .cornerRadius(50.0)
                  
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Categories")
                            .padding(.bottom, 12)
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("darkBlue"))
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack{
                                HStack{
                                    Image("cateBread")
                                        .padding(.vertical, 5)
                                        .padding(.leading, 5)
                                    Text("Bread")
                                        .padding(.vertical, 13)
                                        .padding(.trailing, 18)
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("darkBlue"))
                                }
                                .background(Color("darkWhite"))
                                .cornerRadius(50.0)
                                HStack{
                                    Image("cateCarrot")
                                        .padding(.vertical, 5)
                                        .padding(.leading, 5)
                                    Text("Carrot")
                                        .padding(.vertical, 13)
                                        .padding(.trailing, 18)
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("darkBlue"))
                                }
                                .background(Color("darkWhite"))
                                .cornerRadius(50.0)
                                HStack{
                                    Image("cateDonut")
                                        .padding(.vertical, 5)
                                        .padding(.leading, 5)
                                    Text("Donut")
                                        .padding(.vertical, 13)
                                        .padding(.trailing, 18)
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("darkBlue"))
                                }
                                .background(Color("darkWhite"))
                                .cornerRadius(50.0)
                            }
                        })
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("Most Ordered")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("darkBlue"))
                                .padding(.bottom, 12)
                            ScrollView(.vertical, showsIndicators: false, content: {
                                VStack{
                                    HStack{
                                        Image("foodOrange")
                                        VStack(alignment: .leading, spacing: 0.0){
                                            Text("Orange Asem")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Text("Healthy")
                                                .font(.custom("Poppins-Regular", size: 14))
                                                .foregroundColor(Color("lightGrey"))
                                        }
                                        .padding(.leading, 2)
                                        Spacer()
                                        HStack{
                                            Text("4.5")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Image("iconStar")
                                        }
                                    }
                                    .padding(.bottom, 18)
                                    HStack{
                                        Image("foodGyoza")
                                        VStack(alignment: .leading, spacing: 0.0){
                                            Text("Gyoza Sapi")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Text("Meal")
                                                .font(.custom("Poppins-Regular", size: 14))
                                                .foregroundColor(Color("lightGrey"))
                                        }
                                        .padding(.leading, 2)
                                        Spacer()
                                        HStack{
                                            Text("4.8")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Image("iconStar")
                                        }
                                    }
                                    .padding(.bottom, 18)
                                    .onTapGesture {
                                        self.showDetailPage = true
                                    }
                                    HStack{
                                        Image("foodAvocado")
                                        VStack(alignment: .leading, spacing: 0.0){
                                            Text("Avocado Salad")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Text("Healthy")
                                                .font(.custom("Poppins-Regular", size: 14))
                                                .foregroundColor(Color("lightGrey"))
                                        }
                                        .padding(.leading, 2)
                                        Spacer()
                                        HStack{
                                            Text("4.3")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Image("iconStar")
                                        }
                                    }
                                    .padding(.bottom, 18)
                                    HStack{
                                        Image("foodOrange")
                                        VStack(alignment: .leading, spacing: 0.0){
                                            Text("Orange Asem")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Text("Healthy")
                                                .font(.custom("Poppins-Regular", size: 14))
                                                .foregroundColor(Color("lightGrey"))
                                        }
                                        .padding(.leading, 2)
                                        Spacer()
                                        HStack{
                                            Text("4.5")
                                                .font(.custom("Poppins-Medium", size: 16))
                                                .foregroundColor(Color("darkBlue"))
                                            Image("iconStar")
                                        }
                                    }
                                    .padding(.bottom, 18)
                                }
                            })
                        }
                        .padding(.top, 30)
                        
                    }
                    .padding(.top, 30.0)
                }
                .padding(.horizontal, 24)
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
