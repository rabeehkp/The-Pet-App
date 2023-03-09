# The-Pet-App
## _Get your favourite pets details here_

Introducing the Sepia Pets app
Sepia Pets application shows the list of pets and pets-related detailed information in the mobile application..

## User Stories
User Story 1:
- There are two screens. 
- The first screen is a list of pets. 
- Each pet item includes pet images and names.
- Data for showing the list is available in the pets_list.json

User Story 2:
- Tapping on a pets list item brings up the second screen.
- This screen is a details screen showing the information related to the given pet which is provided in the petslist.json as content_url.

User Story 3:
- The application content should only be visible during working hours.
- Working hours details are available in config.json.
- In case of non-working hours, the application should block the user from accessing the application content and show the popup message to the user.

Instructions

> Recommended to use swift for development.
> Using SwiftUI will have bonus points but you can also use the UiKit framework.
> Please use a git repository for your code and track commits.
> Please work as per the user stories.


## Tech

- Xcode
- Swift
- SwiftUI
- MVVM 

The Pet app uses a number of cocoapods:

- [SwiftLint] - For code standerd
- [SDWebImageSwiftUI] - Loading Images from Url

## Design

We are using very simple list and webView in this project.
the list view is created using SwiftUI and webview is created using UIKit and WebKit . In this app we used MVVM structure for development.
there is three screen in this app. 
- Pets List View :
      we created this screen using swiftUI. the values getting from the pets_list.json file it saved inside the bundle. when we open the app the .json file will be parsed to PetData and Pets_List. the details we show using Pets_List array. 
      SDWebImageSwiftUI is a third party framework for loading image from Url with cache.
      
- Pet Details View :
      Pet details view designed using UIKit. in this viewController we have created a webView using WebKit. we only passing the url the webview load the url inside the webview.
 
- Out of Working View: 
      at the time of app launching we are checking the working hour is matching into current time. if its not working hour we will show an alert view with a button named help. this screen not close if its not working hour.
      
      these are the screenshots of The Pet App

<img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.19.32%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.19.42%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.20.16%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.20.31%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.20.47%20AM.png"  width="250" height="500">

<video src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screen%20Recording%202023-03-09%20at%2012.23.50%20AM.mov" width=250>


