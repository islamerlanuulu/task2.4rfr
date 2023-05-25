//
//  SecondView.swift
//  task2.4
//
//  Created by Islam Erlan Uulu on 24/5/23.
//

import SwiftUI

struct SecondView: View {
    @State var textFromSecondView: String = ""
    var body: some View {
        
        SearchBarView(textFromTF: $textFromSecondView)
     
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

