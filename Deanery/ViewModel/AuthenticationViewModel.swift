//
//  AuthenticationViewModel.swift
//  Deanery
//
//  Created by Владислав Пономаренко on 09.02.2024.
//

import Foundation
import Foundation
import CryptoKit

class AuthenticationViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isAuthenticated: Bool = false

    func authenticateUser() {
        let passwordHash = self.hashPassword(password)
        
        if username == "admin" && passwordHash == hashPassword("admin_pass") {
            isAuthenticated = true
        } else if username == "student_manager" && passwordHash == hashPassword("student_manager_pass") {
            isAuthenticated = true
        } else {
            isAuthenticated = false
            // Здесь можно добавить логику для уведомления пользователя о неудачной попытке входа.
        }
    }

    private func hashPassword(_ password: String) -> String {
        let hashed = SHA256.hash(data: Data(password.utf8))
        return hashed.compactMap { String(format: "%02x", $0) }.joined()
    }
}
