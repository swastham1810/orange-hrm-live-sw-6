Feature: Login Test Feature
  As a User
  I should be able to login successfully with valid credentials
  I should not be able to login with invalid credentials
  I should able to logout successfully
  I should see the logo on homepage

  Background: User is on Login page


#1. verifyUserShouldLoginSuccessFully()
#Enter username
#Enter password
#Click on Login Button
#Verify "WelCome" Message
 #@Asha @Sanity @Smoke @Regression
  Scenario: Verify User Should Login SuccessFully
    When      User Enter Username "Admin"
    And       User Enter password "admin123"
    And       User click on login button
    And       User login to Application successfully
    Then      User Should able to login successfully and verify the text "Dashboard"

#2. verifyThatTheLogoDisplayOnHomePage()
#Login To The application
#Verify Logo is Displayed
  #@Asha @Smoke @Regression
  Scenario: Verify That The Logo Display On HomePage
    When      User Enter Username "Admin"
    And       User Enter password "admin123"
    And       User click on login button
    And       User login to Application successfully
    Then      User Should able to see the OrangeHRM logo

#3. verifyUserShouldLogOutSuccessFully()
#Login To The application
#Click on User Profile logo
#Mouse hover on "Logout" and click
#Verify the text "Login Panel" is displayed
 # @Asha @Regression
  Scenario: Verify User Should LogOut SuccessFully
    When      User Enter Username "Admin"
    And       User Enter password "admin123"
    And       User click on login button
    And       User login to Application successfully
    And       User click on User Profile logo
    And       User mouse hover and click on logout button
    Then      User should navigate to the login page and verify the text "Login"
#4. verifyErrorMessageWithInvalidCredentials()
#Enter username <username>
#Enter password <password>
#Click on Login Button
#Verify Error message <errorMessage>
 ## @Asha @Regression
  Scenario Outline: User should get error message with invalid credentials
    When    User enter Username1"<username>"
    And     User enter password1"<password>"
    And     User click on login button
    Then    User should get error message "<errorMessage>" depends on username "<username>" and password "<password>"
    Examples:
      | username          |  | password |  | errorMessage        |
      |                   |  |          |  | Required            |
      | test123@gmail.com |  |          |  | Required            |
      |                   |  | test123  |  | Required            |
      | test123@gmail.com |  | test123  |  | Invalid credentials |


