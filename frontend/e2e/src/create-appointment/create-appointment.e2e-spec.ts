import {browser, by, element, logging} from 'protractor';

describe('Create Appointment Component Tests', function() {
  it('should create appointment', function() {
    browser.get(browser.baseUrl + '/dashboard');
    element(by.id('appointment-title')).sendKeys('Lunch');
    element(by.id('appointment-location')).sendKeys('Tilburg');
    element(by.id('appointment-min-amount')).sendKeys(3);
    element(by.id('appointment-max-amount')).sendKeys(5);
    element(by.id('appointment-description')).sendKeys('Lunch');
    element(by.id('submit-button')).click();
  });

  afterEach(async () => {
    // Assert that there are no errors emitted from the browser
    const logs = await browser.manage().logs().get(logging.Type.BROWSER);
    expect(logs).not.toContain(jasmine.objectContaining({
      level: logging.Level.SEVERE,
    } as logging.Entry));
  });
});
