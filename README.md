# Android (Native) Recruitment Task 2 -Intermediate
## Task - Implement a Dynamic App using the Native framework

[comment]: <> (greetings)
### Hey there
We have designed the following task to gauge your technical skills and understand you better as a candidate. Please go through the instructions below carefully and complete the task accordingly.<br/>
<strong>All the best!</strong>

[comment]: <> (who is this task for)
## Implement this task if -
#### You have used native before and have a good understanding of the framework. You are familiar with the Retrofit/Volley or Firebase Realtime Database and what APIs are.
Display your creativity and resilience by completing this task and meeting all the criteria.

[comment]: <> (outline details)
## Task Details:
In this task, you have to implement a Dynamic App using <b>API integration using  Retrofit/Volley <i>OR</i> Firebase Realtime Database</b>
- The app will interact with 2 API endpoints(in case of Firebase Realtime database Json file will be given to you for importing to your own Realtime Database)

FOR API INTEGRATION:
- The [first endpoint]() returns a list of JSON Objects, each of which represent a taxi trip and contain the following fields:
  - driverId - Id of the driver 
  - customerId - Id of the customer
  - PUDatetime - pickup datetime
  - DODatetime - drop off datetime
  - passengers - number of passengers
  - tripDistance - distance coverd in that trip
  - PULocationId - Id of pickup location
  - DOLocationId - Id of drop off location
  - fare - fare for the trip
  - tax - tax charged
  - tip - tip given by customer
- The [second endpoint]() return a list of Json Object, which represent locations and contain the following fields:
  - locationId - Id of the location
  - town - town
  - zone - zone
- You can display this information anyhow you like
- The app can have more than 1 interconnected screens

For Realtime Database Integration:
- The [Json File](https://drive.google.com/file/d/1fxRIeKsA7XxbQw3KJQzIKbUTqxPguHhD/view?usp=sharing) returns a list of JSON Objects, each of which represent a taxi trip and contain the following fields:
  - driverId - Id of the driver 
  - customerId - Id of the customer
  - PUDatetime - pickup datetime
  - DODatetime - drop off datetime
  - passengers - number of passengers
  - tripDistance - distance coverd in that trip
  - PULocationId - Id of pickup location
  - DOLocationId - Id of drop off location
  - fare - fare for the trip
  - tax - tax charged
  - tip - tip given by customer
  - locationId - Id of the location
  - town - town
  - zone - zone
- You can display this information anyhow you like
- The app can have more than 1 interconnected screens
[Here are the steps for importing the JSON file linked above to your own Realtime Database](https://drive.google.com/drive/folders/1OFi3XIEF8HYIqD-sL1oad7MuFFu-Wea5?usp=sharing)
<b>Tip:</b> Keep in mind that this data can be used by both a taxi driver and a rider. Before starting choose which one you want to cater to and develop the interface accordingly. Also, think about how you want to make data specific to a user available to them.

Additional documentation and resources for the API are available [here]()

### Getting Started
To get started, <b>Fork</b> this repository then,
1. <b>Clone</b> the code available on this branch to your device
2. Then, create a <b>new branch</b>, name the branch as your name.

You may not use an existing project.

<b>Feel free to look up new things while implementing this app and get creative! After all, we are looking for people who are inquisitive and like to learn new things.
But in doing so, make sure that - you do not plagiarize, every line of code is yours, and you understand every aspect of your code.</b>

If you are not familiar with Git and GitHub you can find resources on how to do this linked below.

[comment]: <> (criteria for grading)
## Criteria for Grading
1. UI is easy to understand for the user
2. Understanding of the API structure or Firebase Database Structure
3. Integration of Firebase OR Retrofit/Volley
4. Well structured activity flow
5. No Redundancy
6. Creativity

[comment]: <> (submission process)
## How to Submit?
1. Commit your code to your branch
2. Then create a Pull Request from your branch to this (native-option2) branch
3. The title of the pull request should be your full name
4. Attach screenshots of the app along with it and mention anything you want us to consider or draw our attention towards when reviewing your submission

[comment]: <> (link resources)
## Resources you might find helpful:
- [Git and GitHub in a Nutshell for beginners](https://www.educative.io/blog/git-github-tutorial-beginners?aid=5082902844932096&utm_source=google&utm_medium=cpc&utm_campaign=blog-dynamic&utm_term=&utm_campaign=Dynamic+-+Blog&utm_source=adwords&utm_medium=ppc&hsa_acc=5451446008&hsa_cam=8090938743&hsa_grp=82569843726&hsa_ad=396819070286&hsa_src=g&hsa_tgt=aud-470569448294:dsa-837938538428&hsa_kw=&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=CjwKCAjwyvaJBhBpEiwA8d38vA2eGdONsKZargIvj9wsLW9U48FiErSNeoWqsWP5e4WrwPSb4Lc2GRoC4WAQAvD_BwE#what-is)
- [How to clone repositories](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)
- [How to make a new branch](https://www.educative.io/edpresso/git-branch-command?aid=5082902844932096&utm_source=google&utm_medium=cpc&utm_campaign=edpresso-dynamic&utm_term=&utm_campaign=Dynamic+-+Edpresso&utm_source=adwords&utm_medium=ppc&hsa_acc=5451446008&hsa_cam=8092184362&hsa_grp=86276435689&hsa_ad=397226000870&hsa_src=g&hsa_tgt=aud-470569448294:dsa-837376625453&hsa_kw=&hsa_mt=b&hsa_net=adwords&hsa_ver=3&gclid=CjwKCAjwyvaJBhBpEiwA8d38vE443-9M60MiKwhm52L399DUeuANM80hpBca-fIcY5uVGuqSa-agMRoC410QAvD_BwE)
- [How to Fork, Colne and create a Pull request](https://opensource.com/article/19/7/create-pull-request-github)
- [<b>All API related documentation</b>]()
