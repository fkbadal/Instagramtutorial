//
//  UploadPostViewModel.swift
//  Instagramtutorial
//
//  Created by Fayzul Kobir Badal on 7/16/25.
//

import Foundation
import PhotosUI
import SwiftUI

@MainActor
class UploadPostViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem?{
        didSet {Task {await loadImage(fromItem: selectedImage)} }
    }
    @Published var postImage: Image?
    
    func loadImage(fromItem item: PhotosPickerItem?)async{
        guard let item = item else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uitImage = UIImage(data: data) else {return}
        self.postImage = Image(uiImage: uitImage)
        
        
        
        }
    }
    

