# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Unit #4 Project: Your Portfolio Project

### ![](https://github.com/tecurtain/WDI_10_homework/blob/master/Thomas/SFP3/tic-tac-toe/app/assets/images/200-Ok.JPG?raw=true)
### WDI-10 200-OK!

### Project Focus
The majority of time spent on this project was in researching and learning about Action Cable in Rails 5 as well I was then able to take the existing Tic-Tac-Toe application and append a chatbox utilising Action Cable below the original game.  Understanding the underlying technology used by Action Cable was difficult but necessary to be able to modify for use as a chat app.  

Using the below source code as a template, the CSS was customised and chat capability was added below the game so users are automatically logged in and can communicate as the game progresses. Features were added such as bubble texts, read receipts and a "user is typing" message.  

### ![](https://github.com/tecurtain/WDI_10_homework/blob/master/Thomas/SFP3/tic-tac-toe/app/assets/images/Player1.png?raw=true) Player 1

### ![](https://github.com/tecurtain/WDI_10_homework/blob/master/Thomas/SFP3/tic-tac-toe/app/assets/images/Player2.png?raw=true) Player 2

---
## Example Workflow

Working with the class instructor a todo list would be established and implemented.  Problems would be diagramed and questions asked and answered.  The environment was conducive to learning and productivity.  

### ![](https://github.com/tecurtain/WDI_10_homework/blob/master/Thomas/SFP3/tic-tac-toe/app/assets/images/WorkFlow.jpg?raw=true)

### White Board Diagram

In game.coffee

* 1) Implement a method "send_message" which takes one argument, a message, and calls @perform, @perform 'send_message', data: msg

* 2) In @received, in the switch statement, implement a case that gets `receive_message` and appends the data to our UI In game.js

This is where you'll implement the event listeners for submitting a message

* 3) Attach an event listener to your submit button, and in the event handler call, App.game.send_message($('#usermsg').val());

At this stage, we are sending messages to our websocket server (but it doesn't know how to respond...yet)

* 4) In channels/game_channel.rb implement a method called 'send_message'
  send_message(uuid, data)
    opponent = Game.opponent_for(uuid)
      ActionCable.server.broadcast opponent, {action: "receive_message", msg: data}


---
### Git Source Code Utilised

* **[Cookies HQ Git](https://github.com/cookieshq/tic-tac-toe)** _(The basic code used for the implementation of ActionCable in Rails 5 to join a JavaScript Tic-Tac-Toe game)_

* **[Cookies HQ Blog](http://cookieshq.co.uk/posts/tic-tac-toe-game-in-rails-5-with-action-cable/)** _(The blog post used to implement Cookies HQ method)_

* **[Tic Tac Toe Git](https://github.com/mediaupstream/tic-tac-toe-js/)** _(Derek Anderson's Tic Tac Toe game used as a base)_

---

### Technical Requirements

* **Build a full-stack application** by making your own backend and your own front-end
* **Have an API of your design**
* **Have an interactive front-end**, preferably using a modern front-end framework
* **Be a complete product**, which most likely means multiple relationships and CRUD functionality for at least a couple models
* **Use a database**, whether that's one we've covered in class or one you want to learn
* **Implement thoughtful user stories** that are significant enough to help you know which features to build and which to scrap
* **Have a visually impressive design** to kick your portfolio up a notch and have something to wow future clients & employers
* **Be deployed online** so it's publicly accessible

---

### Necessary Deliverables

* A **working API**, hosted somewhere on the internet
* A **working front-end**, hosted somewhere on the internet
* A **link to your hosted working app** in the URL section of your GitHub repo
* A **git repository hosted on GitHub**, with a link to your hosted project, and frequent commits dating back to the very beginning of the project
* **A ``readme.md`` file** with:
    * An embedded screenshot of the app
    * Explanations of the **technologies** used
    * A couple paragraphs about the **general approach you took**
    * **Installation instructions** for any dependencies
    * Link to your **user stories** – who are your users, what do they want, and why?
    * Link to your **wireframes** – sketches of major views / interfaces in your application
    * Link to your **pitch deck** – documentation of your wireframes, user stories, and proposed architecture
    * Descriptions of any **unsolved problems** or **major hurdles** you had to overcome

---

### Resources

* **[HackDesign](https://hackdesign.org/lessons)** _(beginner's reference for thinking like a designer)_
* **[Visual Design Hacking](https://generalassemb.ly/online/videos/visual-design-hacking)** _(a great tips-and-tricks focused video from Front Row)_
* **[Web Design For Non-designers](https://generalassemb.ly/online/videos/web-design-for-non-designers)** _(another great design-related course for all the nerds out there)_
