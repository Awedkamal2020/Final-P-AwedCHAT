//
//  TitleRow.swift
//  AwedCHAT
//
//  Created by Awet Hussen on 11/29/22.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1539701938214-0d9736e1c16b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80")
    var name = "Awed key"
   
    var body: some View {
        HStack (spacing:20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: . leading) {
                Text(name)
                    .font(.title).bold()
                Text("online")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundColor(.blue)
                .padding(10)
                .background(.indigo)
                .cornerRadius(50)
            
            }
            .padding()
        }
    }


struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color(.brown))
    }
}
