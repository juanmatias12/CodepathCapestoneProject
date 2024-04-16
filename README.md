Original App Design Project
===

# LitFife

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

Allows users to track their workout Whether their workout is weightlifting in the format of hypertrophy training, strength training or something completely different like running, we will have them covered. Users will be able to share their activity to those within their network and can compete against them. Users will be able to see their weekly, monthly and yearly activity levels. 

### App Evaluation

   - **Category:** Health & Fitness and Social Networking
   - **Mobile:** Mobile is essential for the instant logging of users activity. Users use the app to track their activity and view the activity of others within their network. The camera is used to share images from workouts to range from pump pics, progress pics, views on a run, etc.
   - **Story:** The app creates a supportive and competitive environment where users can track and share their fitness progress. It encourages a sense of community and motivation by allowing users to connect with friends and peers, sharing their workout achievements and milestones. Users can engage through challenges, celebrate each other's success, and keep themselves accountable in their fitness journeys.
   - **Market:** This app targets fitness enthusiasts of all levels who are interested in tracking their physical activities, from casual gym-goers to dedicated athletes. It also caters to fitness trainers and coaches who can use the app to monitor their clients' progress. The social aspect appeals to those who enjoy sharing their achievements and staying connected with like-minded individuals.
   - **Habit:** Users are encouraged to interact with the app daily to log their workouts, check their progress, and engage with their network. The app promotes regular usage by providing insights into their activity trends and notifying them of friends' updates and new challenges.
   - **Scope:** The initial version (V1) focuses on core functionalities such as activity logging, sharing, and viewing networks' activities. Subsequent versions (V2 and V3) could introduce more social features like leaderboards, challenges, and rewards for achievements. V4 might incorporate more detailed analytics, personalized workout suggestions based on past activities, and integration with other fitness devices and apps.
  

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a new account - Enables first-time users to sign up for the app using their email, phone number, or social media accounts.
* User can log in - Allows users to access their account with their credentials.
* User can record workouts - Users can log various workout details:
* For weightlifting: Exercises performed, number of sets, reps per set, and weight used. Data should be inputtable in a table format.
* For running: Total miles run, total run time, pace, and heart rate. These metrics should be able to sync from GPS-enabled devices like Apple Watches or other fitness bands.
* User can search for other users - Allows users to find friends or like-minded fitness enthusiasts by searching usernames or other profile details.
* User can follow/unfollow other users - Users can follow others to see their workout posts in their feed and unfollow them if desired.
* User can like and comment on someone else’s activity - Engages users by allowing them to interact with others' posts through likes and comments.
* User can view a feed of activities - Displays a personalized stream of workout activities from followed users.

**Optional Nice-to-have Stories**

* User can view weekly, monthly, and yearly activity recaps - Users can receive summaries of their activity, helping them reflect on their progress and stay motivated.
* User can view previous best weights - For any given exercise, the app will display the maximum weight and reps the user has achieved historically, encouraging them to either match or exceed their past performance.
* User can view a linear graph of strength gains or losses - This feature allows users to visually track their progress over time through graphs, showing trends in strength gains or any declines.
* User can get an estimated max for reps - Based on past workout data, the app will calculate and suggest potential rep maxes for different weights, aiding users in setting realistic and challenging goals for their sessions.
* User can earn streaks for consistent workouts - To enhance motivation, the app will track consecutive days of workouts and reward users with visual streaks, badges, or points.

### 2. Screen Archetypes
- [X]   Workout Recording Screen
    * User can record workouts.
    * For weightlifting: Enter exercises performed, number of sets, reps per set, and weight used.
     
    * <div>
    <a href="https://www.loom.com/share/cb8d8ea6f3a14df2ab0816a3198fe155">
    </a>
    <a href="https://www.loom.com/share/cb8d8ea6f3a14df2ab0816a3198fe155">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/cb8d8ea6f3a14df2ab0816a3198fe155-with-play.gif">
    </a>
  </div>

- [ ]   Login Screen
    * User can log in using their credentials.
- [ ]   Registration Screen
    * User can create a new account using email, phone number, or social media accounts.
- [ ]   Workout Stream
    * User can view a feed of activities from users they follow.
    * User can like and comment on someone else’s activity.

- [ ]   User Search Screen
    * User can search for other users by usernames or other profile details.
    * User can follow/unfollow other users from search results.
- [ ]   Activity Detail Screen
    * User can view detailed information about a workout activity.
    * Displays graphs for strength gains or losses and historical bests.
    * Shows estimated max reps for weightlifting activities.
- [ ]   Profile Screen
    * Displays user’s personal workout summary and history.
    * User can view weekly, monthly, and yearly activity recaps.
    * Showcases user's workout streaks and earned rewards.
- [ ]   Settings/More Screen
    * User can adjust app settings, manage account details, and link devices or social media.
    * Access to help/support and feedback options.
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home Tab - Displays the Workout Stream where users see activity feeds.
* Discover Tab - Allows users to search and view profiles of other users.
* Record Workout Tab - Quick access to log new workouts.
* Profile Tab - Shows the user's own profile, activity history, and settings.
* Challenges Tab - (Optional) Access ongoing challenges and leaderboards.

**Flow Navigation (Screen to Screen)**

- [ ] Login Screen
    => Registration Screen (for new users)
    => Home Tab (after login)
- [ ] Registration Screen
    => Home Tab (after creating an account)
- [ ] Workout Stream (Home Tab)
    => Activity Detail Screen (by selecting a workout activity)
    => User Profile Screen (by tapping on a user's name/photo)
- [ ] Workout Recording Screen (Record Workout Tab)
    => Home Tab (after saving the workout)
    => Maybe a confirmation screen ("Workout Saved!")
- [ ] User Search Screen (Discover Tab)
    => User Profile Screen (by selecting a searched user)
- [ ] Activity Detail Screen
    => None, but it allows interaction (like, comment) within the screen.
- [ ] Profile Screen
    => Activity Detail Screen (by selecting an activity from history)
    => Settings/More Screen (via settings icon)
- [ ] Settings/More Screen
    => Various sub-screens for settings adjustments (not detailed here)
    => Profile Screen (back navigation)
- [ ] Challenge and Leaderboard Screen (Challenges Tab)
    => Specific Challenge Detail Screen (optional future development)


## Wireframes

[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
