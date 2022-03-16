 /* ******************************************************************** 
 **
 ** 6SENG001W Reasoning About Programs Coursework (2021/22)
 ** Component: Space
 ** Author: Rohan Lekamge | 2018259 | w1715777
 ** Creation date: 11/24/2021
 **
 ******************************************************************** */

MACHINE
    Space

CONCRETE_CONSTANTS
    spaceXRange , spaceYRange , spaceGrid , asteroids , emptySpaceGrid , homeBase , starBase

PROPERTIES
    //Known Space in the Grid
    spaceXRange = 1 .. 12 &
    spaceYRange = 1 .. 7 &
    spaceGrid = spaceXRange * spaceYRange &

    //Asteroids in the Grid
    asteroids <: spaceGrid &
    asteroids = { 3 |-> 2 , 3 |-> 5 , 5 |-> 4 , 6 |-> 7 , 7 |-> 1 , 7 |-> 5 , 7 |-> 7 , 8 |-> 3 , 10 |-> 6 , 11 |-> 2 , 12 |-> 5 } &

    //Empty Space in the Grid
    emptySpaceGrid <: spaceGrid &
    emptySpaceGrid /\ asteroids = {} &
    emptySpaceGrid \/ asteroids = spaceGrid &

    //Home Base and Star Base in the Grid
    homeBase : emptySpaceGrid & homeBase = 1 |-> 1 &
    starBase : emptySpaceGrid & starBase = 6 |-> 4

END
