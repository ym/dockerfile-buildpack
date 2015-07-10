IMAGE := aveline/buildpack
EL_TARGETS := centos6 centos7
TARGETS := $(EL_TARGETS)

copy :
	$(foreach TARGET,$(EL_TARGETS),cp -r shared/rhel $(TARGET)/scripts;)

build : copy
	$(foreach TARGET,$(EL_TARGETS),docker build -t $(IMAGE):$(TARGET) $(TARGET);)

.PHONY : build
