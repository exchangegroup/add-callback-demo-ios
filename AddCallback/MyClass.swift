import UIKit

public class MyClass {
  private var callbacks: [()->()] = []
  
  public func doIt(callback: (()->())?) {
    if let callback = callback {
      callbacks.append(callback)
    }
    
    // ... other code here
  }
}