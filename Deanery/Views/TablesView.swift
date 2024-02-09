//
//  TablesView.swift
//  Deanery
//
//  Created by Владислав Пономаренко on 09.02.2024.
//

import SwiftUI

struct TablesView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: MarksView()) {
                    Text("Marks")
                }
                NavigationLink(destination: SubjectsView()) {
                    Text("Subjects")
                }
                NavigationLink(destination: PeopleView()) {
                    Text("People")
                }
                NavigationLink(destination: GroupsView()) {
                    Text("Groups")
                }
            }
            .navigationBarTitle("Tables", displayMode: .inline)
        }
    }
}

// Примеры представлений для каждой таблицы
struct MarksView: View { var body: some View { Text("Marks Table") } }
struct SubjectsView: View { var body: some View { Text("Subjects Table") } }
struct PeopleView: View { var body: some View { Text("People Table") } }
struct GroupsView: View { var body: some View { Text("Groups Table") } }
