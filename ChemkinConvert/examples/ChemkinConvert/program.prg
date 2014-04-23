Read /home/reaction/cvs/Reaction/data/mol/inputs/MoleculeClass.inp /home/reaction/cvs/Reaction/data/mol/inputs/Molecule.inp 0
Read /home/reaction/cvs/Reaction/data/mol/inputs/MolDbaseClass.inp /home/reaction/cvs/Reaction/data/mol/inputs/MolDbase.inp 0
Read /home/reaction/cvs/Reaction/data/rxn/inputs/ReactionClass.inp /home/reaction/cvs/Reaction/data/rxn/inputs/Reaction.inp 0
Read /home/reaction/cvs/Reaction/data/mech/inputs/MechanismClass.inp /home/reaction/cvs/Reaction/data/mech/inputs/Mechanism.inp 0
Read /home/reaction/cvs/Reaction/data/mech/inputs/MechDbaseClass.inp /home/reaction/cvs/Reaction/data/mech/inputs/MechDbase.inp 0
Read /home/reaction/cvs/Reaction/data/mol/inputs/MoleculeChemkinClass.inp empty.inp 0
Read RunClass.inp Run.inp 0
SetAlgorithmClass BaseAlgorithmRun
Read DataClass.inp Data.inp 0
Print Class CalorieReactionRates
Print Class StandardThirdBody
Print Class StandardReactionRateHiLow
Print Attribute ReactionRateHiLow
Print Class
RunAlgorithm ReadChemkinAlg 0
Read PrintClass.inp Print.inp 0
RunAlgorithm PrintMechanism 0
Print Instance OH
Read PrintClass.inp Print.inp 0
RunAlgorithm PrintMechanism 0
END
