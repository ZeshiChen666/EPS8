
"use strict";

let LogStatus = require('./LogStatus.js');
let AnalogIO = require('./AnalogIO.js');
let DigitalIO = require('./DigitalIO.js');
let HotspotButtonStatus = require('./HotspotButtonStatus.js');
let I2CComponent = require('./I2CComponent.js');
let AnalogIOState = require('./AnalogIOState.js');
let DigitalIOState = require('./DigitalIOState.js');
let StorageStatus = require('./StorageStatus.js');

module.exports = {
  LogStatus: LogStatus,
  AnalogIO: AnalogIO,
  DigitalIO: DigitalIO,
  HotspotButtonStatus: HotspotButtonStatus,
  I2CComponent: I2CComponent,
  AnalogIOState: AnalogIOState,
  DigitalIOState: DigitalIOState,
  StorageStatus: StorageStatus,
};
