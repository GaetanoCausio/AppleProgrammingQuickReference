/*: (C) Gaetano Causio 2016
 
 # CocoaPods
 
 ## Installation
 
 To install CocoaPods simply run on a terminal:

 `sudo gem install cocoapods`
 
 Use the same commando to update CocoaPods to the latest version. Eventually you can even download and use the **cocoapods.app**

 ## Uninstall CocoaPods
 
 An uninstall of CocoaPods in combination with a REinstall my help with certain problems on older versions.
 Check wihich versions of CocoaPods is installed:
 
 `gem list --local | grep cocoapods`
 
 Uninstall each of the components:
 
 `sudo gem uninstall cocoapod`
 `sudo gem uninstall cocoapod-core`
 `sudo gem uninstall cocoapod-deintegrate`
 
 ## Install a Package
 
 In terminal go to your project folder and type:
 
 pod init
 
 Open the podfile with a text editor and add the package you need to immport:
 
 ```
 target 'MyApp' do
   use_frameworks!
   pod 'SwiftyJSON', '~> 3.1'
 end
 ```
 
 and type `pod install` then open the xcworkspace that has been created. you can import the framework and start using it.
 
 ## trouble shooting
 
 In case of issues try one of the following:
 
 `sudo gem update`
 `pod repo update`
 
 Otherwise:
 
 `sudo rm -fr ~/.cocoapods/repos/master`
 `sudo rm -fr ~/Library/Caches/CocoaPods/`
 `sudo gem update --system`
 `sudo gem update`
 `sudo gem cleanup`
 `pod setup`
 
 ## Handy links
 
 [CocoaPods](https://cocoapods.org)
 
 */
