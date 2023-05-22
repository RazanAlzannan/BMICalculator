//
//  ContentView.swift
//  BMICalculator
//
//  Created by Razan Mohammed Alzannan on 01/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var hight = 0.0
    @State var whgit = 0.0
    @State var result = 0.0
    @State private var isEditing = false
    var body: some View {
        VStack {
            Text("Calculate you BMI !")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.trailing,40)
            Text("Enter your Hight and Whight:")
                .font(.title2)
                .foregroundColor(Color.gray)
                .padding(.trailing,45)
                .padding(.bottom,40)
            
            //Sliders
            Text("Hight")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding()
            Slider(
                value: $hight,
                in: 0...250,
                onEditingChanged: { editing in
                    isEditing = editing }
            )
            Text("\(hight)")
            Text("Whigt")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.blue)
                .padding()
            Slider(
                value: $whgit,
                in: 0...250,
                onEditingChanged: { editing in
                    isEditing = editing }
            )
            Text("\(whgit)")
            
            if(result > 20.0 && result < 30.0){
                
                Text("Your BMI is :\n\(result) Kg")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                .padding(.all, 30.0)} else {
                    Text("Your BMI is :\n\(result) Kg")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.red)
                        .padding(.all, 30.0)
                }
            
            Button(action: {
                self.result =  ((self.whgit) / (self.hight * self.hight)) * 10000.0
                 }
            ){
                Text("Calculate ")
                    .fontWeight(.semibold)
                    .font(.title2)
                    .padding(.vertical,10)
                    .padding(.horizontal, 050)
                    .overlay(
                RoundedRectangle(cornerRadius: 89)
                    .stroke(.gray, lineWidth: 1)
                    .frame( maxWidth: .infinity ,maxHeight: .infinity))
               }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
