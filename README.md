# Picture wheel 

This is a prototype of a Carousel log in and create account flow. 

Time spent: ~10 hours to complete

Completed user stories:

* Sign in
** Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
** User sees an error alert when no email is present or no password is present.
** User sees a loading screen upon tapping the Sign In button.
** alertController.dismissViewControllerAnimated(true, completion: nil) dismisses the alert controller loading screen with no buttons.
** User sees an error alert when entering the wrong email/password combination.
** User is taken to the tutorial screens upon entering the correct email/password combination.

* Tutorial screens
** User can page between the screens

* Image timeline
** Display a scrollable view of images
** User can tap on the conversations button to see the conversations screen (push).
** User can tap on the profile image to see the settings view (modal from below).

* Settings
** User can dismiss the settings screen
** User can log out
 
Notes:


Walkthrough of all user stories:

![Video Walkthrough](carousel.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

