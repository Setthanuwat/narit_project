# Project: TCS - Thai National Radio Telescope
# Company: NARIT - National Astronomical Research Institute of Thailand
# Author: Nonnadda Silamai
# Date: 2022.11.1

# Makefile for Notification Channel used for the project TNRT
# This module is python and doesn't require compile.  Only copy files to
# the appropriate locations in $INTROOT to to find at runtime in the path.

#
# Python files to copy to $INTROOT/lib/python/site-packages/
# ----------------------------
# PY_FILES = CentralDB.py cdbConfig.py cdbConstants.py

INSTALL_FILES = docker-compose.yaml Dockerfile grafana.ini

#
# TARGETS
# -------

all: install
	@echo " . . . 'all' done"

clean:
	@echo "clean nash"

clean_sphinx:
	@echo "clean sphinx doc"
	$(MAKE) -C ../sphinx-doc clean

clean_dist:
	@echo "make target: dist ... NO OP"

man:
	@echo "make target: man ... NO OP"

sphinx:
	@echo "make target: sphinx"
	$(MAKE) -C ../sphinx-doc html

install:
	mkdir -p $(INTROOT)/grafana
	cp $(INSTALL_FILES) $(INTROOT)/grafana
	cp -r provisioning $(INTROOT)/grafana
	@echo "make target: install ... DONE"
	
dist:
	@echo "target: clean ... NO OP"

#___oOo___