@javascript
Feature: User can become a Subscriber
    As a registered User,
    In order to be able to see premium content,
    I would like to become a Subscriber of the service.

    As an Editor,
    In order to increase the revenue flow,
    I would like to charge my readers for the subscription.
    PT: https://www.pivotaltracker.com/story/show/159790887

    Background:
        Given the following user exists
            | email          | role       |
            | pablo@test.com | basic_user |
            | sub@scriber.se | subscriber |

    Scenario: Basic_user presses button to become a Subscriber
        When I am logged in as 'pablo@test.com'
        And I am on the 'My account' page
        Then I should see 'basic_user'
        #Then stop
        And I click 'Pay with Card' button in the "Become a subscriber" section
        Then stop
        Then I should see 'You have succesfully subscribed to D-pressed'
        Then I should see 'subscriber'
        And my user role is 'subscriber'
        And I should be on the 'My account' page

    Scenario: Subcsriber presses button to become a Subscriber
        When I am logged in as 'sub@scriber.se'
        And I am on the 'My account' page
        Then I should see 'subscriber'
        And I click 'Subscribe' button
        Then I should see 'You are already subscribed'
