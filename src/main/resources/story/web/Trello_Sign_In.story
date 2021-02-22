Description: Sign In, Composite and Nested steps

!-- GivenStories: story/web/Trello_Sign_Up.story

Scenario: Sign In
Given I am on the main application page
When I click on an element by the xpath '//a[text()="Log in"]'
When I fill <Useremail>, <Password> in registration form
When I wait until element located `By.xpath(//*[@id="login-submit"])` appears
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until element located `By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"])` appears
When I find <= '1' elements by By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"]) and for each element do
|step|
|When I click on element located `By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"])`|
Then the text '123' exists
Then the text 'Team' exists
Examples:
|Useremail          			 |Password      |
|elenatest@yopmail.com           |TestTest123   |

Scenario: Verify user Profile 
Given I am on a page with the URL 'https://trello.com/testtest46716570/boards'
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I wait until element located `By.xpath(//*[@data-test-id="header-member-menu-profile"])` appears
Then the text 'elenatest@yopmail.com' exists
Then the text 'Test' exists

Scenario: Visual test of a Templates page
Given I am on a page with the URL 'https://trello.com/testtest46716570/boards'
When I wait until element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Templates"])` appears
When I click on element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Templates"])`
When I wait until element located `By.xpath(//*[@id="content"]//descendant::h1[text()="Featured Categories"])` appears
When I change context to element located `By.xpath(//*[@class="all-boards"]/descendant::a[@title]/descendant::img[@alt="Business Icon"])`
When I compare against baseline with `Template1`

Scenario: Visual test of a Education page
Given I am on a page with the URL 'https://trello.com/templates'
When I wait until element located `By.xpath(//*[@class="all-boards"]/descendant::a[@title]/descendant::img[@alt="Business Icon"])` appears
When I click on element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Education"])`
When I wait until element located `By.xpath(//*[@id="content"]//descendant::span[text()="Education Templates"])` appears
When I change context to element located `By.xpath(//*[@class="all-boards"]/descendant::h1[@class]/descendant::img[@alt="Education Icon"])`
When I compare against baseline with `Education1`

Scenario: Visual test of a Remote Work page
Given I am on a page with the URL 'https://trello.com/templates/education'
When I wait until element located `By.xpath(//*[@class="all-boards"]/descendant::h1[@class]/descendant::img[@alt="Education Icon"])` appears
When I click on element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Remote Work"])`
When I wait until element located `By.xpath(//*[@id="content"]//descendant::a[text()="Remote Work"])` appears
When I change context to element located `By.xpath(//*[@id="content"]//descendant::a[@class]/descendant::div[@title="Sarah Costello @ TalentHub"])`
When I compare against baseline with `Remote-work1`

Scenario: Visual test of a Team Management page
Given I am on a page with the URL 'https://trello.com/templates/remote-work'
When I wait until element located `By.xpath(//*[@id="content"]//descendant::a[@class]/descendant::div[@title="Sarah Costello @ TalentHub"])` appears
When I click on element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Team Management"])`
When I wait until element located `By.xpath(//*[@class="all-boards"]/descendant::h1[@class]/descendant::img[@alt="Team Management Icon"])` appears
When I change context to element located `By.xpath(//*[@class="all-boards"]/descendant::h1[@class]/descendant::img[@alt="Team Management Icon"])`
When I compare against baseline with `Team-management1`

Scenario: Visual test of a Boards page
Given I am on a page with the URL 'https://trello.com/templates/team-management'
When I wait until element located `By.xpath(//*[@class="all-boards"]/descendant::h1[@class]/descendant::img[@alt="Team Management Icon"])` appears
When I click on element located `By.xpath(//*[@id="content"]/descendant::a[@class="_1hc34_9rc6xcjf"]/descendant::span[text()="Boards"])`
When I wait until element located `By.xpath(//*[@id="popover-boundary"]/descendant::span[@aria-label="TemplateBoardIcon"])` appears
When I change context to element located `By.xpath(//*[@id="popover-boundary"]/descendant::span[@aria-label="TemplateBoardIcon"])`
When I compare against baseline with `TemplateBoardIcon1`

!-- Scenario: Use API for board creation
!-- When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=${key}&token=${token}&name=${boardName}'
!-- Then `${responseCode}` is equal to `200`