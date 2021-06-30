//
//  NSAtrributedStringExtension.swift
//  mindful
//
//  Created by Nidhi Pabbathi on 6/30/21.
//

import Foundation

extension NSAttributedString {
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString {
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttributes(range: substringRange)
        return attributedString
    }
    
}
