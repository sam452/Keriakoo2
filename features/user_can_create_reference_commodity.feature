Feature: I want to have Reference Commodities that I can refer to so they can be used elsewhere. That way 
	they can be updated in one place. I want to create and edit these Commodities.
	
Background:
	Given I am logged in as the following user:
	| name | "Testy McUserton" |
	| password | "please" |
	| email | "testy@userton.com" |

Scenario: Adding Reference Commodities
	When I go to the new Reference Commodities page
	And I fill in the following:
	| type      | "government" |
	| commodity | "corn"       |
	| language  | "en"         |
	Then it should create a new Reference Commodity
