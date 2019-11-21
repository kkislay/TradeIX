Feature: Pet tests for creation, updation and deletion.
  Swagger API tests for pet creation and updation

  Scenario Outline: Create a pet with details and verify if it is created with required details
    Given Create a pet with Name <Name> Id <Id> Category <Category> Tags <Tags> Status <Status> PhotoUrls <PhotoUrls>
    Then Verify details for <Id>
    Examples:
    |Name|Id| Category| Tags| Status|PhotoUrls|
    | Pet1   | 1232 | cat1 | t1;t2;t45  | available | www.come;www.245.com|
    | Pet2   | 1230 | cat1 | t35;t2;t45  | available | www.come;www.245.com|
    | Pet3   | 1231 | cat1 | t67654;t2;t45  | available | www.come;www.245.com|

  Scenario Outline: Create a pet with details and update the name and verify if the name is updated or not
    Given Create a pet with Name <Name> Id <Id> Category <Category> Tags <Tags> Status <Status> PhotoUrls <PhotoUrls>
    Then Update the name to Pet200
    Then Verify details for 1232
    Then Delete the Pet <Id>
    Then Verify details for <Id>
    Examples:
      |Name|Id| Category| Tags| Status|PhotoUrls|
      | Pet1   | 1232 | cat1 | t1;t2;t45  | available | www.come;www.245.com|