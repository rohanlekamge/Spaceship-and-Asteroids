Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SpaceShip))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SpaceShip))==(Machine(SpaceShip));
  Level(Machine(SpaceShip))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SpaceShip)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SpaceShip))==(Space)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SpaceShip))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SpaceShip))==(?);
  List_Includes(Machine(SpaceShip))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SpaceShip))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SpaceShip))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SpaceShip))==(?);
  Context_List_Variables(Machine(SpaceShip))==(?);
  Abstract_List_Variables(Machine(SpaceShip))==(?);
  Local_List_Variables(Machine(SpaceShip))==(gameMovements,takenRouteOfGame,noOfCollisionsInGame,powerValue,positionY,positionX);
  List_Variables(Machine(SpaceShip))==(gameMovements,takenRouteOfGame,noOfCollisionsInGame,powerValue,positionY,positionX);
  External_List_Variables(Machine(SpaceShip))==(gameMovements,takenRouteOfGame,noOfCollisionsInGame,powerValue,positionY,positionX)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SpaceShip))==(?);
  Abstract_List_VisibleVariables(Machine(SpaceShip))==(?);
  External_List_VisibleVariables(Machine(SpaceShip))==(?);
  Expanded_List_VisibleVariables(Machine(SpaceShip))==(?);
  List_VisibleVariables(Machine(SpaceShip))==(?);
  Internal_List_VisibleVariables(Machine(SpaceShip))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SpaceShip))==(btrue);
  Gluing_List_Invariant(Machine(SpaceShip))==(btrue);
  Expanded_List_Invariant(Machine(SpaceShip))==(btrue);
  Abstract_List_Invariant(Machine(SpaceShip))==(btrue);
  Context_List_Invariant(Machine(SpaceShip))==(btrue);
  List_Invariant(Machine(SpaceShip))==(positionX: spaceXRange & positionY: spaceYRange & positionX|->positionY: emptySpaceGrid & powerValue: NAT & noOfCollisionsInGame: NAT & takenRouteOfGame: seq(emptySpaceGrid) & gameMovements: seq(MOVEMENT_VALUES))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SpaceShip))==(btrue);
  Abstract_List_Assertions(Machine(SpaceShip))==(btrue);
  Context_List_Assertions(Machine(SpaceShip))==(btrue);
  List_Assertions(Machine(SpaceShip))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SpaceShip))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SpaceShip))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SpaceShip))==(powerValue,noOfCollisionsInGame,positionX,positionY,takenRouteOfGame,gameMovements:=initialPowerReserve,0,prj1(spaceXRange,spaceYRange)(homeBase),prj2(spaceXRange,spaceYRange)(homeBase),[homeBase],<>);
  Context_List_Initialisation(Machine(SpaceShip))==(skip);
  List_Initialisation(Machine(SpaceShip))==(powerValue:=initialPowerReserve || noOfCollisionsInGame:=0 || positionX:=prj1(spaceXRange,spaceYRange)(homeBase) || positionY:=prj2(spaceXRange,spaceYRange)(homeBase) || takenRouteOfGame:=[homeBase] || gameMovements:=<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SpaceShip))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(SpaceShip),Machine(Space))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SpaceShip))==(btrue);
  List_Constraints(Machine(SpaceShip))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SpaceShip))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute,DockedAtStarbase,GameStatus,takenMovements,resetGame);
  List_Operations(Machine(SpaceShip))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute,DockedAtStarbase,GameStatus,takenMovements,resetGame)
