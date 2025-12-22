
"use strict";

let SetProgramAutorun = require('./SetProgramAutorun.js')
let GetProgram = require('./GetProgram.js')
let DeleteProgram = require('./DeleteProgram.js')
let CreateProgram = require('./CreateProgram.js')
let UpdateProgram = require('./UpdateProgram.js')
let GetProgramAutorunInfos = require('./GetProgramAutorunInfos.js')
let GetProgramList = require('./GetProgramList.js')

module.exports = {
  SetProgramAutorun: SetProgramAutorun,
  GetProgram: GetProgram,
  DeleteProgram: DeleteProgram,
  CreateProgram: CreateProgram,
  UpdateProgram: UpdateProgram,
  GetProgramAutorunInfos: GetProgramAutorunInfos,
  GetProgramList: GetProgramList,
};
