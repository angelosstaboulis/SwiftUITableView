//
//  ContentView.swift
//  SwiftUITableView
//
//  Created by Angelos Staboulis on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State var list : [Int] = []
    @State var selectedItem:Int
    var body: some View {
        List($list,id:\.self){item in
                Text(String(describing:item.wrappedValue)).onTapGesture {
                    selectedItem = item.wrappedValue
                }.listRowBackground(selectedItem == item.wrappedValue ? Color.gray : Color.white)
        }.onAppear {
            for _ in 0..<20{
                list.append(Int.random(in: 0..<1000))
            }
        }.toolbar {
            ToolbarItem(placement:.bottomBar) {
                Button {
                    self.list.removeAll()
                } label: {
                    Text("Clear Array")
                }

            }
            ToolbarItem(placement:.bottomBar) {
                Button {
                   fillShowArray()
                } label: {
                    Text("Fill-Show-Array")
                }.padding(40.0)

            }
            ToolbarItem(placement:.bottomBar) {
                Button {
                    list.sort()
                } label: {
                    Text("Sort Array")
                }.padding(40.0)

            }
        }
        DetailsView(selectedNumber: $selectedItem)
    }
    
    func fillShowArray(){
        if list.count > 0 {
            list.removeAll()
            for _ in 0..<20{
                list.append(Int.random(in: 0..<1000))
            }
        }else{
            for _ in 0..<20{
                list.append(Int.random(in: 0..<1000))
            }
        }
    }
        
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedItem: 0)
    }
}
