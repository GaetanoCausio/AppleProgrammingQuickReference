/*: (C) Gaetano Causio 2016
 
 # Frameworks

 ## Creating a Framework
 
 1) Create a _Cocoa (Touch) Framework_ using Xcode.
 2) Add what ever Swift classes you want to your framework.
 3) Mark these classes as public if you need to expose them.
 4) Make sure the members and functions you need visible are public.
 5) if you use multiple frameworks in a project make sure each class has a proper target membership
 
 > **Public**: for code visible outside of the framework.\
 > **Internal**: for code used between functions and classes within the framework\
 > **Private**: for code used within a single file.
 
 ## Frameworks for iOS, Mac and Command-Line tool
 
 1) Add a Framework for Mac (Cocoa) using above steps, the class you build here is your *foundation* and should not contain any UI specifics. This is would be your **Command-Line framework** and the base class for your iOS and Mac frameworks.
 2) Add a Framework for Mac (Cocoa) using above steps, the class you build here contains UI specifics for the Mac and should inherit from the *foundation* class above defined. This is would be your **Mac OS X UI framework**.
 3) Add a Framework for iOS (Cocoa Touch) using above steps, the class you build here contains UI specifics for the iOS and should inherit from the *foundation* class above defined. This is would be your **iOS UI framework**.
 
 ![iOS, Mac and Commandline-Tool frameworks](TurkinoFrameworks.png)
 
 ## Add a Framework to your (Swift) Mac or iOS project
 
 1) Close your framework project! It cannot be opened while linked.
 2) Add the .xcodeproj of your frameworks into your project.
 3) From your project, open the just added sub-project and drag the framework file (Mac or iOS) from the *Products* group into the *Embedded Binaries* of the general tab of your project's Target.
 4) Now you can import your framework en start using it from your project classes
 5) For storyboard referencing classes in your framework don't forget to specify the name of the framework project in the field "module" in identity inspector
 
 ## Add a Framework to your (Swift) Command-Line project
 
 1) Close your framework project! It cannot be opened while linked.
 2) Add the .xcodeproj of your frameworks into your project.
 3) Make sure *Embedded Content Contains Swift Code* is set to *YES* for the target of the foundation framework you are going to import.
 4) From your project, open the just added sub-project and drag the foundation framework file from the *Products* group into the *Link Binaries With Libraries* of the *Build Phases* tab of your project's Target.
 5) Add also a *Target Dependencies* to the foundation framework
 6) Now you can import your framework en start using it from your project classes
 7) You should now get warnings about duplicate references to *libswiftAppKit.dylib*, this is due to a swift command line tool embedding a swift framework, but in any case the tool should run.
 
 ## Distribute and Consuming a framework
 
 1) open your project of your frameworks
 2) set the active scheme to your framework target (make sure a real device is connected based on your target framework)
 3) select *Product | Archive* from the Xcode menu
 4) locate your .framework file inside your project derived data
 5) copy the framework to a location that holds your production frameworks (i.e. *\/Library\/Frameworks*)
 6) open now the project where you wish to include your framework
 7) add the .framework file to your project. it is automatically linked.
 8) Now you can import your framework en start using it from your project classes
 
 ## Issues
 
 - Check the target of each class in the framework is correctly setup
 - Make sure deployment target of your framework matches that of your project
 - In case of build issues try for the Framework target, in Build Settings, to set "Embedded Content Contains Swift Code" to NO
 - Sub project within a project does not expand? Make sure the project is not open on any other Xcode window.
 - While type the import statement, auto-complete does not show my framework. Try building your project first.
 - Make sure you use the `+` sign when adding your frameworks or executables as drag and drop may not always work as expected!
 - If you get warnings about duplicate references to *libswiftAppKit.dylib* this is due to a swift command line tool embedding a swift framework, but in any case application should run correctly.

 ## To be tested (found on Internet)
 
 ### Swift Package Manager
 
 Add us to your Package.swift:
 
 
     import PackageDescription
 
     let package = Package(
        name: "My Nerdy App",
        dependencies: [
           .Package(url: "https://github.com/bignerdranch/Freddy.git", majorVersion: 2),
        ]
     )

### Submodules
 
 - git submodule add https://github.com/bignerdranch/Freddy.git Vendor/Freddy
 - Drag Freddy.xcodeproj into your Xcode project.
 - Add Freddy.framework to the "Linked Frameworks and Libraries" panel of your application target.
 
*/



