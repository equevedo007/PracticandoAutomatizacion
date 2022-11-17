Feature: Demo Form

  Demo Form is a web UI form example for training purposes.
  Please see https://demoqa.com/automation-practice-form.
  1) It is necessary to complete scenario to verify form submit with minimum fields
  2) Add alternative scenarios to validate error messages

  Scenario: submit form with minimum requirements
    Given a DefaultUser
    When visits PracticeFormPage
    And fills "First Name" with "juan"
    And fills "Last Name" with "perez"
    And clicks on "gender-radio-1"
    And fills "Mobile Number" with "123456789"
    And clicks on "submit"
    Then The Page says "123456789"



  Scenario: validate error messages
    Given a DefaultUser
    When visits PracticeFormPage
    And fills "First Name" with "Edinson Ismael"
    And fills "Last Name" with "Quevedo Holguin"
    And fills "name@example.com" with "quevedo.edinson@gmail.com"
    And clicks on "gender-radio-1"
    And fills "Mobile Number" with "950457355"
    And clicks on "submit"
    Then The Page says "950457355"
