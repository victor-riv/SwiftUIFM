//
//  ContentView.swift
//  SwiftUIFM
//
//  Created by Victor Rivera on 7/31/20.
//  Copyright © 2020 Victor Rivera. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  var actions: [Action] = [
    Action(title: "Customer"),
    Action(title: "Reader")
  ]

  var body: some View {
    VStack {
      ZStack {
        VStack {
          Text("Total")
            .font(.custom("Lato-Regular", size: 20))
            .foregroundColor(.white)
          Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(Color("fmOrange"))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .padding(30)
      }

      VStack(spacing: 20) {
        PaymentOptionCard(icon: "creditcard", title: "Pay")
        PaymentOptionCard(icon: "creditcard", title: "Enter Payment Method")
        PaymentOptionCard(icon: "creditcard", title: "Existing Payment Method")
        PaymentOptionCard(icon: "creditcard", title: "Save As Invoice")
        PaymentOptionCard(icon: "creditcard", title: "Cash")
        PaymentOptionCard(icon: "creditcard", title: "Gift Card")
      }
      Spacer()
    }
  }
}


struct Action: Identifiable {
  var id = UUID()
  var title: String
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct PaymentOptionCard: View {
  var icon: String = ""
  var title: String = ""

  var body: some View {
    HStack {
      Image(systemName: icon)
        .foregroundColor(.white)
        .frame(width: 32, height: 32)

      Text(title)
        .foregroundColor(.white)
      Spacer()
      Image(systemName: "chevron.right")
        .foregroundColor(.white)
        .frame(width: 32, height: 32)
    }
    .padding()
    .frame(maxWidth: .infinity)
    .background(Color("fmSkyBlue"))
    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    .padding(.horizontal, 30)
  }
}
