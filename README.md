# Biblia Sacra ex Sebastiani Castellionis interpretatione: Editio Contemporanea

Omnibus visitantibus repositorium meum _Bibliorum Sacrorum ex Sebastiani Castellionis interpretatione_: **salutem!**

## Intentiones rationesque huius proiecti

Brevi: intentio mea quae ad hunc proiectum fingendum spectat est
_omnes libros rescribere Bibliorum Sacrorum ex Sebastiani Castellionis interpretatione moderno cum systemate ConTeXt, quantitate vocalium omnium indicata_.

Nostris temporibus, variae editiones operis Castellionis accessibiles Interreti sunt, — e.g. apud _Google Books_ —
sed illas modernis lectoribus difficiles esse censeo multas ob causas.
Primum, scriptae sunt antiquis litteris parvae qualitatis, quae nonnumquam illegibiles sunt,
e.g. antiqua littera _ſ_ utebatur, quae similis _f_ sit; aliqui loci vix legibiles sunt ob plus quam quattuor saeculorum passum.
Deinde, quibusdam in editiones versionis Castellionis multae abbreviationes inveniuntur, quae clarae erant lectori XVI saeculo, sed arcanae videntur lectori nostro saeculo — praesertim lectori qui iam Latinam linguam discit.
Denique, librum Castellionis publicatum est XVI saeculo, quando multi verbi scribebantur haud recte, e.g. _coelum_ pro _caelum_, _coena_ pro _cena_, etc.
Orthographicos errores corrigere studeo — _Le Gaffiot_ et _Oxford Latin Dictionary_ lexica magnopere mihi prosunt.

## Cur versio Castellionis mihi tam placet?

Quum _Vulgata_ sancti Hieronymi praeclara sit ac Catholica ab Ecclesia approbata, translatio Hieronymi postclassica et vulgaris est.
Simili modo, _Nova Vulgata_ recentioribus annis divulgata vix melior est, modum scribendi Hieronymi conservans.
Latinitas tamen Castellionis alta, classica, pulcraque est —
Castellio usus constructionibus classicis est ac cavit, ne multa Graeca Hebraecave verba introducerentur bona sine ratione.

Exempli gratia, in _Nova Vulgata_ fragmentum 1 Io 1, 8–10 sonat:

> Si dixerimus quoniam peccatum non habemus, nosmetipsos seducimus, et veritas in nobis non est.
> Si confitemur peccata nostra, fidelis est et iustus, ut remittat nobis peccata et emundet nos ab omni iniustitia.
> Si dixerimus quoniam non peccavimus, mendacem facimus eum, et verbum eius non est in nobis.

Vidimus sententias subordinatas verbo _quoniam_ cum verbo indicativo in modo introduci, quod est contra normas classicas, ubi constructio _accusativus cum infinitivo_ utitur.
Versio tamen Castellionis illius fragmenti dicit:

> Si nos peccati expertes esse dicimus, fallimus nos ipsos, nec est in nobis veritas.
> Si confitemur peccata nostra, ille ita fidelis et iustus est, ut nobis peccatorum veniam det nosque ab omni culpa expiet.
> Si nos peccasse negamus, mendacem facimus eum, nec est in nobis eius sermo.

Consideremus atque aliud exemplum. In _Nova Vulgata_. Fragmentum Mc 1, 23–24 sonat:
> Et statim erat in synagoga eorum homo in spiritu immundo; et exclamavit dicens:
> «Quid nobis et tibi, Iesu Nazarene? Venisti perdere nos? Scio qui sis: Sanctus Dei».

Hic Graecum verbum _synagoga_ adest, ac coniunctio _venire perdere_, quae tardam ad Latinitatem spectat. Versio Castellionis est:

> Erat autem in eorum collegio homo impurum habens spiritum, qui sic exclamavit:
> «Heu, quid tibi nobiscum rei est, Iesu Nazarene? Venisti perditum nos? Scio te quis sis: Sanctus Dei».

Hic Latinum verbum _collegium_ praesens est, classica ac constructio _venire perditum_, hoc est, supinum in accusativo.

Versio Castellionis abundat pulcris classicisque sententiis, perutilis itaque est discipulo Latinae linguae cui Biblia nota sunt.
Latinitas ecclesiastica multis caret — pro pudor! — antiquis constructionibus: supino in accusativo, supino in ablativo, imperativo futuro, etc.
Sincere, ista me paupertas dolet!

## Opera scripta in ConTeXt

Usus systemate ConTeXt — quod versio celeberrimi systematos TeX est —
efficit, ut quaevis pagina huius editionis formosa bellaque videatur.
Mea interest varios adesse modos compilationis diversis pro dispositivis electronicis — tum parvis, tum grandibus.
Varii atque adsunt optiones quae ad orthographiam spectant, quae describuntur infra.

**Modus praedefinitus** documentum producit, ubi longi vocales signo ◌̄ indicantur, littera _j_ apparet, ac duae consonantes assimilantur ad invicem, e.g. _immortalis_ pro _inmortalis_, _illuminatio_ pro _inluminatio_, etc.
Praedefinitae dimensiones chartae sunt _B5_, normas Europeas secus.
Hic modus plane ``context bible.tex`` invocatur ex terminale aperto loco, ubi documentum ``bible.tex`` inest.

**Modus classicus** efficit, ut quantitas vocalium not indicetur nec litterae _j_ et _J_ appareant.
Credo nostris temporibus hoc modo maioritatem librorum Latinorum imprimi. Invocatur  ``context --mode=classical bible.tex``.

**Modus Oxoniensis** similis praecedentis est, sed litteras _v_ et _U_ supprimit. Nomen trahitur ex eo, quod _Oxford University Press_ suis in Latinis publicationibus litteras _u_ et _v_ non discernit. Invocatur ``context --mode=oxford bible.tex``.

**Modus ecclesiasticus** efficit, ut quantitas vocalium not indicetur, litter _j_ visibilis sit, et ligaturae _ae_ et _oe_ utantur. Hic modus lineas frangit textus Italianae linguae regulas secus, e.g. _a‧scen‧de‧re_ pro _as‧cen‧de‧re_. Invocatur ``context --mode=ecclesiastical bible.tex``.

Varii modi minores atque adsunt, sed nunc non describuntur hoc loco. Dicendum mihi tamen est quattuor genera chartae disponibiles esse: _B5_, _4:3_, _8:5_, et _16:9_ — tres ultimi idonei sint apud varias tabulas electronicas. Ut dimensiones chartae mutentur, invocamus e.g. ``context --mode=tablet_4_3 bible.tex``.

Varii modi compilationis coniuncti possunt, e.g. ``context --mode=classical,tablet_4_3 bible.tex`` producit documentum classicam orthographiam secus, pro tabulis in _4:3_ proportione.

## Perfecta perficiendaque

## Errorem animadvertis? Scribe mihi notitam!

# Bibliographia et fontes

## Pauca de me ipsum






