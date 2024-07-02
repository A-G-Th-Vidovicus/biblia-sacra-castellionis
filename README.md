# Biblia Sacra ex Sebastiani Castellionis interpretatione: Editio Contemporanea

Omnibus visitantibus repositorium meum *Bibliorum Sacrorum ex Sebastiani Castellionis interpretatione*: **salutem!**

## Intentiones rationesque huius proiecti

Brevi: intentio mea quae ad hunc proiectum fingendum spectat est
*omnes libros rescribere Bibliorum Sacrorum ex Sebastiani Castellionis interpretatione moderno cum systemate ConTeXt, quantitate vocalium omnium indicata*.

Nostris temporibus, variae editiones operis Castellionis accessibiles Interreti sunt, — e.g. apud *Google Books* aut *Internet Archive* —
sed illas modernis lectoribus difficiles esse censeo multas ob causas.
Primum, scriptae sunt antiquis litteris parvae qualitatis, quae nonnumquam illegibiles sunt,
e.g. antiqua littera *ſ* (*s longa*) utebatur, quae similis *f* sit; aliqui loci vix legibiles sunt ob plus quam quattuor saeculorum passum.
Deinde, quibusdam in editiones versionis Castellionis multae abbreviationes inveniuntur, e.g. *patreq́* pro *patreque*, *filiorŭ* pro *filiorum*, etc.
Quae clarae erant lectori XVI saeculo, arcanae etiam videntur lectori nostro saeculo — praesertim lectori, qui Latinae haud peritus est linguae.
Denique, librum Castellionis publicatum est XVI saeculo, cum multi verbi scriberentur haud recte, e.g. *coelum* pro *caelum*, *coena* pro *cena*, etc.
Orthographicos errores corrigere studeo — *Le Gaffiot* et *Oxford Latin Dictionary* lexica magnopere mihi prosunt.

## Cur versio Castellionis mihi tam placet?

Cum *Vulgata* sancti Hieronymi praeclara sit ac Catholica ab Ecclesia approbata, translatio Hieronymi postclassica et vulgaris est.
Simili modo, *Nova Vulgata*, recentioribus annis divulgata, vix melior est, modum scribendi Hieronymi conservans cum eius lapsibus.
Latinitas tamen Castellionis alta, classica, pulcraque est —
Castellio usus constructionibus classicis est ac cavit, ne multa Graeca Hebraecave verba introducerentur bona sine ratione.

Exempli gratia, in *Nova Vulgata* fragmentum 1 Io 1, 8–10 sonat:

> Si dixerimus quoniam peccatum non habemus, nosmetipsos seducimus, et veritas in nobis non est.
> Si confitemur peccata nostra, fidelis est et iustus, ut remittat nobis peccata et emundet nos ab omni iniustitia.
> Si dixerimus quoniam non peccavimus, mendacem facimus eum, et verbum eius non est in nobis.

Vidimus sententias subordinatas verbo *quoniam* cum verbo indicativo in modo introduci, quod est contra normas classicas, ubi constructio *accusativus cum infinitivo* utitur.
Versio tamen Castellionis illius fragmenti dicit:

> Si nos peccati expertes esse dicimus, fallimus nos ipsos, nec est in nobis veritas.
> Si confitemur peccata nostra, ille ita fidelis et iustus est, ut nobis peccatorum veniam det nosque ab omni culpa expiet.
> Si nos peccasse negamus, mendacem facimus eum, nec est in nobis eius sermo.

Consideremus atque aliud exemplum. In *Nova Vulgata*. Fragmentum Mc 1, 23–24 sonat:
> Et statim erat in synagoga eorum homo in spiritu immundo; et exclamavit dicens:
> «Quid nobis et tibi, Iesu Nazarene? Venisti perdere nos? Scio qui sis: Sanctus Dei».

Hic Graecum verbum *synagoga* adest, ac coniunctio *venire perdere*, quae tardam ad Latinitatem spectat. Versio Castellionis est:

> Erat autem in eorum collegio homo impurum habens spiritum, qui sic exclamavit:
> «Heu, quid tibi nobiscum rei est, Iesu Nazarene? Venisti perditum nos? Scio te quis sis: Sanctus Dei».

Hic Latinum verbum *collegium* praesens est, classica ac constructio *venire perditum*, hoc est, supinum in accusativo.

