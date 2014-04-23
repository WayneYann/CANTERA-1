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
Read $MOLECULEDATA/inputs/MoleculeChemkinClass.inp empty.inp 0
Read RunClass.inp Run.inp 0
SetAlgorithmClass BaseAlgorithmRun
Read RunDataClass.inp RunData.inp 0
RunAlgorithm RunIgnitionAlg 0
END
EOF

$PROGRAM xxx Initial test 0 < program.prg
