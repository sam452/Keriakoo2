Feature: I want to edit these Reference Commodities so that they can be correct for users.
	
Scenario Outline: Edit values
	Given I am logged in
	
	Given there are Reference Commodities
	
	| Type       | Commodity | Language |
	| government | corn   | en |
	| government | maize  | sz |


Scenario: Edit Reference Commodities
	When I go to the Reference Commodities home page
	Then I should see this reference commodity
	
	| Type       | Commodity | Language |
	| government | corn   | en |
	| government | maize  | sz |
	
	And I click on "edit"
	
	Then I should see the edit page with this reference commodity
	| type      | "government" |
	| commodity | "corn"       |
	| language  | "en"         |

	And I fill in the following:
	| type      | "private" |
	| commodity | "corn"       |
	| language  | "en"         |
	
	Then it should edit this Reference Commodity