Versio Castellionis abundat pulcris classicisque sententiis, perutilis itaque est discipulo Latinae linguae cui Biblia nota sunt.
Latinitas ecclesiastica multis caret — pro pudor! — antiquis constructionibus: supino in accusativo, supino in ablativo, imperativo futuro, etc.
Sincere, ista me paupertas dolet!

## Opera scripta in ConTeXt

Usus systemate ConTeXt — quod versio celeberrimi systematos TeX est — efficit, ut quaevis pagina huius editionis formosa bellaque videatur.
Editio typica mei rescripti compilatur cum ConTeXt LMTX 2024.06.21 — situs ubi illud systema inveniri potest in bibliographia posui.

Mea interest varios adesse modos compilationis diversis pro dispositivis electronicis — tum parvis, tum grandibus.
Varii atque adsunt optiones quae ad orthographiam spectant, quae describuntur infra.

**Modus praedefinitus** documentum producit, ubi longi vocales signo ◌̄ indicantur, littera *j* apparet, ac duae consonantes assimilantur ad invicem, e.g. *immortalis* pro *inmortalis*, *illuminatio* pro *inluminatio*, etc.
Praedefinitae dimensiones chartae sunt *B5*, normas Europeas secus.
Hic modus plane ``context bible.tex`` invocatur ex terminale aperto loco, ubi documentum ``bible.tex`` inest.

**Modus classicus** efficit, ut quantitas vocalium not indicetur nec litterae *j* et *J* appareant.
Credo nostris temporibus hoc modo maioritatem librorum Latinorum imprimi. Invocatur  ``context --mode=classical bible.tex``.

**Modus Oxoniensis** similis praecedentis est, sed litteras *v* et *U* supprimit. Nomen trahitur ex eo, quod *Oxford University Press* suis in Latinis publicationibus litteras *u* et *v* non discernit. Invocatur ``context --mode=oxford bible.tex``.

**Modus ecclesiasticus** efficit, ut quantitas vocalium not indicetur, litterae *j* et *J* visibiles sint, et ligaturae *ae* et *oe* utantur. Hic modus lineas frangit textus Italianae linguae regulas secus, e.g. *a‧scen‧de‧re* pro *as‧cen‧de‧re*. Invocatur ``context --mode=ecclesiastical bible.tex``.

Varii modi minores atque adsunt, sed nunc non describuntur hoc loco. Dicendum mihi tamen est quattuor genera chartae disponibiles esse: *B5*, 84:3*, *8:5*, et *16:9* — tres ultimi idonei sint apud varias tabulas electronicas. Ut dimensiones chartae mutentur, invocamus e.g. ``context --mode=tablet_4_3 bible.tex``.

Varii modi compilationis coniuncti possunt, e.g. ``context --mode=classical,tablet_4_3 bible.tex`` producit documentum classicam orthographiam secus, pro tabulis in *4:3* proportione.

## Perfecta perficiendaque

