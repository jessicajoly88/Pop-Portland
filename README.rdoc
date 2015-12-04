# Pop Portland! Music Festival App

## _Version 1.0, November, 2015_

#### By _**Jessica Joly**_

## Description

Pop Portland! is a fictional music festival that celebrates both local and international emerging musical acts. The festival app aims to make is to be a one-stop shop of information for festival goers.
Users can peruse each act's information page which includes a Soundcloud music sample. They can also see all of a band's events and get all of the venue information for said events.
When signed-in, users can also tag events as favorites and add them to their profile page.

_Planned future updates_

*_Add email feature so users can share their schedules_*
*_Implement social media features on user page_*
*_Add feature that calculates directions from event to event for a user's festival day_*
*_Develop algorithm to propose events to users based on current festival favorites_*
*_Refactor alerts pop-up window (ex: 'Success!')_*


## Setup

1. Clone Repository
2. Bundle gems, type 'bundle' into  terminal
3. Launch Postgre, type 'postgres' into terminal
4. Create database, type 'rake db:create' into the terminal
5. Create table in the database, type 'rake db:migrate' into the termainl
6. Seed database with content, type 'rake db:seed' into the termainl
7. Launch server, type 'rails s' into the termain and navigate to 'localhost:3000'in browser

### Technologies Used

* Ruby on Rails
* Postgres
* JavaScript
* jQuery
* CSS
* HTML
* SoundCloud API
* Googlemaps4rails gem
* Testing tools: RSpec, Capybara, SimpleCov, FactoryGirl.


## Legal

Copyright (c) 2015 **_Jessica Joly_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
