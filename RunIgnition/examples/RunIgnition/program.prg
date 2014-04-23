Read /home/reaction/workspace/REACTION/data/mol/inputs/MoleculeClass.inp /home/reaction/workspace/REACTION/data/mol/inputs/Molecule.inp 0
Read /home/reaction/workspace/REACTION/data/mol/inputs/MolDbaseClass.inp /home/reaction/workspace/REACTION/data/mol/inputs/MolDbase.inp 0
Read /home/reaction/workspace/REACTION/data/rxn/inputs/ReactionClass.inp /home/reaction/workspace/REACTION/data/rxn/inputs/Reaction.inp 0
Read /home/reaction/workspace/REACTION/data/mech/inputs/MechanismClass.inp /home/reaction/workspace/REACTION/data/mech/inputs/Mechanism.inp 0
Read /home/reaction/workspace/REACTION/data/mech/inputs/MechDbaseClass.inp /home/reaction/workspace/REACTION/data/mech/inputs/MechDbase.inp 0
Print Class RunIgnition
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
