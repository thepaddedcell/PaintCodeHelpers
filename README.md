# PaintCodeHelpers
A project that holds all of the helpers I've written for using PaintCode (http://www.paintcodeapp.com) in conjunction with iOS Development.

# How this works
PaintCode generates Objective-C or Swift code to create UIBezierPaths that you then import into your project.

There are several ways to use them, but I’ve found it easiest so far to simply render the path to an image and use that.

In order to ensure the path is fully scalable, I import them into PaintCode onto a canvas that is 100 x 100 pixels. Then in the UIImage extension (nee. category) I scale them according to the size of the UIImageView I’ll be placing them into. This ensures that the image rendered is always the correct size. 
