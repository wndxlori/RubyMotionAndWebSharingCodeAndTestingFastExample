# Sharing and Testing Code

## Core objects shared with a RubyMotion and Rack app

I gave this talk at [SydInMotion](http://sydinmotion.com/) after having worked on extracting my core business logic and anything else I could into components that are easier to test and able to be shared between projects.

This example shows how the delivery mechinisms (the web and ios apps) don't care about the business logic or how things are stored, they're just plugged into the core stuff which is shared between the two. That shared code is extracted into gems, and implements real use cases without any care for the UI or how it's going to be stored.

I've included the slides in this repo, so click on 'slides.pdf' in the files above. I plan to record me giving this talk at some point too, at which point I'll put a link here.

## Related Articles

* [Truly "Universal" RubyMotion Apps](http://blog.motioninmotion.tv/truly-universal-rubymotion-apps)
* [Writing Gems for Ruby and RubyMotion](http://blog.motioninmotion.tv/gems-for-ruby-or-rubymotion)
* [How to Test RubyMotion with any Ruby Test Framework](http://blog.motioninmotion.tv/how-to-test-rubymotion-with-any-ruby-test-framework)

## Donate to the FluffyJack cause

If you like my work and want to help me keep on doing it, subscribe to [my screencasts](https://motioninmotion.tv/), [buy my book about RubyMotion for Rails Developers](http://book.motioninmotion.tv/), or hire me for work or teaching by emailing me at [info@fluffyjack.com](mailto:info@fluffyjack.com).
