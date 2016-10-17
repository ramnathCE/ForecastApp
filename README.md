# Forecast App - Task


# Dependances
### Library in use
- Alamofire ~> 4.0 (Swift 3.0 compatible)


### Package Manager in Use
 - cocoapods


### Tools
- XCode 8.0


### How to run / build / test
Step 1: Checkout the app from https://github.com/ramnathCE/ForecastApp.git


Step 2: Use XCode 8 and Swift 3.0 to run the app. In case if the app asks you to migrate swift 3.0 when you start the project, please do. This is may due to the "Alamofire" library


### If I have more time, I will do the following
- TDD: I am about to write some Unit testing and Functional testing. Having said that, had the time limit and I am unable to do. 


- Technical Debt: The API returning the weather for five days and each day have 3 hours gap weather information. I need to write an algorithm to sort the weather for each day by date, and the current problem is in swift 3.0 to formatting the date. It is always getting nil even I passing the date. I have done some research. As a result, people mentioning this is because of the "locale" info such as en_GB. I am required more time to investigate and resolve the problem.


- Features: I would like to separate by weather by each day for every 3 hours in a grid view so the users will get a better info such as what is the current and upcoming forecast for the rest of the day. e.g. Screenshot attached below.

![Alt text](https://github.com/ramnathCE/ForecastApp/blob/master/Screens/like_to_have.png "Screen 1")

 
- MVVM Patten: I used MVC pattern but want to do the MVVM pattern due to the time limit.



## Screens
### Currently achieved

![Alt text](https://github.com/ramnathCE/ForecastApp/blob/master/Screens/temporary_screen.png "Screen 2")





### Like to be achieved

![Alt text](https://github.com/ramnathCE/ForecastApp/blob/master/Screens/like_to_have.png "Screen 1")


