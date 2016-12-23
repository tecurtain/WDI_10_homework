### TITLE
AM~FM

Alt Monkey Festival Management

### README FILE
Born out of a desire to see people connect meaningfully with festivals and each other, AM~FM exists to provide this space.

Whether you want to remember and share pivotal moments with friends or simply keep track of all the events you plan on attending in the future, we’ve got you covered.

Link to friends or festival profiles, upload images or create and manage your own festival page.

AM~FM, love what you do, do what you love.


### HOST LOCATION
A hosted page to this game can be found [here](https://).

#### TECHNOLOGIES USED </break>
Ruby, Sinatra, Active Record, SQL, HTML, CSS.

The grid used for displaying images was adapted from a SitePoint Codepen listed below.

http://codepen.io/SitePoint/pen/bEvVqP

#### APPROACH TAKEN

The project was broken down into different components following a user story and brainstormed in my journal. A table was sketched out to create the foundation for the app.  Later, multiple tables were added and their relationships formed the basis for the the model interactions. The resulting flow looked like this:

![Use Story Flow Diagram](https://github.com/tecurtain/WDI_10_homework/blob/master/Thomas/AMFM/readme_images/readme_flow.jpg?raw=true)

Ruby documentation was used where methods were unclear or unfamiliar.  

Console.rb file, and Pry were used extensively during the coding process to test functionality and correct errors or bugs.  

Relationships were mapped out using diagrams in my journal to determine how to structure my table.  

![Table Relationship](https://github.com/tecurtain/WDI_10_homework/blob/master/Thomas/AMFM/readme_images/readme_relationships.jpg?raw=true)

#### FUTURE EXPANSION
##### (stretch goals)

* Permissions will need to be assigned.  There must be a few states to resolve a number of issues.  Superuser access will need to be created to have access to both users and festivals.  Festivals will need to belong to the individuals who created them, and only be abled to be edited by the superuser or the creator.  Users should only be able to edit their own profile, not everyones as it currently stands.  
* Video functionality should be added so users can upload videos as well as images.  
* If anymore menu items are added, drop down menus should be utilised.   
*
