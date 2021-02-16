//
//  FirstView.swift
//  SwiftUISample
//
//  Created by Yusuke Ohashi on 2021/02/10.
//

import AltSwiftUI

struct FirstView: View {
    var viewStore = ViewValues()
    @AltSwiftUI.State private var isPushed = false

    var body: View {
        VStack(alignment: .center) {
//            Image("Image")
//                .resizable()
//                .scaledToFit()
//                .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width)
//
            if isPushed {
                Text("AltSwiftUI TextView🎉")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.bottom, 20)
            }

            Button(action: {
                isPushed.toggle()
            }, label: {
                Text("Button")
            })
            .accentColor(.orange)
            .border(.orange, width: 2)
            .font(.system(size: 14, weight: .bold))
            .frame(width: UIScreen.main.bounds.width - 24, height: 44)
            .cornerRadius(10)
        }
        .offset(x: 0, y: -150)
    }
}
