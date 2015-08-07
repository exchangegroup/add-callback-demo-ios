import UIKit

class MyClass {
  private var callbacks: [()->()] = []
  
  func doIt(callback: (()->())?) {
    if let callback = callback {
      callbacks.append(callback)
    }
    
    // ... other code here
  }
}