//
//  User.swift
//  Deanery
//
//  Created by Владислав Пономаренко on 08.02.2024.
//

import Foundation

struct User: Codable, Identifiable {
    var id: String // Имя пользователя как идентификатор
    var passwordHash: String // Хешированный пароль
    var role: UserRole // Роль пользователя
}
