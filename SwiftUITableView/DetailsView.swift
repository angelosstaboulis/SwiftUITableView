//
//  DetailsView.swift
//  SwiftUITableView
//
//  Created by Angelos Staboulis on 12/6/23.
//

import SwiftUI

struct DetailsView: View {
    @Binding var selectedNumber:Int
    var body: some View {
        VStack{
            Text("Selected Number \(selectedNumber)")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(selectedNumber: .constant(0))
    }
}
