// Dutch PC4 → city/area name — comprehensive range-based lookup
export function getStad(pc4: string): string {
  const n = parseInt(pc4, 10)
  if (isNaN(n)) return ''

  // ── 1000–1999: Noord-Holland ──────────────────────
  if (n >= 1000 && n <= 1109) return 'Amsterdam'
  if (n >= 1110 && n <= 1115) return 'Diemen'
  if (n >= 1116 && n <= 1119) return 'Duivendrecht'
  if (n >= 1120 && n <= 1139) return 'Landsmeer'
  if (n >= 1140 && n <= 1149) return 'Monnickendam'
  if (n >= 1150 && n <= 1165) return 'Waterland'
  if (n >= 1170 && n <= 1179) return 'Badhoevedorp'
  if (n >= 1180 && n <= 1189) return 'Amstelveen'
  if (n >= 1190 && n <= 1199) return 'Ouderkerk a/d A.'
  if (n >= 1200 && n <= 1239) return 'Hilversum'
  if (n >= 1240 && n <= 1254) return 'Huizen'
  if (n >= 1260 && n <= 1279) return 'Blaricum'
  if (n >= 1280 && n <= 1289) return 'Aalsmeer'
  if (n >= 1290 && n <= 1299) return 'Weesp'
  if (n >= 1300 && n <= 1359) return 'Almere'
  if (n >= 1380 && n <= 1399) return 'Weesp'
  if (n >= 1400 && n <= 1429) return 'Bussum'
  if (n >= 1430 && n <= 1439) return 'Naarden'
  if (n >= 1440 && n <= 1449) return 'Purmerend'
  if (n >= 1450 && n <= 1459) return 'Ilpendam'
  if (n >= 1460 && n <= 1479) return 'Middelie'
  if (n >= 1480 && n <= 1489) return 'De Goorn'
  if (n >= 1490 && n <= 1499) return 'Neck'
  if (n >= 1500 && n <= 1544) return 'Zaandam'
  if (n >= 1545 && n <= 1560) return 'Westzaan'
  if (n >= 1561 && n <= 1575) return 'Krommenie'
  if (n >= 1576 && n <= 1589) return 'Assendelft'
  if (n >= 1600 && n <= 1609) return 'Enkhuizen'
  if (n >= 1620 && n <= 1649) return 'Hoorn'
  if (n >= 1650 && n <= 1679) return 'Medemblik'
  if (n >= 1700 && n <= 1729) return 'Heerhugowaard'
  if (n >= 1730 && n <= 1749) return 'Schagen'
  if (n >= 1750 && n <= 1769) return 'Hollands Kroon'
  if (n >= 1770 && n <= 1789) return 'Den Helder'
  if (n >= 1800 && n <= 1829) return 'Alkmaar'
  if (n >= 1830 && n <= 1849) return 'Bergen NH'
  if (n >= 1850 && n <= 1879) return 'Heiloo'
  if (n >= 1880 && n <= 1919) return 'Castricum'
  if (n >= 1920 && n <= 1949) return 'Uitgeest'
  if (n >= 1950 && n <= 1979) return 'Velsen'
  if (n >= 1980 && n <= 1999) return 'Beverwijk'

  // ── 2000–2299: Haarlem/Leiden ────────────────────
  if (n >= 2000 && n <= 2049) return 'Haarlem'
  if (n >= 2050 && n <= 2069) return 'Overveen'
  if (n >= 2100 && n <= 2119) return 'Heemstede'
  if (n >= 2120 && n <= 2139) return 'Zandvoort'
  if (n >= 2130 && n <= 2159) return 'Hoofddorp'
  if (n >= 2160 && n <= 2175) return 'Nieuw-Vennep'
  if (n >= 2176 && n <= 2189) return 'Hillegom'
  if (n >= 2190 && n <= 2199) return 'Lisse'
  if (n >= 2200 && n <= 2219) return 'Katwijk'
  if (n >= 2220 && n <= 2239) return 'Sassenheim'
  if (n >= 2240 && n <= 2249) return 'Wassenaar'
  if (n >= 2250 && n <= 2259) return 'Voorschoten'
  if (n >= 2260 && n <= 2279) return 'Leidschendam'
  if (n >= 2280 && n <= 2289) return 'Rijswijk'
  if (n >= 2290 && n <= 2299) return 'Wateringen'
  if (n >= 2300 && n <= 2359) return 'Leiden'
  if (n >= 2360 && n <= 2369) return 'Warmond'
  if (n >= 2370 && n <= 2379) return 'Roelofarendsveen'
  if (n >= 2380 && n <= 2389) return 'Zoeterwoude'
  if (n >= 2390 && n <= 2399) return 'Hazerswoude'

  // ── 2400–2499: Alphen / Gouda ────────────────────
  if (n >= 2400 && n <= 2419) return 'Alphen a/d Rijn'
  if (n >= 2420 && n <= 2429) return 'Bodegraven'
  if (n >= 2430 && n <= 2449) return 'Nieuwkoop'
  if (n >= 2450 && n <= 2459) return 'Boskoop'
  if (n >= 2460 && n <= 2479) return 'Ter Aar'
  if (n >= 2480 && n <= 2499) return 'Leimuiden'

  // ── 2490–2699: Den Haag / Delft / Westland ───────
  if (n >= 2490 && n <= 2599) return 'Den Haag'
  if (n >= 2600 && n <= 2629) return 'Delft'
  if (n >= 2630 && n <= 2649) return 'Pijnacker'
  if (n >= 2650 && n <= 2669) return 'Lansingerland'
  if (n >= 2670 && n <= 2679) return 'Naaldwijk'
  if (n >= 2680 && n <= 2699) return 'Westland'

  // ── 2700–2999: Zoetermeer / Gouda / Zuid-Holland ─
  if (n >= 2700 && n <= 2729) return 'Zoetermeer'
  if (n >= 2730 && n <= 2749) return 'Maassluis'
  if (n >= 2750 && n <= 2769) return 'Maasdijk'
  if (n >= 2770 && n <= 2789) return 'Boskoop'
  if (n >= 2790 && n <= 2799) return 'Stolwijk'
  if (n >= 2800 && n <= 2849) return 'Gouda'
  if (n >= 2850 && n <= 2879) return 'Schoonhoven'
  if (n >= 2880 && n <= 2899) return 'Krimpenerwaard'
  if (n >= 2900 && n <= 2939) return 'Capelle a/d IJssel'
  if (n >= 2940 && n <= 2959) return 'Krimpen a/d IJssel'
  if (n >= 2960 && n <= 2979) return 'Ridderkerk'
  if (n >= 2980 && n <= 2999) return 'Barendrecht'

  // ── 3000–3199: Rotterdam / Schiedam ──────────────
  if (n >= 3000 && n <= 3089) return 'Rotterdam'
  if (n >= 3100 && n <= 3135) return 'Schiedam'
  if (n >= 3140 && n <= 3159) return 'Maassluis'
  if (n >= 3160 && n <= 3179) return 'Rhoon'
  if (n >= 3180 && n <= 3199) return 'Spijkenisse'

  // ── 3200–3399: Spijkenisse / Dordrecht ───────────
  if (n >= 3200 && n <= 3239) return 'Spijkenisse'
  if (n >= 3240 && n <= 3259) return 'Middelharnis'
  if (n >= 3260 && n <= 3279) return 'Oud-Beijerland'
  if (n >= 3280 && n <= 3299) return 'Strijen'
  if (n >= 3300 && n <= 3329) return 'Dordrecht'
  if (n >= 3330 && n <= 3349) return 'Zwijndrecht'
  if (n >= 3350 && n <= 3369) return 'Papendrecht'
  if (n >= 3370 && n <= 3399) return 'Gorinchem'

  // ── 3400–3599: Utrecht / IJsselstein ─────────────
  if (n >= 3400 && n <= 3449) return 'IJsselstein'
  if (n >= 3450 && n <= 3469) return 'Woerden'
  if (n >= 3470 && n <= 3489) return 'Montfoort'
  if (n >= 3490 && n <= 3499) return 'Nieuwegein'
  if (n >= 3500 && n <= 3599) return 'Utrecht'

  // ── 3600–3799: Utrecht omgeving ──────────────────
  if (n >= 3600 && n <= 3629) return 'Maarssen'
  if (n >= 3630 && n <= 3649) return 'Nieuwegein'
  if (n >= 3650 && n <= 3669) return 'Vinkeveen'
  if (n >= 3700 && n <= 3719) return 'Zeist'
  if (n >= 3720 && n <= 3739) return 'Bilthoven'
  if (n >= 3740 && n <= 3759) return 'Baarn'
  if (n >= 3760 && n <= 3779) return 'Soest'
  if (n >= 3780 && n <= 3799) return 'Barneveld'

  // ── 3800–3999: Amersfoort / Veenendaal ───────────
  if (n >= 3800 && n <= 3849) return 'Amersfoort'
  if (n >= 3850 && n <= 3869) return 'Ermelo'
  if (n >= 3870 && n <= 3899) return 'Hoevelaken'
  if (n >= 3900 && n <= 3909) return 'Veenendaal'
  if (n >= 3910 && n <= 3919) return 'Rhenen'
  if (n >= 3920 && n <= 3939) return 'Amerongen'
  if (n >= 3940 && n <= 3959) return 'Doorn'
  if (n >= 3960 && n <= 3999) return 'Maarn'

  // ── 4000–4199: Tiel / Culemborg ──────────────────
  if (n >= 4000 && n <= 4019) return 'Tiel'
  if (n >= 4020 && n <= 4059) return 'Buren'
  if (n >= 4060 && n <= 4099) return 'Kesteren'
  if (n >= 4100 && n <= 4119) return 'Culemborg'
  if (n >= 4120 && n <= 4139) return 'Leerdam'
  if (n >= 4140 && n <= 4159) return 'Asperen'
  if (n >= 4160 && n <= 4179) return 'Zaltbommel'
  if (n >= 4180 && n <= 4199) return 'Waardenburg'

  // ── 4200–4499: Gorinchem / Zeeland ───────────────
  if (n >= 4200 && n <= 4219) return 'Gorinchem'
  if (n >= 4220 && n <= 4259) return 'Woudrichem'
  if (n >= 4260 && n <= 4299) return 'Almkerk'
  if (n >= 4300 && n <= 4389) return 'Zeeland'
  if (n >= 4390 && n <= 4399) return 'Vlissingen'
  if (n >= 4400 && n <= 4449) return 'Goes'
  if (n >= 4450 && n <= 4489) return 'Kapelle'
  if (n >= 4490 && n <= 4499) return 'Yerseke'

  // ── 4500–4799: Bergen op Zoom / Roosendaal ────────
  if (n >= 4500 && n <= 4549) return 'Terneuzen'
  if (n >= 4600 && n <= 4629) return 'Bergen op Zoom'
  if (n >= 4630 && n <= 4649) return 'Steenbergen'
  if (n >= 4700 && n <= 4729) return 'Roosendaal'
  if (n >= 4730 && n <= 4749) return 'Etten-Leur'
  if (n >= 4750 && n <= 4779) return 'Rucphen'
  if (n >= 4780 && n <= 4799) return 'Moerdijk'

  // ── 4800–4999: Breda / Geertruidenberg ───────────
  if (n >= 4800 && n <= 4839) return 'Breda'
  if (n >= 4840 && n <= 4859) return 'Prinsenbeek'
  if (n >= 4860 && n <= 4899) return 'Baarle-Nassau'
  if (n >= 4900 && n <= 4939) return 'Zundert'
  if (n >= 4940 && n <= 4959) return 'Raamsdonksveer'
  if (n >= 4960 && n <= 4979) return 'Geertruidenberg'
  if (n >= 4980 && n <= 4999) return 'Drimmelen'

  // ── 5000–5199: Tilburg / Waalwijk ────────────────
  if (n >= 5000 && n <= 5049) return 'Tilburg'
  if (n >= 5050 && n <= 5069) return 'Goirle'
  if (n >= 5070 && n <= 5089) return 'Udenhout'
  if (n >= 5090 && n <= 5099) return 'Hilvarenbeek'
  if (n >= 5100 && n <= 5119) return 'Dongen'
  if (n >= 5120 && n <= 5149) return 'Waalwijk'
  if (n >= 5150 && n <= 5169) return 'Drunen'
  if (n >= 5170 && n <= 5189) return 'Kaatsheuvel'
  if (n >= 5190 && n <= 5199) return 'Nieuwkuijk'

  // ── 5200–5399: Den Bosch / Sint-Oedenrode ────────
  if (n >= 5200 && n <= 5269) return 'Den Bosch'
  if (n >= 5270 && n <= 5279) return 'Vught'
  if (n >= 5280 && n <= 5299) return 'Boxtel'
  if (n >= 5300 && n <= 5349) return 'Boxtel'
  if (n >= 5350 && n <= 5369) return 'Schijndel'
  if (n >= 5370 && n <= 5379) return 'Ravenstein'
  if (n >= 5380 && n <= 5399) return 'Sint-Oedenrode'

  // ── 5400–5499: Uden / Laarbeek / Gemert ──────────
  if (n >= 5400 && n <= 5429) return 'Uden'
  if (n >= 5430 && n <= 5449) return 'Laarbeek'
  if (n >= 5450 && n <= 5459) return 'Mill'
  if (n >= 5460 && n <= 5469) return 'Veghel'
  if (n >= 5470 && n <= 5479) return 'Gemert'
  if (n >= 5480 && n <= 5499) return 'Deurne'

  // ── 5500–5699: Eindhoven / Veldhoven ─────────────
  if (n >= 5500 && n <= 5509) return 'Veldhoven'
  if (n >= 5510 && n <= 5529) return 'Eersel'
  if (n >= 5530 && n <= 5549) return 'Bladel'
  if (n >= 5550 && n <= 5579) return 'Bergeijk'
  if (n >= 5580 && n <= 5599) return 'Waalre'
  if (n >= 5600 && n <= 5659) return 'Eindhoven'
  if (n >= 5660 && n <= 5669) return 'Geldrop'
  if (n >= 5670 && n <= 5679) return 'Nuenen'
  if (n >= 5680 && n <= 5699) return 'Asten'

  // ── 5700–5999: Helmond / Venlo ───────────────────
  if (n >= 5700 && n <= 5749) return 'Helmond'
  if (n >= 5750 && n <= 5769) return 'Deurne'
  if (n >= 5770 && n <= 5799) return 'Meijel'
  if (n >= 5800 && n <= 5819) return 'Venray'
  if (n >= 5820 && n <= 5849) return 'Boxmeer'
  if (n >= 5850 && n <= 5879) return 'Bergen L'
  if (n >= 5900 && n <= 5939) return 'Venlo'
  if (n >= 5940 && n <= 5959) return 'Panningen'
  if (n >= 5960 && n <= 5979) return 'Horst'
  if (n >= 5980 && n <= 5999) return 'Beesel'

  // ── 6000–6199: Weert / Roermond ──────────────────
  if (n >= 6000 && n <= 6029) return 'Weert'
  if (n >= 6030 && n <= 6059) return 'Roermond'
  if (n >= 6060 && n <= 6099) return 'Echt'
  if (n >= 6100 && n <= 6129) return 'Echt-Susteren'
  if (n >= 6130 && n <= 6149) return 'Sittard'
  if (n >= 6150 && n <= 6179) return 'Beek'
  if (n >= 6180 && n <= 6199) return 'Elsloo'

  // ── 6200–6499: Maastricht / Heerlen ──────────────
  if (n >= 6200 && n <= 6239) return 'Maastricht'
  if (n >= 6240 && n <= 6259) return 'Meerssen'
  if (n >= 6260 && n <= 6299) return 'Valkenburg'
  if (n >= 6300 && n <= 6369) return 'Gulpen'
  if (n >= 6370 && n <= 6389) return 'Landgraaf'
  if (n >= 6400 && n <= 6479) return 'Heerlen'
  if (n >= 6480 && n <= 6499) return 'Simpelveld'

  // ── 6500–6699: Nijmegen / Wijchen ────────────────
  if (n >= 6500 && n <= 6549) return 'Nijmegen'
  if (n >= 6550 && n <= 6599) return 'Berg en Dal'
  if (n >= 6600 && n <= 6649) return 'Wijchen'
  if (n >= 6650 && n <= 6679) return 'Druten'
  if (n >= 6680 && n <= 6699) return 'Buren'

  // ── 6700–6999: Wageningen / Arnhem ───────────────
  if (n >= 6700 && n <= 6719) return 'Wageningen'
  if (n >= 6720 && n <= 6759) return 'Ede'
  if (n >= 6760 && n <= 6799) return 'Ede'
  if (n >= 6800 && n <= 6849) return 'Arnhem'
  if (n >= 6850 && n <= 6879) return 'Velp'
  if (n >= 6880 && n <= 6909) return 'Renkum'
  if (n >= 6910 && n <= 6959) return 'Zevenaar'
  if (n >= 6960 && n <= 6979) return 'Brummen'
  if (n >= 6980 && n <= 6999) return 'Dieren'

  // ── 7000–7199: Achterhoek ────────────────────────
  if (n >= 7000 && n <= 7029) return 'Doetinchem'
  if (n >= 7030 && n <= 7059) return 'Silvolde'
  if (n >= 7060 && n <= 7099) return 'Lichtenvoorde'
  if (n >= 7100 && n <= 7139) return 'Winterswijk'
  if (n >= 7140 && n <= 7159) return 'Aalten'
  if (n >= 7160 && n <= 7179) return 'Groenlo'
  if (n >= 7200 && n <= 7259) return 'Zutphen'
  if (n >= 7260 && n <= 7279) return 'Lochem'
  if (n >= 7280 && n <= 7299) return 'Goor'

  // ── 7300–7499: Apeldoorn / Deventer ──────────────
  if (n >= 7300 && n <= 7349) return 'Apeldoorn'
  if (n >= 7350 && n <= 7399) return 'Beekbergen'
  if (n >= 7400 && n <= 7449) return 'Deventer'
  if (n >= 7450 && n <= 7479) return 'Rijssen'
  if (n >= 7480 && n <= 7499) return 'Haaksbergen'

  // ── 7500–7699: Enschede / Almelo ─────────────────
  if (n >= 7500 && n <= 7549) return 'Enschede'
  if (n >= 7550 && n <= 7569) return 'Hengelo'
  if (n >= 7570 && n <= 7599) return 'Oldenzaal'
  if (n >= 7600 && n <= 7629) return 'Almelo'
  if (n >= 7630 && n <= 7659) return 'Tubbergen'
  if (n >= 7660 && n <= 7679) return 'Vriezenveen'

  // ── 7700–7999: Emmen / Meppel ────────────────────
  if (n >= 7700 && n <= 7739) return 'Hoogeveen'
  if (n >= 7740 && n <= 7769) return 'Hardenberg'
  if (n >= 7770 && n <= 7799) return 'Coevorden'
  if (n >= 7800 && n <= 7849) return 'Emmen'
  if (n >= 7850 && n <= 7879) return 'Klazienaveen'
  if (n >= 7900 && n <= 7939) return 'Meppel'
  if (n >= 7940 && n <= 7979) return 'Staphorst'
  if (n >= 7980 && n <= 7999) return 'Balkbrug'

  // ── 8000–8099: Zwolle / Kampen / Epe ─────────────
  if (n >= 8000 && n <= 8049) return 'Zwolle'
  if (n >= 8050 && n <= 8059) return 'Kampen'
  if (n >= 8060 && n <= 8069) return 'Epe'
  if (n >= 8070 && n <= 8089) return 'Hattem'
  if (n >= 8090 && n <= 8099) return 'Kampen'

  // ── 8100–8199: Raalte / Dalfsen / Oldebroek ──────
  if (n >= 8100 && n <= 8129) return 'Raalte'
  if (n >= 8130 && n <= 8149) return 'Dalfsen'
  if (n >= 8150 && n <= 8169) return 'Wijhe'
  if (n >= 8170 && n <= 8179) return 'Vaassen'
  if (n >= 8180 && n <= 8199) return 'Oldebroek'

  // ── 8200–8399: Lelystad / Emmeloord ──────────────
  if (n >= 8200 && n <= 8249) return 'Lelystad'
  if (n >= 8250 && n <= 8279) return 'Dronten'
  if (n >= 8280 && n <= 8299) return 'Genemuiden'
  if (n >= 8300 && n <= 8349) return 'Emmeloord'
  if (n >= 8350 && n <= 8379) return 'Urk'
  if (n >= 8380 && n <= 8419) return 'Steenwijk'

  // ── 8400–8799: Friesland ─────────────────────────
  if (n >= 8400 && n <= 8439) return 'Gorredijk'
  if (n >= 8440 && n <= 8479) return 'Heerenveen'
  if (n >= 8500 && n <= 8539) return 'Joure'
  if (n >= 8540 && n <= 8559) return 'Lemmer'
  if (n >= 8600 && n <= 8649) return 'Sneek'
  if (n >= 8700 && n <= 8749) return 'Bolsward'
  if (n >= 8800 && n <= 8869) return 'Franeker'
  if (n >= 8870 && n <= 8889) return 'Harlingen'

  // ── 8900–8999: Leeuwarden ────────────────────────
  if (n >= 8900 && n <= 8939) return 'Leeuwarden'
  if (n >= 8940 && n <= 8979) return 'Menaldumadeel'
  if (n >= 8980 && n <= 8999) return 'Sint Annaparochie'

  // ── 9000–9199: Dokkum / Buitenpost ───────────────
  if (n >= 9000 && n <= 9049) return 'Leeuwarden'
  if (n >= 9050 && n <= 9099) return 'Goutum'
  if (n >= 9100 && n <= 9139) return 'Dokkum'
  if (n >= 9140 && n <= 9179) return 'Buitenpost'
  if (n >= 9180 && n <= 9199) return 'Damwâld'

  // ── 9200–9299: Drachten ───────────────────────────
  if (n >= 9200 && n <= 9249) return 'Drachten'
  if (n >= 9250 && n <= 9279) return 'Burgum'
  if (n >= 9280 && n <= 9299) return 'Feanwâlden'

  // ── 9300–9499: Assen / Drenthe ───────────────────
  if (n >= 9300 && n <= 9409) return 'Assen'
  if (n >= 9410 && n <= 9449) return 'Beilen'
  if (n >= 9450 && n <= 9479) return 'Rolde'
  if (n >= 9480 && n <= 9499) return 'Vries'

  // ── 9500–9699: Oost-Groningen ────────────────────
  if (n >= 9500 && n <= 9529) return 'Stadskanaal'
  if (n >= 9530 && n <= 9559) return 'Veendam'
  if (n >= 9560 && n <= 9589) return 'Ter Apel'
  if (n >= 9600 && n <= 9639) return 'Hoogezand'
  if (n >= 9640 && n <= 9679) return 'Winschoten'
  if (n >= 9680 && n <= 9699) return 'Scheemda'

  // ── 9700–9999: Groningen ─────────────────────────
  if (n >= 9700 && n <= 9749) return 'Groningen'
  if (n >= 9750 && n <= 9999) return 'Groningen'

  return ''
}
