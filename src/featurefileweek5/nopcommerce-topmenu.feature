Feature: Demo nopcommerce's topmenu acceptance criteria
 As a user, I would like to check acceptance criteria of nop commerce topmenu

 Background: User is on given URL
 When        User type URL https://demo.nopcommerce.com
 And         User click on enter button
 Then        User is on given URL

 Scenario: Verify that user can navigate to book category
 When      User is on given URL
 And       Click on book tab Top menu
 Then      User is navigate to book category page

 Scenario: Verify that user can see the book category eith filters and list of products
 When      User is on given URL
 And       Click on book tab on Top menu
 And       Check filtsers and List tab
 Then      Book category page is displayed with filters and list tabs

 Scenario: Verify that user can see filer "Sort by" on book page
 When      User is on book category page
 And       Check " Sort by " filter is present
 Then      "Sort by " filter is available on book page

 Scenario: Verify that user can see "Display" filter on book category page
 When      User is on book category page
 And       Check "Display" filter is present
 Then      "Display" filter is available on book category page

 Scenario: Verify that user can see "Grid" tab on book category page
 When      User is on book category page
 And       Check "Grid" tab is present
 Then      "Grid" tab is available on book category page

 Scenario: Verify that user can see "List" tab on book categorty page
 When      User is on bookm category page
 And       Check "List" tab is present
 Then      "list" tab is present on book category page

 Scenario: Verify that user can see "Name: A to Z " selection is present in "Sort by" filter
 When      User is on book category page
 And       Click on "Sort by" filter
 And       Check "Name: A to Z " selection is present
 Then      "Name: A to Z " selection is present in "Sort by" filter

 Scenario: Verify that user can see "Name: Z to A" selection is present i "Sort by" filter
 When      User is on book category page
 And       Click on "sort by  " filter
 And       Check "Name: Z to A " selection is present
 Then      "Name: Z to A " selection is present in "Sort by " filter

 Scenario: Verify that user can see "Name A to z " filter is functioning as expected(Note: Product are filtered in alphabetical order)
 When     User is on book category page
 And      Click on "Sort by" filter
 And      select "Name: A to Z" filter
 Then     All product are displayed in alphabetical order




