# MuteMeet
Mute Google Meet meetings using your keyboard regardless of where the damn browser tab is.


## Why does this exist?
I work remotely and use Google Meet meetings for probably 50% of my day. As a good citizen of remote meetings, I like to mute my microphone when I'm not speaking. I especially like to do it if I'm drinking or eating or breathing heavy from an intense session of code review.

Google Meet has a keyboard command to mute and unmute the microphone. However, this only works if the window is active and the tab is selected. Since I have multiple screens, windows, and tabs, it can be difficult to find the right one when I want to unmute to say something.

I wrote this AppleScript to solve that problem. It allows you to find the correct window, the correct tab, and send the mute/unmute command to Google Meet.

## How do I use it?

Requirements:
* Mac OS X
* Google Chrome
* Google Meet

First, you'll need an app that lets you bind global keyboard shortcuts to firing AppleScript. Here are some options:
* [FastScripts](https://red-sweater.com/fastscripts/) - (Free) Allows you to map up to 10 shortcuts to AppleScripts. You can pay if you need more. This is what I use.
* [Alfred](https://www.alfredapp.com/) - (Paid PowerPack has the feature you need, Free otherwise) A powerful replacement for Spotlight with lots of other useful features.
* [Quicksilver](https://qsapp.com/index.php) - (Free) A precursor to Alfred as a launcher app but handles keyboard shortcuts, too.
* [Keyboard Maestro](http://www.keyboardmaestro.com/main/) - (Paid) This will make you a keyboard wizard.
* [No 3rd-party apps](https://apple.stackexchange.com/a/247183/100698) - (Free) This is a StackExchange answer for how to set this up manually through Automator.

Once you decide on which app to use, clone this repository wherever you like. Or just save the `.scpt` file somewhere on your machine. Depending on the instructions for your chosen app, assign the keyboard shortcut you want. I use Shift-Command-M.

Here's what you can expect when firing the script:
* MuteMeet finds all your Chrome windows
* MuteMeet loops through all the tabs and finds the Meet window
* MuteMeet brings that window and tab to the front and focuses it
* MuteMeet sends the keyboard shortcut to mute/unmute your microphone