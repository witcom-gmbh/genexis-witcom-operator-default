RELEASE         ?= $(shell cat ./release.version)

all: clean opdefaults_build

clean:
	rm -f witcom-opdefaults-*

opdefaults_build:
	@sed "s/DEVICE_PASSWORD/${DEVICE_PASSWORD}/g" ./templates/phase1/exec/30-set-passwords > ./phase1/exec/30-set-passwords
	@sed "s/CWMP_CPE_PASSWORD/${CWMP_CPE_PASSWORD}/g;s/CWMP_ACS_PASSWORD/${CWMP_ACS_PASSWORD}/g" ./templates/phase1/exec/91-configure-cwmp > ./phase1/exec/91-configure-cwmp
	tar -cf witcom-opdefaults-$(RELEASE).tar ./phase1 ./phase2 ./release.version && gzip witcom-opdefaults-$(RELEASE).tar
	rm -f ./phase1/exec/30-set-passwords ./phase1/exec/91-configure-cwmp
