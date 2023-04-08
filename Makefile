english:	ui tags logs labels
	touch all

esperanto:
	-cp PersonFS.glade.es.SAVE PersonFS.glade
	-cp Importo.py.es.SAVE Importo.py
	-cp PersonFS.gpr.py.es.SAVE PersonFS.gpr.py
	-cp constants.py.es.SAVE constants.py
	-cp fs_db.py.es.SAVE fs_db.py
	-cp komparo.py.es.SAVE komparo.py
	-cp PersonFS.py.es.SAVE PersonFS.py

%.en: %.es
	sed -f $*.sed < $< > $@
	cp $< $<.SAVE

%.es: %
	cp $< $@

fs_db.py.en:	fs_db.py.es
	patch -c -o fs_db.py.en fs_db.py.es fs_db.py.patch
	cp $< $<.SAVE

ui:	PersonFS.glade.en constants.py.en komparo.py.en PersonFS.py.en
	cp PersonFS.glade.en PersonFS.glade
	cp constants.py.en constants.py
	cp komparo.py.en komparo.py
	cp PersonFS.py.en PersonFS.py

logs:	Importo.py.en
	cp Importo.py.en Importo.py
#
# known issue - need to also update komparo.py for tags update. Not currently separable from ui.
#
tags:	fs_db.py.en
	cp fs_db.py.en fs_db.py

labels:	PersonFS.gpr.py.en
	cp PersonFS.gpr.py.en PersonFS.gpr.py

reset:	esperanto
	-rm *.es *.en *.SAVE
	-rm all 

