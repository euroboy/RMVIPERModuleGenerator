## How to install

#### Using script (easy)
Only need execute this command in terminal:
```swift
sudo swift install.swift
```

If all it's ok you now could find your template in Xcode.

### Manual
Go to Application folder, browse to the Xcode application icon. Right-click it and choose 'Show Package Contents'. Then browse to:
`Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application` and add "RMVIPER Module.xctemplate" file. Now you can find your template in Xcode.


## Easy to use
![](/assets/wizard1.png)
![](/assets/wizard2.png)


## VIPER diagram overview
![Preview](/assets/viper_diagram.png)

## What is VIPER?
VIPER is not a framework  but an approach to iOS application architecture, which stands for:

#### VIEW
>The view consists of views and view controllers. It is responsible to receive user interactions and pass them to presenters for decision making. To keep the view simple, it shouldn’t contain any view logics. This is where to define how the view looks like, and nothing beyond this.

#### PRESENTER
>The presenter defines the view logics, e.g. when to show a warning message or highlight a button. It is responsible to prepare content for the view to display. Whenever data is required, the presenter requests data from interactors (but not directly from the model).

#### INTERACTOR
>The interactor mainly contains business logic, e.g. logging in the user /  processing a purchase / sending a friend request. It should be independent of the UI. It only handles requests from the presenter and prepare corresponding data regardless of how the view looks like.

#### ENTITY
>Entities are the model objects manipulated by an Interactor and only by the Interactor. It is simply a Struct. It is model orientated and therefore should not contain any business logic, Entity is not the Model, it's a represntation of the Model.

#### ROUTING (WIREFRAME)
>Wireframe defines the routes from one screen to another. In VIPER, the responsibility for Routing is shared between the presenter and the wireframe.
When the presenter receives user interactions and decided to navigate to another screen, it will use the wireframe to perform the desired navigation (to which screen and how to navigate). The wireframe can also contain transition animations.

## Why VIPER?
After using VIPER, I've found it to be very beneficial in many ways. Let’s get back to the list of things we set out to accomplish when architecting our app to see if VIPER addresses them.

- Single responsibility principles applied.
- Easy to iterate on.
- Collaboration friendly.
- Separated out concerns.
- Spec-ability.
- Testability. 

## References
- [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52#.ba7q8dcih)
- [#8 VIPER to be or not to be?](https://swifting.io/blog/2016/03/07/8-viper-to-be-or-not-to-be/)
- [https://www.objc.io/issues/13-architecture/viper/](https://www.objc.io/issues/13-architecture/viper/)
- [https://www.ckl.io/blog/ios-project-architecture-using-viper/](https://www.ckl.io/blog/ios-project-architecture-using-viper/)

## Author

* [Radu M.]
