CANTERA=\
           ChemkinConvert RunIgnition

space:=$(empty) $(empty)
sCANTERA:=$(space)$(CANTERA)

compileprefix:=c
mergeprefix:=m

cCANTERA=$(subst $(space),$(space)$(compileprefix),$(sCANTERA))
mCANTERA=$(subst $(space),$(space)$(mergeprefix),$(sCANTERA))

all: mergeCantera compileCantera

compileCantera: $(cCANTERA)

mergeCantera: $(mCANTERA)

$(cCANTERA):
	pushd $(subst $(space)$(compileprefix),$(empty),$(space)$@);\
	cd lib;\
	make cleaner;\
	make all;\
	mv lib*.a $(CodeBaseRoot)/lib;\
	make cleaner;\
	popd;

$(mCANTERA):
	MergePackage $(subst $(space)$(mergeprefix),$(empty),$(space)$@) Cantera

.PHONY: $(cCANTERA) $(mCANTERA) compileCantera mergeCantera


