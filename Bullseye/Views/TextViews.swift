//
//  TextViews.swift
//  Bullseye
//
//  Created by Temur Chitashvili on 15.01.24.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
    }
}
struct BigNumberText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .font(.system(size: 36))
            .fontWeight(.black)
            .frame(width: 53.0, height: 43.0)
            .kerning(-1.0)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .font(.system(size: 18))
            .foregroundColor(Color("TextColor"))
    }
}
struct LabelText: View {
    var text: String
    var body: some View{
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
            .font(.system(size: 18))
            .foregroundColor(Color("TextColor"))
    }
}

struct BodyText: View {
   var text: String
    
    var body: some View{
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .frame(width: 166,height: 67)
            .lineSpacing(12)
    }
}

struct ButtonText: View {
   var text: String
    
    var body: some View{
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
               Color.accentColor)
            .cornerRadius(12)
            .foregroundColor(.white)
            .font(.title3)
        
    }
}

struct ScoreText: View {
   var score: Int
    
    var body: some View{
        Text(String(score))
            .kerning(-0.2)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText: View{
    let  text: String
    
    var body: some View{
        Text(text.uppercased())
            .fontWeight(.black)
            .kerning(2)
            .font(.title)
            .foregroundColor(Color("TextColor"))
    }
}

struct DateText: View {
   var date: Date
    
    var body: some View{
        Text(date, style: .time)
            .kerning(-0.2)
            .font(.title3)
            .bold()
            .foregroundColor(Color("TextColor"))
            
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View{
        VStack{
            InstructionText(text: "Instructions")
            BigNumberText(text:"99")
            LabelText(text:"Score")
            BodyText(text: "You scored 200 points \n ☺️")
            ButtonText(text: "Start New Round")
            ScoreText(score: 345)
            DateText(date: Date())
            BigBoldText(text: "leaderboard")
           
        }
        .padding()
    }
}
