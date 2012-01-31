Feature: I want to have Reference Units that I can refer to so they can be used elsewhere. That way 
	they can be updated in one place. I want to create and edit these Units.
	
Background:
	Given I am logged in as the following user:
	| name | "Testy McUserton" |
	| password | "please" |
	| email | "testy@userton.com" |

Scenario: Adding Reference Units
	When I go to the new Reference Units page
	And I fill in the following:
	| commodity | "corn" |
	| language | "en" |
	| wholesale_unit | "xton" |
	| retail_unit | "xliter" |
	| receipt_unit | "dollar" |
	Then it should create a new Reference Unit
