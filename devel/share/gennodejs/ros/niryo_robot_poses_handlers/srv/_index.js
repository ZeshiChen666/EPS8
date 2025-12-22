
"use strict";

let GetWorkspacePoints = require('./GetWorkspacePoints.js')
let GetTransformPose = require('./GetTransformPose.js')
let GetDynamicFrame = require('./GetDynamicFrame.js')
let ManageDynamicFrame = require('./ManageDynamicFrame.js')
let GetWorkspaceRobotPoses = require('./GetWorkspaceRobotPoses.js')
let ManageWorkspace = require('./ManageWorkspace.js')
let GetWorkspaceRatio = require('./GetWorkspaceRatio.js')
let GetTargetPose = require('./GetTargetPose.js')
let GetWorkspaceMatrixPoses = require('./GetWorkspaceMatrixPoses.js')
let GetPose = require('./GetPose.js')
let ManagePose = require('./ManagePose.js')

module.exports = {
  GetWorkspacePoints: GetWorkspacePoints,
  GetTransformPose: GetTransformPose,
  GetDynamicFrame: GetDynamicFrame,
  ManageDynamicFrame: ManageDynamicFrame,
  GetWorkspaceRobotPoses: GetWorkspaceRobotPoses,
  ManageWorkspace: ManageWorkspace,
  GetWorkspaceRatio: GetWorkspaceRatio,
  GetTargetPose: GetTargetPose,
  GetWorkspaceMatrixPoses: GetWorkspaceMatrixPoses,
  GetPose: GetPose,
  ManagePose: ManagePose,
};
