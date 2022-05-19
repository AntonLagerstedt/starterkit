# starterkit

- Tekijä: Anton Lagerstedt
- Versio: beta 0.1
- Lisenssi: GNU GENERAL PUBLIC LICENSE Version 2

Tämän projektin tarkoitus on asentaa uudelle Linux-koneelle hyväksi havaitsemani ohjelmat ja niiden asetukset, siltä osin kuin olen tehnyt niihin muutoksia. Lisäksi asennetaan muutama tekemäni komento kaikille käyttäjille.

Alustavat lista asennettavista ohjelmista.

- Micro (tekstieditori)
- Vlc (videosoitin)
- Gimp (kuvankäsittelyohjelma)
- Apache (verkkopalvelin)


Asennetaan myös "today"-komento, joka näyttää päivämäärän ja sääennusteen "timeline"-komento, joka näyttää aikajanan muutoksista kansiossa, jossa komento ajetaan.
Esimerkki timelina komennosta:

![Kuvakaappaus](kuva0.png)

Asennus:

Asenna aluksi salt-minion ja unzip

	sudo apt-get install salt-minion
	sudo apt-get install unzip

Lataa starterkit githubista zippinä ja pura zip.

luo kansio /srv/salt

	cd /srv ; sudo mkdir salt

kopioi kansio starterkit salt kansioon.
Muokkaa init.sls tiedostoa

	sudoedit init.sls

kirjoita riveillä 31, 34 ja 38 nimen anton tilalle oma käyttäjänimesi.
Aja salt tila.

	sudo salt-call --local state.apply starterkit

käynnistä kone uudestaan.
