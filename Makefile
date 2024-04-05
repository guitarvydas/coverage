_00_=.
_0D_=0d/python
D2J=0d/das2json/das2json
LIB =$(_0D_)/std

all :
	clear
	make clean
	make coverage

coverage: coverage.drawio.json transpile.drawio.json
	cat $(_0D_)/py0D.py main.py >_.py
	python3 _.py $(_00_) $(_0D_) "index.js" main coverage.drawio.json transpile.drawio.json


coverage.drawio.json: coverage.drawio
	$(D2J) coverage.drawio

transpile.drawio.json: $(LIB)/transpile.drawio
	$(D2J) $(LIB)/transpile.drawio

clean:
	rm -f *.drawio.json _.py
