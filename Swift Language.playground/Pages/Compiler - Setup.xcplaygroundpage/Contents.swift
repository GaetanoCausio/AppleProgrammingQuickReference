/*: (C) Gaetano Causio 2015

# Compiler

## Setting up a Project
 
✅ In *Build Settings* under *Build Options* change your **Debug Information Format** to **DWARF with dSYM File** for both Debug and Release.
 
✅ In *Build Settings* under *Swift Compiler – Custom Flags* make sure your **Active Compilations Conditions** is set to **DEBUG** for debug mode

✅ Pick the minimum iOS version in *Build Settings* > **iOS Deployment Target**. Usually you should support the most recent two versions of iOS.

✅ Go to the *Build Phases* of your target and add the following script in **Run Script** phase:
 
````
 KEYWORDS="TODO|FIXME|\?\?\?:|\!\!\!:"
 find "${SRCROOT}" \( -name "*.swift" \) -print0 | \
 xargs -0 egrep --with-filename --line-number --only-matching "($KEYWORDS).*\$" | \
 perl -p -e "s/($KEYWORDS)/ warning: \$1/"
````
 */