Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Space))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Space))==(Machine(Space));
  Level(Machine(Space))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Space)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Space))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Space))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Space))==(?);
  List_Includes(Machine(Space))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Space))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Space))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Space))==(?);
  Context_List_Variables(Machine(Space))==(?);
  Abstract_List_Variables(Machine(Space))==(?);
  Local_List_Variables(Machine(Space))==(?);
  List_Variables(Machine(Space))==(?);
  External_List_Variables(Machine(Space))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Space))==(?);
  Abstract_List_VisibleVariables(Machine(Space))==(?);
  External_List_VisibleVariables(Machine(Space))==(?);
  Expanded_List_VisibleVariables(Machine(Space))==(?);
  List_VisibleVariables(Machine(Space))==(?);
  Internal_List_VisibleVariables(Machine(Space))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Space))==(btrue);
  Gluing_List_Invariant(Machine(Space))==(btrue);
  Expanded_List_Invariant(Machine(Space))==(btrue);
  Abstract_List_Invariant(Machine(Space))==(btrue);
  Context_List_Invariant(Machine(Space))==(btrue);
  List_Invariant(Machine(Space))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Space))==(btrue);
  Abstract_List_Assertions(Machine(Space))==(btrue);
  Context_List_Assertions(Machine(Space))==(btrue);
  List_Assertions(Machine(Space))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Space))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Space))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Space))==(skip);
  Context_List_Initialisation(Machine(Space))==(skip);
  List_Initialisation(Machine(Space))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Space))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Space))==(btrue);
  List_Constraints(Machine(Space))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Space))==(?);
  List_Operations(Machine(Space))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Space))==(spaceXRange,spaceYRange,spaceGrid,asteroids,emptySpaceGrid,homeBase,starBase);
  Inherited_List_Constants(Machine(Space))==(?);
  List_Constants(Machine(Space))==(spaceXRange,spaceYRange,spaceGrid,asteroids,emptySpaceGrid,homeBase,starBase)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Space))==(?);
  Context_List_Defered(Machine(Space))==(?);
  Context_List_Sets(Machine(Space))==(?);
  List_Valuable_Sets(Machine(Space))==(?);
  Inherited_List_Enumerated(Machine(Space))==(?);
  Inherited_List_Defered(Machine(Space))==(?);
  Inherited_List_Sets(Machine(Space))==(?);
  List_Enumerated(Machine(Space))==(?);
  List_Defered(Machine(Space))==(?);
  List_Sets(Machine(Space))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Space))==(?);
  Expanded_List_HiddenConstants(Machine(Space))==(?);
  List_HiddenConstants(Machine(Space))==(?);
  External_List_HiddenConstants(Machine(Space))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Space))==(btrue);
  Context_List_Properties(Machine(Space))==(btrue);
  Inherited_List_Properties(Machine(Space))==(btrue);
  List_Properties(Machine(Space))==(spaceXRange = 1..12 & spaceYRange = 1..7 & spaceGrid = spaceXRange*spaceYRange & asteroids <: spaceGrid & asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & emptySpaceGrid <: spaceGrid & emptySpaceGrid/\asteroids = {} & emptySpaceGrid\/asteroids = spaceGrid & homeBase: emptySpaceGrid & homeBase = 1|->1 & starBase: emptySpaceGrid & starBase = 6|->4)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Space)) == (spaceXRange,spaceYRange,spaceGrid,asteroids,emptySpaceGrid,homeBase,starBase | ? | ? | ? | ? | ? | ? | ? | Space);
  List_Of_HiddenCst_Ids(Machine(Space)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Space)) == (spaceXRange,spaceYRange,spaceGrid,asteroids,emptySpaceGrid,homeBase,starBase);
  List_Of_VisibleVar_Ids(Machine(Space)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Space)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Space)) == (Type(spaceXRange) == Cst(SetOf(btype(INTEGER,"[spaceXRange","]spaceXRange")));Type(spaceYRange) == Cst(SetOf(btype(INTEGER,"[spaceYRange","]spaceYRange")));Type(spaceGrid) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(asteroids) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(emptySpaceGrid) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(homeBase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(starBase) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
