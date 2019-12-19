# Gallery Website and Database

### Starting Instructions

This project uses Ruby, Sinatra, and PostGreSQL. To initilise the project please follow these instructions.

1. In terminal input ``createdb gallery``  
2. Navigate to the project root folder then input ``ruby db/seeds.rb``  
3. Follow this with ``ruby app.rb``  
4. Visit http://localhost:4567/ to view the app.

## About the Project

The brief for this app was to create a website for a gallery which could be updated by staff, and allow a user to find out what was being shown, as well as who was featured in each exhibit.

The site consists of 3 sections:
- Artists
- Exhibits
- Staff

Functionality allows for saving, updating and deleting in the artist and exhibits tables of the DB. Also allows artists to be assigned to exhibits.

#### Home Page
![Home Page](/public/images/Screenshot_HP.png)

#### List Page Example
![Home Page](/public/images/Screenshot_List.png)

#### Profile Page Example
![Home Page](/public/images/Screenshot-Profile.png)
