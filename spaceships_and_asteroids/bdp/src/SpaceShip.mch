 /* *************************************Metadata******************************************** 
 **
 ** 6SENG001W Reasoning About Programs Coursework (2021/22)
 ** Component: SpaceShip
 ** Author: Rohan Lekamge | 2018259 | w1715777
 ** Creation date: 11/24/2021
 **
 ***************************************************************************************** */


 /* ***********************************Operations******************************************** 
 
    MoveUp: 
    This procedure advances the spaceship up by one grid point (y+1).
    The movement takes 5 units of the spaceship's power to complete.

    MoveDown:
    This procedure advances the spaceship down by one grid point (y-1).
    The movement takes 5 units of the spaceship's power to complete. 

    MoveForward: 
    This procedure advances the spaceship forward by one grid point (x+1).
    The movement takes 5 units of the spaceship's power to complete.

    MoveBackward: 
    This procedure advances the spaceship backward by one grid point (x-1).
    The movement takes 5 units of the spaceship's power to complete. 

    EngageWarpDrive(newXPosition, newYPosition):
    This operation moves the spaceship to any region of space (i.e. grid co-ordinates).
    Engaging the warp-drive uses up 20 units of the spaceship's power. It is not
    permitted to jump straight from homebase to starbase.
    
    MissionStatus: 
    This enquiry operation reports the current status of the spaceship:
        1. Its current location,
        2. Its current power,
        3. How many asteroid collisions it has had.

    MissionRoute:
    This enquiry operation reports the route (regions of space) that the spaceship
    has travelled through in order.

    DockedAtStarbase:
    This enquiry operation reports whether the Spaceship is docked at the Starbase,
    i.e. its current location is the Starbase.

    GameStatus:
    This enquiry operation reports:
        1. Game WON, if the game is over & has been won
        2. Game LOST, if over & has been lost and
        3. Game Not Over, if its not over.
        
 ***************************************************************************************** */

MACHINE
    SpaceShip

SEES
    Space

SETS
    REPORT_VALUES = { SUCCESSFULLY_MOVED , CANNOT_MOVE_OUT_OF_KNOWN_SPACE , INSUFFICIENT_POWER , HIT_ASTEROID , CANNOT_WARP_INTO_ASTEROID , CANNOT_WARP_TO_THE_SAME_POSITION , CANNOT_IMMEDIATELY_WARP_INTO_STARBASE } ;
    MOVEMENT_VALUES = { MOVE_UP , MOVE_DOWN , MOVE_FORWARD , MOVE_BACKWARD , WARP } ;
    DOCKED_STATUS_VALUES = { YES , NO } ;
    GAME_STATUS_VALUES = { GAME_WON , GAME_LOST , GAME_NOT_OVER }

CONCRETE_CONSTANTS
    normalMovePowerValue , warpDrivePowerValue , asteroidHitPowerLossValue , initialPowerReserve

PROPERTIES
    normalMovePowerValue = 5 &
    warpDrivePowerValue = 20 &
    asteroidHitPowerLossValue = 10 &
    initialPowerReserve = 100



































ABSTRACT_VARIABLES
    positionX , positionY , powerValue , noOfCollisionsInGame , takenRouteOfGame , gameMovements

INVARIANT
    positionX : spaceXRange &
    positionY : spaceYRange &
    positionX |-> positionY : emptySpaceGrid &
    powerValue : NAT &
    noOfCollisionsInGame : NAT &
    takenRouteOfGame : seq ( emptySpaceGrid ) &
    gameMovements : seq ( MOVEMENT_VALUES )

INITIALISATION
    powerValue := initialPowerReserve ||
    noOfCollisionsInGame := 0 ||
    positionX := prj1 ( spaceXRange , spaceYRange ) ( homeBase ) ||
    positionY := prj2 ( spaceXRange , spaceYRange ) ( homeBase ) ||
    takenRouteOfGame := [ homeBase ] ||
    gameMovements := <>

