Feature: Pet tests for creation, updation and deletion.
  Swagger API tests for pet creation and updation.

  Scenario Outline: Create a pet with details and verify if it is created with required details.
    Given Create a pet with Name <Name> Id <Id> Category <Category> Tags <Tags> Status <Status> PhotoUrls <PhotoUrls>
    Then Verify details for <Id>
    Examples:
    |Name    |Id    | Category| Tags           | Status    |PhotoUrls           |
    | Pet1   | 1232 | cat    | t1;t2;t45      | available | www.come;www.245.com|
    | Pet2   | 1230 | dog    | t35;t2;t45     | pending   | www.come;www.245.com|
    | Pet3   | 1231 | cat    | t67654;t2;t45  | sold      | www.come;www.245.com|
    | Pet31   | 123231 | Horse    | t1;t2;t45  | pending | www.come;www.245.com|
    | Pet41   | 123241 | Horse    | t1;t2;t45  | sold | www.come;www.245.com|
    | Pet51   | 123251 | Horse    | t1;t2;t45  | pending | www.come;www.245.com|
    | Pet61   | 123261 | Horse    | t1;t2;t45  | sold | www.come;www.245.com|
    | Pet71   | 123271 | Horse    | t1;t2;t45  | available | www.come;www.245.com|

  Scenario Outline: Create a pet with details and update the name and verify if the name is updated or not and at the end delete the Pet and verify if it is deleted.
    Given Create a pet with Name <Name> Id <Id> Category <Category> Tags <Tags> Status <Status> PhotoUrls <PhotoUrls>
    Then Update the name to Pet200
    Then Verify details for <Id>
    Then Delete the Pet <Id>
    Then Verify details for <Id>
    Examples:
      |Name     |Id      | Category | Tags       | Status    |PhotoUrls            |
      | Pet21   | 123221 | Horse    | t1;t2;t45  | available | www.come;www.245.com|
      | Pet3   | 1231 | cat    | t67654;t2;t45  | sold      | www.come;www.245.com|
      | Pet31   | 123231 | Horse    | t1;t2;t45  | pending | www.come;www.245.com|
      | Pet41   | 123241 | Dog    | t1;t2;t45  | sold | www.come;www.245.com|
      | Pet51   | 123251 | Cat    | t1;t2;t45  | pending | www.come;www.245.com|
      | Pet61   | 123261 | Horse    | t1;t2;t45  | sold | www.come;www.245.com|
      | Pet71   | 123271 | Horse    | t1;t2;t45  | available | www.come;www.245.com|
