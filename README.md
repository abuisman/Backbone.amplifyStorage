Backbone.amplifyStorage
=============================

An adapter for Backbone.localStorage to use amplifyjs' store in order to provide support for most browsers. Including IE5!

# What problem is now solved?
Using Backbone.localStorage (https://github.com/jeromegn/Backbone.localStorage) you can store collections locally using a one-liner in your collection:

```
localStorage: new Backbone.LocalStorage("Timers")
```

## But…
The 'but' is that localStorage does not work in every browser, ergo, device. Amplify.store (http://amplifyjs.com/api/store/) solves this problem by using one API for different storage engines.

## This project
What I have done is write, a very simple, adapter to use on top of Backbone.localStorage in order to save through amplify, rather than depending on localStorage. 

Once you see the code you will see that I did very little, but I hope that you appreciate that you can now do very much!

# Instructions
I assume that you have Backbone.js up and running. Which means that you have underscore.js included in your project as well.

## JS files to load
Load the following JS files:

```
<script src="underscore.js"></script>
<script src="backbone.js"></script>
<script src="amplify.store.min.js"></script>
<script src="backbone.localStorage.js"></script>
<script src="Backbone.amplifyStorage.js"></script>
```

## Backbone.js code to adjust
Add the following to your controller:
```
localStorage: new Backbone.LocalStorage("Timers")
```

Done!

## Remote save, what?
The Backbone.localStorage plugin will now catch all your saves, etc. This means that calling `save()` on a model will not, by definition, save it to the server, just locally. 

You can go around this, but I will leave it up to you what you find the nicest solution.

# Contribute
If you feel that I did something wrong, dumb, etc. Please feel free to contribute, either through filing issues, or by coding it better and putting up a pull request.

# Test
You will find that you can run the tests that are included in localStorage. The only fail that you'll see is one that checks for the browser's private mode. Lucky thing that amplify.store will allow you to store in private browsing mode as well, only, as expected, you will lose the content when you close the private window. So the failing test can be ignored, or you can contribute tests of your own.