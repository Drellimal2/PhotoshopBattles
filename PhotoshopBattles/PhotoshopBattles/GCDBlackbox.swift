//
//  GCDBlackbox.swift
//  PhotoshopBattles
//
//  Created by Dane Miller on 2020/03/31.
//  Copyright © 2020 Dane Miller. All rights reserved.
//

import Foundation


func performUIUpdatesOnMain(_ updates: @escaping () -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}
