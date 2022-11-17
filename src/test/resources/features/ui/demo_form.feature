Feature: Demo Form

  Demo Form is a web UI form example for training purposes.
  Please see https://demoqa.com/automation-practice-form.
  1) It is necessary to complete scenario to verify form submit with minimum fields
  2) Add alternative scenarios to validate error messages

  # Scenerio: enviar formulario con requisitos mínimos
  # Given the URL "https://demoqa.com/automation-practice-form"
  # Whem I send the form with DefaultUser data
  # Then The Page says 'Frist Name'

  Scenario: submit form with minimum requirements
    Given a DefaultUser
    When visits PracticeFormPage
    And fills "First Name" with "juan"
    And fills "Last Name" with "perez"
    And clicks on "gender-radio-1"
    And fills "Mobile Number" with "123456789"
    And clicks on "submit"
    Then The Page says "123456789"


  Scenario: submit form with full requirements
    Given a DefaultUser
    When visits PracticeFormPage
    And fills "First Name" with "Edinson Ismael"
    And fills "Last Name" with "Quevedo Holguin"
    And fills "name@example.com" with "quevedo.edinson@gmail.com"
    And clicks on "gender-radio-1"
    And fills "Mobile Number" with "950457355"
    And fills "Current Address" with "Jr. Los Pinos 787 KM.11 - La Libertad"
    And clicks on "submit"
    Then The Page says "950457355"

