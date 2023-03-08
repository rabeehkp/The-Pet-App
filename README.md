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

The Pet app uses a number of cocoapods:

- [SwiftLint] - For code standerd
- [SDWebImageSwiftUI] - Loading Images from Url

## Design

We are using very simple list and webView in this project.
the list view is created using SwiftUI and webview is created using UIKit and WebKit

<img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.19.32%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.19.42%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.20.16%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.20.31%20AM.png"  width="250" height="500"> <img src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screenshot%202023-03-09%20at%2012.20.47%20AM.png"  width="250" height="500">

<video src="https://github.com/rabeehkp/The-Pet-App/blob/main/Screen%20Recording%202023-03-09%20at%2012.23.50%20AM.mov" width=250>


