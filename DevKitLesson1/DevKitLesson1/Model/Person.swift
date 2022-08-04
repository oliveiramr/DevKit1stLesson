//
//  Person.swift
//  DevKitLesson1
//
//  Created by Murilo Ribeiro de Oliveira on 03/08/22.
//

import Foundation

// MARK: - Person
struct Person: Codable {
    let name, address: String
    let latitude, longitude: Double
    let maidenName, birthDate, phoneH, phoneW: String
    let emailU, emailD, username, password: String
    let domain, useragent, ipv4, macaddress: String
    let plasticcard, cardexpir: String
    let bonus: Int
    let company, color, uuid: String
    let height: Int
    let weight: Double
    let blood, eye, hair, pict: String
    let url: String
    let sport, ipv4URL, emailURL, domainURL: String

    enum CodingKeys: String, CodingKey {
        case name, address, latitude, longitude
        case maidenName = "maiden_name"
        case birthDate = "birth_data"
        case phoneH = "phone_h"
        case phoneW = "phone_w"
        case emailU = "email_u"
        case emailD = "email_d"
        case username, password, domain, useragent, ipv4, macaddress, plasticcard, cardexpir, bonus, company, color, uuid, height, weight, blood, eye, hair, pict, url, sport
        case ipv4URL = "ipv4_url"
        case emailURL = "email_url"
        case domainURL = "domain_url"
    }
}
