Description: Sign Up

Scenario: Create account
Given I am on the main application page
When I click on an element by the xpath '//a[@data-analytics-button="whiteSignupHeroButton"]' 
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]//descendant::span[text()="Sign up"])` 
Then the page with the URL containing 'https://id.atlassian.com/signup?application=trello&continue=https://trello.com/auth/atlassian/callback?' is loaded

Examples:
|email                             |fullname                  |password                                 |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[abcdefghigk]{10}')}|
|pautsina.elena123@yopmail.com     | Alena Pautsina           |PautsinaAlena1							|   