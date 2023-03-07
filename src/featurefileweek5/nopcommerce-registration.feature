Feature:  Nopcommerce Registration
  As a user, I want to check the Registration functionality of Nopcommerce

 Background: I am on Nopcommerce registration page
 Given       I open the Google Chrom browser
 When        I open the URL https://demo.nopcommerce.com/register
 Then        I am on Nopcommerce Registration page

 Scenario Outline: I should not be able to register with invalid data on mandatory field (*) on registration page
 When              I enter  first name "<First Name>"
 And               I enter last name "<Last Name>"
 And               I enter email address "<Email>"
 And               I enter password "<Password>"
 And               I enter confirm password "<Confirm Password>"
 And               Click on registration button
 Then              I can see an error message "<Error message>"
 And               I am not able to register

 Examples:
 | First Name  | Last Name   |  Email             | Password | Confirm Password | Error message                             |
 |""           | bakshi      | bakshi@gmail.com   | 456897   | 456897           | please enter valid fisrt name             |
 |Rohan        | ""          | bakshi@gmail.com   | 456897   | 456897           | please enter valid last name              |
 |Rohan        | bakshi      |  ""                | 456897   | 456897           | please enter valid email address          |
 |Rohan        | bakshi      | bakshi@gmail.com   |""        | 456897           | password is required                      |
 |Rohan        | bakshi      | bakshi@gmail.com   | 456897   | ""               | confirm password is required              |
 |Rohan        | bakshi      | bakshi@gmail.com   | 456897   | 45689            | password and confirm password do not match|
 |Rohan        | bakshi      | bakshi@gmail.com   | 45689    | ""               | minimum 6 character padssword is required |
 |""           | ""          | ""                 | ""       | ""               | mandatory(*) field is required            |

Scenario: I should be able to selesct any radio button from Gender Lable of Your personal details section
Given     I am on Gender lable of your personal details section
When      I select "Male" radio button
And       I select "Female" radio button
Then      I am able to select any one of radio button

Scenario Outline: I should be able to select day,month and year from dropdown list fron date of birth field
 Given            I am on date of birth field ob yoiur personal detail section
 When             I select day "<Day>"
 And              I select month "<Month>"
 And              I select year "<Year>"
 Then             I am able to sselect Day,Month and Year from dropdown list

 Examples:
 | Day   |   Month  |  Year  |
 | 11    |  November| 1989   |

 Scenario: I should be able to check and uncheck Newsletter box on option section
  Given    I am on Newsletter label on options section
  When     I click on Newsletter check box
  And      I again click on Newsletter check box
  Then     I was able to check and uncheck the box next to Newsletter label

 Scenario: I should be able to register with valid mandatory (*) field data on registration page
  When     I enter First name "Rohan"
  And      I enter Last Name "bakshi"
  And      I enter Email "bakshi@gamail.com"
  And      I enter password "456897"
  And      I enter confirm password "456897"
  And      I click on Register button
  Then     I was able to register successfully


