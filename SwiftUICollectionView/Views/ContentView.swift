//
//  ContentView.swift
//  SwiftUICollectionView
//
//  Created by Rajesh Rajesh on 22/04/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<cell.row){ i in
                HStack(alignment: .center, spacing: cell.spacing){
                    ForEach(0..<cell.column){ j in
                        
                        CollectionViewCell(row: i, column: j)
                    }
                    
                }.padding(.bottom, 10)
            }
        }.navigationBarTitle("CollectionView")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
