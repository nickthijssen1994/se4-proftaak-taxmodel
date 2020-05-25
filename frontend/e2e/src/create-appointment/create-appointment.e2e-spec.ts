import {browser, by, element, logging} from 'protractor';

describe('Create Appointment Component Tests', function() {
  it('should create appointment', function() {
    browser.get(browser.baseUrl + '/dashboard');
    element(by.id('title')).sendKeys('Lunch');
    element(by.id('location')).sendKeys('Tilburg');
    element(by.id('submit-button')).click();

    expect(element(by.binding('latest')).getText()).
    toEqual('5');
  });

  afterEach(async () => {
    // Assert that there are no errors emitted from the browser
    const logs = await browser.manage().logs().get(logging.Type.BROWSER);
    expect(logs).not.toContain(jasmine.objectContaining({
      level: logging.Level.SEVERE,
    } as logging.Entry));
  });
});