END
&
THEORY ListInputX IS
  List_Input(Machine(SpaceShip),MoveUp)==(?);
  List_Input(Machine(SpaceShip),MoveDown)==(?);
  List_Input(Machine(SpaceShip),MoveForward)==(?);
  List_Input(Machine(SpaceShip),MoveBackward)==(?);
  List_Input(Machine(SpaceShip),EngageWarpDrive)==(newXPosition,newYPosition);
  List_Input(Machine(SpaceShip),MissionStatus)==(?);
  List_Input(Machine(SpaceShip),MissionRoute)==(?);
  List_Input(Machine(SpaceShip),DockedAtStarbase)==(?);
  List_Input(Machine(SpaceShip),GameStatus)==(?);
  List_Input(Machine(SpaceShip),takenMovements)==(?);
  List_Input(Machine(SpaceShip),resetGame)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SpaceShip),MoveUp)==(report,movement);
  List_Output(Machine(SpaceShip),MoveDown)==(report,movement);
  List_Output(Machine(SpaceShip),MoveForward)==(report,movement);
  List_Output(Machine(SpaceShip),MoveBackward)==(report,movement);
  List_Output(Machine(SpaceShip),EngageWarpDrive)==(report,movement);
  List_Output(Machine(SpaceShip),MissionStatus)==(currentLocation,currentPower,asteroidCollisions);
  List_Output(Machine(SpaceShip),MissionRoute)==(route);
  List_Output(Machine(SpaceShip),DockedAtStarbase)==(dockedStatus);
  List_Output(Machine(SpaceShip),GameStatus)==(status);
  List_Output(Machine(SpaceShip),takenMovements)==(allMovements);
  List_Output(Machine(SpaceShip),resetGame)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SpaceShip),MoveUp)==(report,movement <-- MoveUp);
  List_Header(Machine(SpaceShip),MoveDown)==(report,movement <-- MoveDown);
  List_Header(Machine(SpaceShip),MoveForward)==(report,movement <-- MoveForward);
  List_Header(Machine(SpaceShip),MoveBackward)==(report,movement <-- MoveBackward);
  List_Header(Machine(SpaceShip),EngageWarpDrive)==(report,movement <-- EngageWarpDrive(newXPosition,newYPosition));
  List_Header(Machine(SpaceShip),MissionStatus)==(currentLocation,currentPower,asteroidCollisions <-- MissionStatus);
  List_Header(Machine(SpaceShip),MissionRoute)==(route <-- MissionRoute);
  List_Header(Machine(SpaceShip),DockedAtStarbase)==(dockedStatus <-- DockedAtStarbase);
  List_Header(Machine(SpaceShip),GameStatus)==(status <-- GameStatus);
  List_Header(Machine(SpaceShip),takenMovements)==(allMovements <-- takenMovements);
  List_Header(Machine(SpaceShip),resetGame)==(resetGame)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(SpaceShip),MoveUp)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue));
  List_Precondition(Machine(SpaceShip),MoveDown)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue));
  List_Precondition(Machine(SpaceShip),MoveForward)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue));
  List_Precondition(Machine(SpaceShip),MoveBackward)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue));
  List_Precondition(Machine(SpaceShip),EngageWarpDrive)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & newXPosition: NAT1 & newYPosition: NAT1 & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue));
  List_Precondition(Machine(SpaceShip),MissionStatus)==(btrue);
  List_Precondition(Machine(SpaceShip),MissionRoute)==(btrue);
  List_Precondition(Machine(SpaceShip),DockedAtStarbase)==(dockedStatus: DOCKED_STATUS_VALUES);
  List_Precondition(Machine(SpaceShip),GameStatus)==(status: GAME_STATUS_VALUES);
  List_Precondition(Machine(SpaceShip),takenMovements)==(btrue);
  List_Precondition(Machine(SpaceShip),resetGame)==(positionX|->positionY = starBase or powerValue<normalMovePowerValue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SpaceShip),resetGame)==(positionX|->positionY = starBase or powerValue<normalMovePowerValue | powerValue,noOfCollisionsInGame,positionX,positionY,takenRouteOfGame,gameMovements:=initialPowerReserve,0,prj1(spaceXRange,spaceYRange)(homeBase),prj2(spaceXRange,spaceYRange)(homeBase),[homeBase],<>);
  Expanded_List_Substitution(Machine(SpaceShip),takenMovements)==(btrue | allMovements:=gameMovements);
  Expanded_List_Substitution(Machine(SpaceShip),GameStatus)==(status: GAME_STATUS_VALUES | positionX|->positionY = starBase ==> status:=GAME_WON [] not(positionX|->positionY = starBase) ==> (powerValue<normalMovePowerValue ==> status:=GAME_LOST [] not(powerValue<normalMovePowerValue) ==> status:=GAME_NOT_OVER));
  Expanded_List_Substitution(Machine(SpaceShip),DockedAtStarbase)==(dockedStatus: DOCKED_STATUS_VALUES | positionX|->positionY = starBase ==> dockedStatus:=YES [] not(positionX|->positionY = starBase) ==> dockedStatus:=NO);
  Expanded_List_Substitution(Machine(SpaceShip),MissionRoute)==(btrue | route:=takenRouteOfGame);
  Expanded_List_Substitution(Machine(SpaceShip),MissionStatus)==(btrue | currentLocation,currentPower,asteroidCollisions:=positionX|->positionY,powerValue,noOfCollisionsInGame);
  Expanded_List_Substitution(Machine(SpaceShip),EngageWarpDrive)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & newXPosition: NAT1 & newYPosition: NAT1 & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue) | powerValue>=warpDrivePowerValue ==> (newXPosition|->newYPosition: spaceGrid ==> (newXPosition = positionX & newYPosition = positionY ==> report:=CANNOT_WARP_TO_THE_SAME_POSITION [] not(newXPosition = positionX & newYPosition = positionY) ==> (size(takenRouteOfGame) = 1 & newXPosition|->newYPosition = starBase ==> report:=CANNOT_IMMEDIATELY_WARP_INTO_STARBASE [] not(size(takenRouteOfGame) = 1 & newXPosition|->newYPosition = starBase) ==> (not(newXPosition|->newYPosition: asteroids) ==> (powerValue-warpDrivePowerValue>=0 ==> powerValue,positionX,positionY,takenRouteOfGame,gameMovements,report,movement:=powerValue-warpDrivePowerValue,newXPosition,newYPosition,takenRouteOfGame<-(newXPosition|->newYPosition),gameMovements<-WARP,SUCCESSFULLY_MOVED,WARP [] not(powerValue-warpDrivePowerValue>=0) ==> powerValue,positionX,positionY,takenRouteOfGame,gameMovements,report,movement:=0,newXPosition,newYPosition,takenRouteOfGame<-(newXPosition|->newYPosition),gameMovements<-WARP,SUCCESSFULLY_MOVED,WARP) [] not(not(newXPosition|->newYPosition: asteroids)) ==> report:=CANNOT_WARP_INTO_ASTEROID))) [] not(newXPosition|->newYPosition: spaceGrid) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(powerValue>=warpDrivePowerValue) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveBackward)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue) | powerValue>=normalMovePowerValue ==> (positionX-1|->positionY: spaceGrid ==> (not(positionX-1|->positionY: asteroids) ==> (powerValue-normalMovePowerValue>=0 ==> positionX,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionX-1,powerValue-normalMovePowerValue,takenRouteOfGame<-(positionX-1|->positionY),gameMovements<-MOVE_BACKWARD,SUCCESSFULLY_MOVED,MOVE_BACKWARD [] not(powerValue-normalMovePowerValue>=0) ==> positionX,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionX-1,0,takenRouteOfGame<-(positionX-1|->positionY),gameMovements<-MOVE_BACKWARD,SUCCESSFULLY_MOVED,MOVE_BACKWARD) [] not(not(positionX-1|->positionY: asteroids)) ==> (powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 ==> powerValue,noOfCollisionsInGame,report,movement:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_BACKWARD [] not(powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0) ==> powerValue,noOfCollisionsInGame,report,movement:=0,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_BACKWARD)) [] not(positionX-1|->positionY: spaceGrid) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(powerValue>=normalMovePowerValue) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveForward)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue) | powerValue>=normalMovePowerValue ==> (positionX+1|->positionY: spaceGrid ==> (not(positionX+1|->positionY: asteroids) ==> (powerValue-normalMovePowerValue>=0 ==> positionX,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionX+1,powerValue-normalMovePowerValue,takenRouteOfGame<-(positionX+1|->positionY),gameMovements<-MOVE_FORWARD,SUCCESSFULLY_MOVED,MOVE_FORWARD [] not(powerValue-normalMovePowerValue>=0) ==> positionX,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionX+1,0,takenRouteOfGame<-(positionX+1|->positionY),gameMovements<-MOVE_FORWARD,SUCCESSFULLY_MOVED,MOVE_FORWARD) [] not(not(positionX+1|->positionY: asteroids)) ==> (powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 ==> powerValue,noOfCollisionsInGame,report,movement:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_FORWARD [] not(powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0) ==> powerValue,noOfCollisionsInGame,report,movement:=0,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_FORWARD)) [] not(positionX+1|->positionY: spaceGrid) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(powerValue>=normalMovePowerValue) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveDown)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue) | powerValue>=normalMovePowerValue ==> (positionX|->positionY-1: spaceGrid ==> (not(positionX|->positionY-1: asteroids) ==> (powerValue-normalMovePowerValue>=0 ==> positionY,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionY-1,powerValue-normalMovePowerValue,takenRouteOfGame<-(positionX|->positionY-1),gameMovements<-MOVE_DOWN,SUCCESSFULLY_MOVED,MOVE_DOWN [] not(powerValue-normalMovePowerValue>=0) ==> positionY,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionY-1,0,takenRouteOfGame<-(positionX|->positionY-1),gameMovements<-MOVE_DOWN,SUCCESSFULLY_MOVED,MOVE_DOWN) [] not(not(positionX|->positionY-1: asteroids)) ==> (powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 ==> powerValue,noOfCollisionsInGame,report,movement:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_DOWN [] not(powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0) ==> powerValue,noOfCollisionsInGame,report,movement:=0,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_DOWN)) [] not(positionX|->positionY-1: spaceGrid) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(powerValue>=normalMovePowerValue) ==> report:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(SpaceShip),MoveUp)==(report: REPORT_VALUES & movement: MOVEMENT_VALUES & not(positionX|->positionY = starBase or powerValue<normalMovePowerValue) | powerValue>=normalMovePowerValue ==> (positionX|->positionY+1: spaceGrid ==> (not(positionX|->positionY+1: asteroids) ==> (powerValue-normalMovePowerValue>=0 ==> positionY,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionY+1,powerValue-normalMovePowerValue,takenRouteOfGame<-(positionX|->positionY+1),gameMovements<-MOVE_UP,SUCCESSFULLY_MOVED,MOVE_UP [] not(powerValue-normalMovePowerValue>=0) ==> positionY,powerValue,takenRouteOfGame,gameMovements,report,movement:=positionY+1,0,takenRouteOfGame<-(positionX|->positionY+1),gameMovements<-MOVE_UP,SUCCESSFULLY_MOVED,MOVE_UP) [] not(not(positionX|->positionY+1: asteroids)) ==> (powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 ==> powerValue,noOfCollisionsInGame,report,movement:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_UP [] not(powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0) ==> powerValue,noOfCollisionsInGame,report,movement:=0,noOfCollisionsInGame+1,HIT_ASTEROID,MOVE_UP)) [] not(positionX|->positionY+1: spaceGrid) ==> report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE) [] not(powerValue>=normalMovePowerValue) ==> report:=INSUFFICIENT_POWER);
  List_Substitution(Machine(SpaceShip),MoveUp)==(IF powerValue>=normalMovePowerValue THEN IF positionX|->positionY+1: spaceGrid THEN IF not(positionX|->positionY+1: asteroids) THEN IF powerValue-normalMovePowerValue>=0 THEN positionY:=positionY+1 || powerValue:=powerValue-normalMovePowerValue || takenRouteOfGame:=takenRouteOfGame<-(positionX|->positionY+1) || gameMovements:=gameMovements<-MOVE_UP || report:=SUCCESSFULLY_MOVED || movement:=MOVE_UP ELSE positionY:=positionY+1 || powerValue:=0 || takenRouteOfGame:=takenRouteOfGame<-(positionX|->positionY+1) || gameMovements:=gameMovements<-MOVE_UP || report:=SUCCESSFULLY_MOVED || movement:=MOVE_UP END ELSE IF powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 THEN powerValue:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_UP ELSE powerValue:=0 || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_UP END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MoveDown)==(IF powerValue>=normalMovePowerValue THEN IF positionX|->positionY-1: spaceGrid THEN IF not(positionX|->positionY-1: asteroids) THEN IF powerValue-normalMovePowerValue>=0 THEN positionY:=positionY-1 || powerValue:=powerValue-normalMovePowerValue || takenRouteOfGame:=takenRouteOfGame<-(positionX|->positionY-1) || gameMovements:=gameMovements<-MOVE_DOWN || report:=SUCCESSFULLY_MOVED || movement:=MOVE_DOWN ELSE positionY:=positionY-1 || powerValue:=0 || takenRouteOfGame:=takenRouteOfGame<-(positionX|->positionY-1) || gameMovements:=gameMovements<-MOVE_DOWN || report:=SUCCESSFULLY_MOVED || movement:=MOVE_DOWN END ELSE IF powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 THEN powerValue:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_DOWN ELSE powerValue:=0 || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_DOWN END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MoveForward)==(IF powerValue>=normalMovePowerValue THEN IF positionX+1|->positionY: spaceGrid THEN IF not(positionX+1|->positionY: asteroids) THEN IF powerValue-normalMovePowerValue>=0 THEN positionX:=positionX+1 || powerValue:=powerValue-normalMovePowerValue || takenRouteOfGame:=takenRouteOfGame<-(positionX+1|->positionY) || gameMovements:=gameMovements<-MOVE_FORWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_FORWARD ELSE positionX:=positionX+1 || powerValue:=0 || takenRouteOfGame:=takenRouteOfGame<-(positionX+1|->positionY) || gameMovements:=gameMovements<-MOVE_FORWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_FORWARD END ELSE IF powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 THEN powerValue:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_FORWARD ELSE powerValue:=0 || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_FORWARD END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MoveBackward)==(IF powerValue>=normalMovePowerValue THEN IF positionX-1|->positionY: spaceGrid THEN IF not(positionX-1|->positionY: asteroids) THEN IF powerValue-normalMovePowerValue>=0 THEN positionX:=positionX-1 || powerValue:=powerValue-normalMovePowerValue || takenRouteOfGame:=takenRouteOfGame<-(positionX-1|->positionY) || gameMovements:=gameMovements<-MOVE_BACKWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_BACKWARD ELSE positionX:=positionX-1 || powerValue:=0 || takenRouteOfGame:=takenRouteOfGame<-(positionX-1|->positionY) || gameMovements:=gameMovements<-MOVE_BACKWARD || report:=SUCCESSFULLY_MOVED || movement:=MOVE_BACKWARD END ELSE IF powerValue-normalMovePowerValue-asteroidHitPowerLossValue>=0 THEN powerValue:=powerValue-normalMovePowerValue-asteroidHitPowerLossValue || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_BACKWARD ELSE powerValue:=0 || noOfCollisionsInGame:=noOfCollisionsInGame+1 || report:=HIT_ASTEROID || movement:=MOVE_BACKWARD END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),EngageWarpDrive)==(IF powerValue>=warpDrivePowerValue THEN IF newXPosition|->newYPosition: spaceGrid THEN IF newXPosition = positionX & newYPosition = positionY THEN report:=CANNOT_WARP_TO_THE_SAME_POSITION ELSE IF size(takenRouteOfGame) = 1 & newXPosition|->newYPosition = starBase THEN report:=CANNOT_IMMEDIATELY_WARP_INTO_STARBASE ELSE IF not(newXPosition|->newYPosition: asteroids) THEN IF powerValue-warpDrivePowerValue>=0 THEN powerValue:=powerValue-warpDrivePowerValue || positionX:=newXPosition || positionY:=newYPosition || takenRouteOfGame:=takenRouteOfGame<-(newXPosition|->newYPosition) || gameMovements:=gameMovements<-WARP || report:=SUCCESSFULLY_MOVED || movement:=WARP ELSE powerValue:=0 || positionX:=newXPosition || positionY:=newYPosition || takenRouteOfGame:=takenRouteOfGame<-(newXPosition|->newYPosition) || gameMovements:=gameMovements<-WARP || report:=SUCCESSFULLY_MOVED || movement:=WARP END ELSE report:=CANNOT_WARP_INTO_ASTEROID END END END ELSE report:=CANNOT_MOVE_OUT_OF_KNOWN_SPACE END ELSE report:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(SpaceShip),MissionStatus)==(currentLocation:=positionX|->positionY || currentPower:=powerValue || asteroidCollisions:=noOfCollisionsInGame);
  List_Substitution(Machine(SpaceShip),MissionRoute)==(route:=takenRouteOfGame);
  List_Substitution(Machine(SpaceShip),DockedAtStarbase)==(IF positionX|->positionY = starBase THEN dockedStatus:=YES ELSE dockedStatus:=NO END);
  List_Substitution(Machine(SpaceShip),GameStatus)==(IF positionX|->positionY = starBase THEN status:=GAME_WON ELSE IF powerValue<normalMovePowerValue THEN status:=GAME_LOST ELSE status:=GAME_NOT_OVER END END);
  List_Substitution(Machine(SpaceShip),takenMovements)==(allMovements:=gameMovements);
  List_Substitution(Machine(SpaceShip),resetGame)==(powerValue:=initialPowerReserve || noOfCollisionsInGame:=0 || positionX:=prj1(spaceXRange,spaceYRange)(homeBase) || positionY:=prj2(spaceXRange,spaceYRange)(homeBase) || takenRouteOfGame:=[homeBase] || gameMovements:=<>)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SpaceShip))==(normalMovePowerValue,warpDrivePowerValue,asteroidHitPowerLossValue,initialPowerReserve);
  Inherited_List_Constants(Machine(SpaceShip))==(?);
  List_Constants(Machine(SpaceShip))==(normalMovePowerValue,warpDrivePowerValue,asteroidHitPowerLossValue,initialPowerReserve)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SpaceShip),REPORT_VALUES)==({SUCCESSFULLY_MOVED,CANNOT_MOVE_OUT_OF_KNOWN_SPACE,INSUFFICIENT_POWER,HIT_ASTEROID,CANNOT_WARP_INTO_ASTEROID,CANNOT_WARP_TO_THE_SAME_POSITION,CANNOT_IMMEDIATELY_WARP_INTO_STARBASE});
  Context_List_Enumerated(Machine(SpaceShip))==(?);
  Context_List_Defered(Machine(SpaceShip))==(?);
  Context_List_Sets(Machine(SpaceShip))==(?);
  List_Valuable_Sets(Machine(SpaceShip))==(?);
  Inherited_List_Enumerated(Machine(SpaceShip))==(?);
  Inherited_List_Defered(Machine(SpaceShip))==(?);
  Inherited_List_Sets(Machine(SpaceShip))==(?);
  List_Enumerated(Machine(SpaceShip))==(REPORT_VALUES,MOVEMENT_VALUES,DOCKED_STATUS_VALUES,GAME_STATUS_VALUES);
  List_Defered(Machine(SpaceShip))==(?);
  List_Sets(Machine(SpaceShip))==(REPORT_VALUES,MOVEMENT_VALUES,DOCKED_STATUS_VALUES,GAME_STATUS_VALUES);
  Set_Definition(Machine(SpaceShip),MOVEMENT_VALUES)==({MOVE_UP,MOVE_DOWN,MOVE_FORWARD,MOVE_BACKWARD,WARP});
  Set_Definition(Machine(SpaceShip),DOCKED_STATUS_VALUES)==({YES,NO});
  Set_Definition(Machine(SpaceShip),GAME_STATUS_VALUES)==({GAME_WON,GAME_LOST,GAME_NOT_OVER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SpaceShip))==(?);
  Expanded_List_HiddenConstants(Machine(SpaceShip))==(?);
  List_HiddenConstants(Machine(SpaceShip))==(?);
  External_List_HiddenConstants(Machine(SpaceShip))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SpaceShip))==(btrue);
  Context_List_Properties(Machine(SpaceShip))==(spaceXRange = 1..12 & spaceYRange = 1..7 & spaceGrid = spaceXRange*spaceYRange & asteroids <: spaceGrid & asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & emptySpaceGrid <: spaceGrid & emptySpaceGrid/\asteroids = {} & emptySpaceGrid\/asteroids = spaceGrid & homeBase: emptySpaceGrid & homeBase = 1|->1 & starBase: emptySpaceGrid & starBase = 6|->4);
  Inherited_List_Properties(Machine(SpaceShip))==(btrue);
  List_Properties(Machine(SpaceShip))==(normalMovePowerValue = 5 & warpDrivePowerValue = 20 & asteroidHitPowerLossValue = 10 & initialPowerReserve = 100 & REPORT_VALUES: FIN(INTEGER) & not(REPORT_VALUES = {}) & MOVEMENT_VALUES: FIN(INTEGER) & not(MOVEMENT_VALUES = {}) & DOCKED_STATUS_VALUES: FIN(INTEGER) & not(DOCKED_STATUS_VALUES = {}) & GAME_STATUS_VALUES: FIN(INTEGER) & not(GAME_STATUS_VALUES = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(SpaceShip),Machine(Space))==(?);
  Seen_Context_List_Enumerated(Machine(SpaceShip))==(?);
  Seen_Context_List_Invariant(Machine(SpaceShip))==(btrue);
  Seen_Context_List_Assertions(Machine(SpaceShip))==(btrue);
  Seen_Context_List_Properties(Machine(SpaceShip))==(btrue);
  Seen_List_Constraints(Machine(SpaceShip))==(btrue);
  Seen_List_Operations(Machine(SpaceShip),Machine(Space))==(?);
  Seen_Expanded_List_Invariant(Machine(SpaceShip),Machine(Space))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SpaceShip),MoveUp)==(?);
  List_ANY_Var(Machine(SpaceShip),MoveDown)==(?);
  List_ANY_Var(Machine(SpaceShip),MoveForward)==(?);
  List_ANY_Var(Machine(SpaceShip),MoveBackward)==(?);
  List_ANY_Var(Machine(SpaceShip),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(SpaceShip),MissionStatus)==(?);
  List_ANY_Var(Machine(SpaceShip),MissionRoute)==(?);
  List_ANY_Var(Machine(SpaceShip),DockedAtStarbase)==(?);
  List_ANY_Var(Machine(SpaceShip),GameStatus)==(?);
  List_ANY_Var(Machine(SpaceShip),takenMovements)==(?);
  List_ANY_Var(Machine(SpaceShip),resetGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SpaceShip)) == (normalMovePowerValue,warpDrivePowerValue,asteroidHitPowerLossValue,initialPowerReserve,REPORT_VALUES,MOVEMENT_VALUES,DOCKED_STATUS_VALUES,GAME_STATUS_VALUES,SUCCESSFULLY_MOVED,CANNOT_MOVE_OUT_OF_KNOWN_SPACE,INSUFFICIENT_POWER,HIT_ASTEROID,CANNOT_WARP_INTO_ASTEROID,CANNOT_WARP_TO_THE_SAME_POSITION,CANNOT_IMMEDIATELY_WARP_INTO_STARBASE,MOVE_UP,MOVE_DOWN,MOVE_FORWARD,MOVE_BACKWARD,WARP,YES,NO,GAME_WON,GAME_LOST,GAME_NOT_OVER | ? | gameMovements,takenRouteOfGame,noOfCollisionsInGame,powerValue,positionY,positionX | ? | MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,MissionRoute,DockedAtStarbase,GameStatus,takenMovements,resetGame | ? | seen(Machine(Space)) | ? | SpaceShip);
  List_Of_HiddenCst_Ids(Machine(SpaceShip)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceShip)) == (normalMovePowerValue,warpDrivePowerValue,asteroidHitPowerLossValue,initialPowerReserve);
  List_Of_VisibleVar_Ids(Machine(SpaceShip)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceShip)) == (?: ?);
  List_Of_Ids(Machine(Space)) == (spaceXRange,spaceYRange,spaceGrid,asteroids,emptySpaceGrid,homeBase,starBase | ? | ? | ? | ? | ? | ? | ? | Space);
  List_Of_HiddenCst_Ids(Machine(Space)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Space)) == (spaceXRange,spaceYRange,spaceGrid,asteroids,emptySpaceGrid,homeBase,starBase);
  List_Of_VisibleVar_Ids(Machine(Space)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Space)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(SpaceShip)) == (Type(REPORT_VALUES) == Cst(SetOf(etype(REPORT_VALUES,0,6)));Type(MOVEMENT_VALUES) == Cst(SetOf(etype(MOVEMENT_VALUES,0,4)));Type(DOCKED_STATUS_VALUES) == Cst(SetOf(etype(DOCKED_STATUS_VALUES,0,1)));Type(GAME_STATUS_VALUES) == Cst(SetOf(etype(GAME_STATUS_VALUES,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SpaceShip)) == (Type(SUCCESSFULLY_MOVED) == Cst(etype(REPORT_VALUES,0,6));Type(CANNOT_MOVE_OUT_OF_KNOWN_SPACE) == Cst(etype(REPORT_VALUES,0,6));Type(INSUFFICIENT_POWER) == Cst(etype(REPORT_VALUES,0,6));Type(HIT_ASTEROID) == Cst(etype(REPORT_VALUES,0,6));Type(CANNOT_WARP_INTO_ASTEROID) == Cst(etype(REPORT_VALUES,0,6));Type(CANNOT_WARP_TO_THE_SAME_POSITION) == Cst(etype(REPORT_VALUES,0,6));Type(CANNOT_IMMEDIATELY_WARP_INTO_STARBASE) == Cst(etype(REPORT_VALUES,0,6));Type(MOVE_UP) == Cst(etype(MOVEMENT_VALUES,0,4));Type(MOVE_DOWN) == Cst(etype(MOVEMENT_VALUES,0,4));Type(MOVE_FORWARD) == Cst(etype(MOVEMENT_VALUES,0,4));Type(MOVE_BACKWARD) == Cst(etype(MOVEMENT_VALUES,0,4));Type(WARP) == Cst(etype(MOVEMENT_VALUES,0,4));Type(YES) == Cst(etype(DOCKED_STATUS_VALUES,0,1));Type(NO) == Cst(etype(DOCKED_STATUS_VALUES,0,1));Type(GAME_WON) == Cst(etype(GAME_STATUS_VALUES,0,2));Type(GAME_LOST) == Cst(etype(GAME_STATUS_VALUES,0,2));Type(GAME_NOT_OVER) == Cst(etype(GAME_STATUS_VALUES,0,2));Type(normalMovePowerValue) == Cst(btype(INTEGER,?,?));Type(warpDrivePowerValue) == Cst(btype(INTEGER,?,?));Type(asteroidHitPowerLossValue) == Cst(btype(INTEGER,?,?));Type(initialPowerReserve) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(SpaceShip)) == (Type(gameMovements) == Mvl(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT_VALUES,?,?)));Type(takenRouteOfGame) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(noOfCollisionsInGame) == Mvl(btype(INTEGER,?,?));Type(powerValue) == Mvl(btype(INTEGER,?,?));Type(positionY) == Mvl(btype(INTEGER,?,?));Type(positionX) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SpaceShip)) == (Type(resetGame) == Cst(No_type,No_type);Type(takenMovements) == Cst(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT_VALUES,?,?)),No_type);Type(GameStatus) == Cst(etype(GAME_STATUS_VALUES,?,?),No_type);Type(DockedAtStarbase) == Cst(etype(DOCKED_STATUS_VALUES,?,?),No_type);Type(MissionRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(REPORT_VALUES,?,?)*etype(MOVEMENT_VALUES,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveBackward) == Cst(etype(REPORT_VALUES,?,?)*etype(MOVEMENT_VALUES,?,?),No_type);Type(MoveForward) == Cst(etype(REPORT_VALUES,?,?)*etype(MOVEMENT_VALUES,?,?),No_type);Type(MoveDown) == Cst(etype(REPORT_VALUES,?,?)*etype(MOVEMENT_VALUES,?,?),No_type);Type(MoveUp) == Cst(etype(REPORT_VALUES,?,?)*etype(MOVEMENT_VALUES,?,?),No_type));
  Observers(Machine(SpaceShip)) == (Type(takenMovements) == Cst(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT_VALUES,?,?)),No_type);Type(GameStatus) == Cst(etype(GAME_STATUS_VALUES,?,?),No_type);Type(DockedAtStarbase) == Cst(etype(DOCKED_STATUS_VALUES,?,?),No_type);Type(MissionRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
