//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
       let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(membersNameArray: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNameEmoji(membersNameArray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخطsecretNameLetter قم بكتابة الداله
    func secretNameLetter(membersNameArray:[String])->String {
        var firstLetter = ""
       
        
        
    for i in 0..<membersNamesArray.count {
       print ("\(membersNamesArray[i]) = its prefix is \(membersNamesArray[i].prefix(1))")
         firstLetter +=  String(membersNamesArray[i].prefix(1))
        print (" \(firstLetter) ")
    }
    return firstLetter
    }
        
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func secretNameEmoji(membersNameArray : [String])->String {
        var theEmojis : [String] = []
        var firstletters : [String] = []
        let correspomdingEmojis: [String:String] = [ "a":"😃" ,"b":"😇", "c":"🤨", "d":"🤓", "e":"🤩", "f":"🤯", "g":"👽", "h":"💄",
        "i":"🥰", "j":"😘", "k":"😚", "l":"😈", "m":"👺" , "n":"🤡" , "o":"👻" , "P":"🦷" , "q":"👄" ,"r":"👩‍🎤", "s":"👓", "t":"🎩" ,"u":"🧢" , "w":"👒" , "x":"⛑️" , "y":"👑" , "z":"👛" ]
    
        
        for i in 0..<membersNamesArray.count
        {
            
            let firstLetterFromMemberName = String(membersNamesArray[i].prefix(1))
          // let letterEmoji = correspomdingEmojis[firstLetterFromMemberName]
       // firstletters.append(letterEmoji!)
            for (letter,emoji) in correspomdingEmojis {
                if letter == firstLetterFromMemberName {
                theEmojis.append(emoji)
                }
            }
        }
        print (firstletters.joined())
        membersNamesArray.removeAll()
        return theEmojis.joined()
    }
    
     
        
        
    // MARK: -   النهاية
    
    
    
}

