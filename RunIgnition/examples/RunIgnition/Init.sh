#! /bin/tcsh -f
set PROGRAM     = otest 
set MOLECULEDATA    = $REACTION_BASE/data/mol
set MOLECULEINPUTS  = $MOLECULEDATA/inputs
set MOLECULESCRIPTS = $MOLECULEDATA/scripts

set REACTIONDATA    = $REACTION_BASE/data/rxn
set REACTIONINPUTS  = $REACTIONDATA/inputs
set REACTIONSCRIPTS = $REACTIONDATA/scripts

set MECHDATA        = $REACTION_BASE/data/mech
set MECHINPUTS      = $MECHDATA/inputs
set MECHSCRIPTS     = $MECHDATA/scripts

set GENERIC         = $REACTION_BASE/data/generic

cat <<EOF > program.prg
Read $MOLECULEINPUTS/MoleculeClass.inp $MOLECULEINPUTS/Molecule.inp 0
Read $MOLECULEINPUTS/MolDbaseClass.inp $MOLECULEINPUTS/MolDbase.inp 0
Read $REACTIONINPUTS/ReactionClass.inp $REACTIONINPUTS/Reaction.inp 0
Read $MECHINPUTS/MechanismClass.inp $MECHINPUTS/Mechanism.inp 0
Read $MECHINPUTS/MechDbaseClass.inp $MECHINPUTS/MechDbase.inp 0
%%%Print Class RunIgnition
Read RRunClass.inp RRun.inp 3
%%%%Read RunClass.inp Run.inp 0
SetAlgorithmClass BaseAlgorithmRun
Read RunDataBaseClass.inp RunDataBase.inp 0
Read RunDataClass.inp RunData.inp 0
Read RunDataHeptaneClass.inp RunDataHeptane.inp 0
Print Attribute IterationSet
RunAlgorithm RunSetOfConditionsAlg 0
Print Attribute ConditionNames
Print Attribute
%%% RunAlgorithm RunIgnitionAlg 3
%%% Print Attribute ohmech_ohmech-Set-P1-C1-T3
END
EOF

$PROGRAM xxx Initial mech 0 < program.prg