Rescribere libros Bibliorum Sacrorum longum tempus consumat, praesertim cum originale versione quantitas vocalium non indiceretur — meo studio, lexicis consultatis ac [*A Latin Macronizer*](https://alatius.com/macronizer/) situ , quantitatem indico.
Igitur exspecto multos annos praeterituros esse priusquam tota Biblia rescribam. Primum perficere partes Novi Foederis mihi est, propterea quod id brevius Vetere Foedere est.

Libri Novi Foederis:

- Evangelia:
  1. secundum Matthaeum,
  2. secundum Marcum, ✅
  3. secundum Lucam,
  4. secundum Iohannem;

- Actus apostolorum;

- Epistolae Paulinae:
  1. epistola ad Romanos,
  2. epistola prima ad Corinthios,
  3. epistola altera ad Corinthios,
  4. epistola ad Galatas,
  5. epistola ad Ephesios,
  6. epistola ad Philippenses,
  7. epistola ad Colossenses,
  8. epistola prima ad Thessalonicenses,
  9. epistola altera ad Thessalonicenses,
  10. epistola prima ad Timotheum,
  11. epistola altera ad Timotheum,
  12. epistola ad Titum,
  13. epistola ad Philemonem; ✅

- Epistola ad Hebraeos;

- Epistolae catholicae:
  1. epistola Iacobi, ✅
  2. epistola prima Petri,
  3. epistola altera Petri,
  4. epistola prima Iohanni, ✅
  5. epistola altera Iohanni, ✅
  6. epistola tertia Iohanni, ✅
  7. epistola Iudae; ✅

- Apocalypsis Iohanni. ✅

## Errorem animadvertis? Scribe mihi notitam!

Quamquam opus rescribendi librorum Castellionis diligenter et multa cum cura perficio, errores aliqui certo aliquis in locis textum corrumpunt.
Mea refert ut errores eliminentur et ut opus meum prosit discipulis Bibliorum Latinaeve linguae.
Si quemvis lapsum animadvertisti, igonosce mihi! Te posco, *Egregie Lector*, uti scribas mihi notitam vel hic apud GitHub vel apud meum cursum electronicum:
``AnulusSmaragdinus@protonmail.com``. Linguae notae mihi sunt: Latina, Italiana, Castellana, Anglica, et Polona.

## Cui gratias ago?

Gratias ago variis hominibus coetisque hominum. Primum, quod est perspicuum, gratias ago magno *Sebastiano* ipso *Castellioni* pro eius egregia translatione Bibliorum Sacrorum. Deinde, *Donaldo Knuth*, creatori systematos TeX, ac omnibus qui recentius systema ConTeXt perficient. Deinde, omnibus qui lexica Latina scribuntur, praesertim *Felici Gaffiot* ac *professoribus Oxoniensibus*. Denique, gratias meas erga *the Gregorio Project*, quoniam creavit classicae exemplaria syllabizationis verborum Latinorum (Anglice *hyphenation patterns*).

# Bibliographia et fontes

Infra posui aliquos fontes et situs, qui magnopere prosint mihi ad meam operam perficiendam. Omnes situs Interretiales Kalendiis Iuliis anno MMXXIV accessibiles sunt.
1. S. Castellio, *[Biblia interprete Sebastiano Castellione](https://books.google.pl/books?id=1Z1kAAAAcAAJ&dq=editions%3ALCCN2003586150&hl=pl&source=gbs_book_other_versions)*, Johannes Oporinus, Basilea, 1551;
2. S. Castellio, *[Biblia Sacra ex Sebastiani Castellionis interpretatione](https://www.google.pl/books/edition/Biblia_Sacra/xmlCAAAAcAAJ?hl=pl&gbpv=0)*, Thomas Fritsch, Lipsia, 1697;
3. E. Nestle, K. Aland (editores), *Novum Testamentum Graece* (28 ed.), Deutsche Bibelgesellschaft, Stuttgart, 2012.
4. M. A. C. de Vaan, editor, *Etymological Dictionary of Latin and the other Italic Languages*, Brill, Leiden, 2008;
5. P. G. W. Glare (editor), *Oxford Latin Dictionary* (2nd ed.), Oxford University Press, Oxford, 2012;
6. F. Gaffiot, *[Dictionnaire illustré latin-français](https://archive.org/details/Gaffiot2016)*, Gérard Gréco, 2016;
7. Pragma ADE, *[ConTeXt LMTX](https://www.pragma-ade.nl/install.htm)*;
8. Johan Winge, [*A Latin macronizer*](https://alatius.com/macronizer/);
9. The Gregorio Project, *[hyphen-la](https://github.com/gregorio-project/hyphen-la)*;
10. S. Castellio, [*Biblia interprete Sebastiano Castellione* (apud Vicifontem)](https://la.wikisource.org/wiki/Biblia_Sacra_interprete_Sebastiano_Castellione);
11. Blue Letter Bible Institute, [Blue Letter Bible](https://www.blueletterbible.org).

## Pauca de me ipsum

Ego, 𝒜. 𝒢. 𝒯𝒽. 𝒱𝒾𝒹𝑜𝓋𝒾𝒸𝓊𝓈, Polono genere, mathematicus sum et amator historiae classicae linguaeque Latinae restituendae.
Aliquis in locis Interreti vocor **Anulus Smaragdinus**, quod nomen est atque [**mei canali apud YouTube**](https://www.youtube.com/@AnulusSmaragdinus),
ubi Anglico sermone scientiam meam divulgo ac doctinam publico pro bono.




