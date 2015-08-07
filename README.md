# Swift compiler error in Xcode beta 5

This is a demo app that shows an error in compilation in Xcode 7 beta 5. The error appears only when project is built in **Release**.

## How to reproduce

1) Add the following code to your project:

```Swift
public class MyClass {
  private var callbacks: [()->()] = []

  public func doIt(callback: (()->())?) {
    if let callback = callback {
      callbacks.append(callback)
    }

    // ... other code here
  }
}
```

2) Select **Product > Scheme > Edit scheme...** menu item

3) Set **Release** in Build COnfiguration

4) Build the project.

## Expected behavior

Product is built

## Actual behavior

Build results in the following error.

> Command failed due to signal: Abort trap: 6

> Assertion failed: (PAI2->use_empty() && "Should not have any uses"), function foldInverseReabstractionThunks, file /Library/Caches/com.apple.xbs/Sources/swiftlang/swiftlang-700.0.52.2/src/swift/lib/SILPasses/SILCombinerVisitors.cpp, line 549.

> 1.  While running SILFunctionTransform "SIL Combine" on SILFunction "@_TFC11AddCallback7MyClass4doItfS0_FGSqFT_T__T_".

## Remote this repository in Jan 2016

Let's hope it will be fixed by then.