
var CalculatorPage = function() {

  this.get = function() {
    browser.get('http://juliemr.github.io/protractor-demo/');
  };

  this.setFirstValue = function(value) {
    element(by.model('first')).sendKeys(value);
  };

  this.setSecondValue = function(value) {
    element(by.model('second')).sendKeys(value);
  };

  this.setOperator = function(value) {
    element(by.model('operator')).element(by.cssContainingText('option', value)).click();
  };

  this.getResult = function() {
    return element(by.binding('latest')).getText(); 
  };

  this.getfirstHistoryResult = function() {
    return element(by.xpath('/html/body/div[1]/table/tbody/tr[1]/td[3]')).getText();
  };

  this.clickGo = function() {
    element(by.id('gobutton')).click();
  }
};

module.exports = CalculatorPage;