OPERATIONS
    /** Moves Up by One Step **/
    report , movement <-- MoveUp =
    PRE
        report : REPORT_VALUES & movement : MOVEMENT_VALUES & not ( ( positionX |-> positionY = starBase ) or ( powerValue < normalMovePowerValue ) )
    THEN
        IF
            ( powerValue >= normalMovePowerValue )
        THEN
            IF
                ( positionX |-> positionY + 1 : spaceGrid )
            THEN
                IF
                    not ( ( positionX |-> positionY + 1 : asteroids ) )
                THEN
                    IF
                        ( powerValue - normalMovePowerValue >= 0 )
                    THEN
                        positionY := positionY + 1 ||
                        powerValue := powerValue - normalMovePowerValue ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX |-> positionY + 1 ) ||
                        gameMovements := gameMovements <- MOVE_UP ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_UP
                    ELSE
                        // Prevents power going below 0
                        positionY := positionY + 1 ||
                        powerValue := 0 ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX |-> positionY + 1 ) ||
                        gameMovements := gameMovements <- MOVE_UP ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_UP
                    END
                ELSE
                    IF
                        ( powerValue - normalMovePowerValue - asteroidHitPowerLossValue >= 0 )
                    THEN
                        powerValue := powerValue - normalMovePowerValue - asteroidHitPowerLossValue ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_UP
                    ELSE
                        // Prevents power going below 0
                        powerValue := 0 ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_UP
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

    /** Moves Down by One Step **/
    report , movement <-- MoveDown =
    PRE
        report : REPORT_VALUES & movement : MOVEMENT_VALUES & not ( ( positionX |-> positionY = starBase ) or ( powerValue < normalMovePowerValue ) )
    THEN
        IF
            ( powerValue >= normalMovePowerValue )
        THEN
            IF
                ( positionX |-> positionY - 1 : spaceGrid )
            THEN
                IF
                    not ( ( positionX |-> positionY - 1 : asteroids ) )
                THEN
                    IF
                        ( powerValue - normalMovePowerValue >= 0 )
                    THEN
                        positionY := positionY - 1 ||
                        powerValue := powerValue - normalMovePowerValue ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX |-> positionY - 1 ) ||
                        gameMovements := gameMovements <- MOVE_DOWN ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_DOWN
                    ELSE
                        // Prevents power going below 0
                        positionY := positionY - 1 ||
                        powerValue := 0 ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX |-> positionY - 1 ) ||
                        gameMovements := gameMovements <- MOVE_DOWN ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_DOWN
                    END
                ELSE
                    IF
                        ( powerValue - normalMovePowerValue - asteroidHitPowerLossValue >= 0 )
                    THEN
                        powerValue := powerValue - normalMovePowerValue - asteroidHitPowerLossValue ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_DOWN
                    ELSE
                        // Prevents power going below 0
                        powerValue := 0 ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_DOWN
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

    /** Moves Forward (Right) by One Step **/
    report , movement <-- MoveForward =
    PRE
        report : REPORT_VALUES & movement : MOVEMENT_VALUES & not ( ( positionX |-> positionY = starBase ) or ( powerValue < normalMovePowerValue ) )
    THEN
        IF
            ( powerValue >= normalMovePowerValue )
        THEN
            IF
                ( positionX + 1 |-> positionY : spaceGrid )
            THEN
                IF
                    not ( ( positionX + 1 |-> positionY : asteroids ) )
                THEN
                    IF
                        ( powerValue - normalMovePowerValue >= 0 )
                    THEN
                        positionX := positionX + 1 ||
                        powerValue := powerValue - normalMovePowerValue ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX + 1 |-> positionY ) ||
                        gameMovements := gameMovements <- MOVE_FORWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_FORWARD
                    ELSE
                        // Prevents power going below 0
                        positionX := positionX + 1 ||
                        powerValue := 0 ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX + 1 |-> positionY ) ||
                        gameMovements := gameMovements <- MOVE_FORWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_FORWARD
                    END
                ELSE
                    IF
                        ( powerValue - normalMovePowerValue - asteroidHitPowerLossValue >= 0 )
                    THEN
                        powerValue := powerValue - normalMovePowerValue - asteroidHitPowerLossValue ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_FORWARD
                    ELSE
                        // Prevents power going below 0
                        powerValue := 0 ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_FORWARD
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

    /** Moves Backward (Left) by One Step **/
    report , movement <-- MoveBackward =
    PRE
        report : REPORT_VALUES & movement : MOVEMENT_VALUES & not ( ( positionX |-> positionY = starBase ) or ( powerValue < normalMovePowerValue ) )
    THEN
        IF
            ( powerValue >= normalMovePowerValue )
        THEN
            IF
                ( positionX - 1 |-> positionY : spaceGrid )
            THEN
                IF
                    not ( ( positionX - 1 |-> positionY : asteroids ) )
                THEN
                    IF
                        ( powerValue - normalMovePowerValue >= 0 )
                    THEN
                        positionX := positionX - 1 ||
                        powerValue := powerValue - normalMovePowerValue ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX - 1 |-> positionY ) ||
                        gameMovements := gameMovements <- MOVE_BACKWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_BACKWARD
                    ELSE
                        // Prevents power going below 0
                        positionX := positionX - 1 ||
                        powerValue := 0 ||
                        takenRouteOfGame := takenRouteOfGame <- ( positionX - 1 |-> positionY ) ||
                        gameMovements := gameMovements <- MOVE_BACKWARD ||
                        report := SUCCESSFULLY_MOVED ||
                        movement := MOVE_BACKWARD
                    END
                ELSE
                    IF
                        ( powerValue - normalMovePowerValue - asteroidHitPowerLossValue >= 0 )
                    THEN
                        powerValue := powerValue - normalMovePowerValue - asteroidHitPowerLossValue ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_BACKWARD
                    ELSE
                        // Prevents power going below 0
                        powerValue := 0 ||
                        noOfCollisionsInGame := noOfCollisionsInGame + 1 ||
                        report := HIT_ASTEROID ||
                        movement := MOVE_BACKWARD
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

    /** Performs Warp Drive to the given position **/
    report , movement <-- EngageWarpDrive ( newXPosition , newYPosition ) =
    PRE
        report : REPORT_VALUES & movement : MOVEMENT_VALUES &
        newXPosition : NAT1 & newYPosition : NAT1 &
        not ( ( positionX |-> positionY = starBase ) or ( powerValue < normalMovePowerValue ) )
    THEN
        IF
            ( powerValue >= warpDrivePowerValue )
        THEN
            IF
                ( newXPosition |-> newYPosition : spaceGrid )
            THEN
                IF
                    ( newXPosition = positionX & newYPosition = positionY )
                THEN
                    report := CANNOT_WARP_TO_THE_SAME_POSITION
                ELSE
                    IF
                        ( size ( takenRouteOfGame ) = 1 & newXPosition |-> newYPosition = starBase )
                    THEN
                        report := CANNOT_IMMEDIATELY_WARP_INTO_STARBASE
                    ELSE
                        IF
                            not ( ( newXPosition |-> newYPosition : asteroids ) )
                        THEN
                            IF
                                ( powerValue - warpDrivePowerValue >= 0 )
                            THEN
                                powerValue := powerValue - warpDrivePowerValue ||
                                positionX := newXPosition ||
                                positionY := newYPosition ||
                                takenRouteOfGame := takenRouteOfGame <- ( newXPosition |-> newYPosition ) ||
                                gameMovements := gameMovements <- WARP ||
                                report := SUCCESSFULLY_MOVED ||
                                movement := WARP
                            ELSE
                                // Prevents power going below 0
                                powerValue := 0 ||
                                positionX := newXPosition ||
                                positionY := newYPosition ||
                                takenRouteOfGame := takenRouteOfGame <- ( newXPosition |-> newYPosition ) ||
                                gameMovements := gameMovements <- WARP ||
                                report := SUCCESSFULLY_MOVED ||
                                movement := WARP
                            END
                        ELSE
                            report := CANNOT_WARP_INTO_ASTEROID
                        END
                    END
                END
            ELSE
                report := CANNOT_MOVE_OUT_OF_KNOWN_SPACE
            END
        ELSE
            report := INSUFFICIENT_POWER
        END
    END ;

    /** Gives the current status of the space ship **/
    currentLocation , currentPower , asteroidCollisions <-- MissionStatus =
    BEGIN
        currentLocation := positionX |-> positionY ||
        currentPower := powerValue ||
        asteroidCollisions := noOfCollisionsInGame
    END ;

    /** Gives the route that the space ship has travelled through **/
    route <-- MissionRoute =
    BEGIN
        route := takenRouteOfGame
    END ;

    /** Reports whether the space ship is docked at the star base **/
    dockedStatus <-- DockedAtStarbase =
    PRE
        dockedStatus : DOCKED_STATUS_VALUES
    THEN
        IF
            ( ( positionX |-> positionY = starBase ) )
        THEN
            dockedStatus := YES
        ELSE
            dockedStatus := NO
        END
    END ;

    /** Reports the game status **/
    status <-- GameStatus =
    PRE
        status : GAME_STATUS_VALUES
    THEN
        IF
            ( ( positionX |-> positionY = starBase ) )
        THEN
            status := GAME_WON
        ELSE
            IF
                ( powerValue < normalMovePowerValue )
            THEN
                status := GAME_LOST
            ELSE
                status := GAME_NOT_OVER
            END
        END
    END ;

    /** Reports the game status (as a string) **/
    //    status <-- GameStatus =
    //    IF
    //        (isDockedAtBase)
    //    THEN
    //        status := "Game WON"
    //    ELSE
    //        IF
    //            (powerValue < normalMovePowerValue)
    //        THEN
    //            status := "Game LOST"
    //        ELSE
    //            status := "Game Not Over"
    //        END
    //    END;

    /** Gives all movements taken by the space ship **/
    allMovements <-- takenMovements =
    BEGIN
        allMovements := gameMovements
    END ;

    /** Resets the game, and starts again from the beginning **/
    resetGame =
    PRE
        ( positionX |-> positionY = starBase ) or ( powerValue < normalMovePowerValue )
    THEN
        powerValue := initialPowerReserve ||
        noOfCollisionsInGame := 0 ||
        positionX := prj1 ( spaceXRange , spaceYRange ) ( homeBase ) ||
        positionY := prj2 ( spaceXRange , spaceYRange ) ( homeBase ) ||
        takenRouteOfGame := [ homeBase ] ||
        gameMovements := <>
    END
END
