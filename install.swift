//
//  main.swift
//  InstallRMVIPERTemplate
//

import Foundation

let destinationPath = "/Users/\(NSFullUserName())/Library/Developer/Xcode/Templates"
let fm = FileManager.default
let currentDir = fm.currentDirectoryPath

func getTemplatesPaths() -> [String]? {
    do {
        let items = try fm.contentsOfDirectory(atPath: currentDir)
        return items.filter { $0.contains(".xctemplate") }
    } catch {
        return nil
    }
}

func copyTemplates() {
    guard let templatePaths = getTemplatesPaths() else {
        showMessage("Something went wrong :(")
        return
    }
    for templatePath in templatePaths {
        let source = currentDir + "/" + templatePath
        let dest = destinationPath + "/" + templatePath
        if !copyFiles(from: source, to: dest) {
            showMessage("Something went wrong :(")
            return
        }
    }
    showMessage("Templates are installed successfully!")
}

func copyFiles(from source: String, to dest: String) -> Bool {
    do {
        let filelist = try fm.contentsOfDirectory(atPath: source)
        try? fm.copyItem(atPath: source, toPath: dest)
        for filename in filelist {
            try? fm.copyItem(atPath: "\(source)/\(filename)", toPath: "\(dest)/\(filename)")
        }
        return true
    } catch {
        return false
    }
}

func showMessage(_ message: String) {
    print("===============================================")
    print("\(message)")
    print("===============================================")
}

copyTemplates()
