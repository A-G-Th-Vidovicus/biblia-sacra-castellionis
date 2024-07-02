# Biblia Sacra ex Sebastiani Castellionis interpretatione: *Editio Contemporanea*

Omnibus visitantibus repositorium meum *Bibliorum Sacrorum ex Sebastiani Castellionis interpretatione*: **salutem!**

## Intentiones rationesque huius proiecti

Brevi: intentio mea quae ad hunc proiectum fingendum spectat est
*omnes libros rescribere Bibliorum Sacrorum ex Sebastiani Castellionis interpretatione moderno cum systemate* $Con\TeX t$_, quantitate vocalium omnium indicata_.

Nostris temporibus, variae editiones operis Castellionis accessibiles Interreti sunt, — e.g. apud *Google Books* aut *Internet Archive* —
sed illas modernis lectoribus difficiles esse censeo multas ob causas.
Primum, scriptae sunt antiquis litteris parvae qualitatis, quae nonnumquam illegibiles sunt,
e.g. antiqua littera *ſ* (*s longa*) utebatur, quae similis *f* sit; aliqui loci vix legibiles sunt ob plus quam quattuor saeculorum passum.
Deinde, quibusdam in editiones versionis Castellionis multae abbreviationes inveniuntur, e.g. *patreq́* pro *patreque*, *vesperà* pro *vesperam*, *filiorŭ* pro *filiorum*, etc.
Quae clarae erant lectori XVI saeculo, arcanae etiam videntur lectori nostro saeculo — praesertim lectori, qui Latinae haud peritus est linguae.
Denique, librum Castellionis publicatum est XVI saeculo, cum multi verbi scriberentur haud recte, e.g. *coelum* pro *caelum*, *coena* pro *cena*, etc.
Orthographicos errores corrigere studeo — [*Le Gaffiot*](https://gaffiot.fr/) et *Oxford Latin Dictionary* lexica magnopere mihi prosunt.

## Cur versio Castellionis mihi tam placet?

Cum [*Vulgata*](https://vulsearch.sourceforge.net/html/) sancti Hieronymi Stridonensis praeclara sit ac Catholica ab Ecclesia approbata, translatio eius postclassica et vulgaris est, quod saepe erroribus abusibusque linguisticis manifestetur.
Simili modo, [*Nova Vulgata*](https://www.vatican.va/archive/bible/nova_vulgata/documents/nova-vulgata_index_lt.html), recentioribus annis divulgata a Vaticano, vix melior est, modum scribendi Hieronymi conservans eius cum lapsibus.
Latinitas tamen Castellionis alta, classica, pulcraque est (cf. *Iudicia doctorum virorum de Bibliis Castellionis* eodem in libro) —
Castellio usus constructionibus classicis est ac cavit, ne multa Graeca Hebraecave verba introducerentur bona sine ratione.

### Exempla

Ecce exemplum. *Nova* in *Vulgata* fragmentum *1 Io 1, 8–10* sonat:

> Si dixerimus quoniam peccatum non habemus, nosmetipsos seducimus, et veritas in nobis non est.
> Si confitemur peccata nostra, fidelis est et iustus, ut remittat nobis peccata et emundet nos ab omni iniustitia.
> Si dixerimus quoniam non peccavimus, mendacem facimus eum, et verbum eius non est in nobis.

Vidimus sententias subordinatas verbo *quoniam* cum verbo indicativo in modo introduci, quod contra normas est classicas, ubi constructione *accusativus cum infinitivo* utitur.
Versio tamen Castellionis illius fragmenti dicit:

> Si nos peccati expertes esse dicimus, fallimus nos ipsos, nec est in nobis veritas.
> Si confitemur peccata nostra, ille ita fidelis et iustus est, ut nobis peccatorum veniam det nosque ab omni culpa expiet.
> Si nos peccasse negamus, mendacem facimus eum, nec est in nobis eius sermo.

Consideremus atque alterum exemplum. *Nova* in *Vulgata* fragmentum *Mc 1, 23–24* sonat:
> Et statim erat in synagoga eorum homo in spiritu immundo; et exclamavit dicens:
> «Quid nobis et tibi, Iesu Nazarene? Venisti perdere nos? Scio qui sis: Sanctus Dei».

Hic Graecum verbum *synagoga* adest, ac usurpata est constructio *venire perdere*, quod tardam ad Latinitatem spectat. Versio Castellionis est tamen:

> Erat autem in eorum collegio homo impurum habens spiritum, qui sic exclamavit:
> «Heu, quid tibi nobiscum rei est, Iesu Nazarene? Venisti perditum nos? Scio te quis sis: Sanctus Dei».

Hic Latinum verbum *collegium* praesens est, classica ac constructio *venire perditum*, hoc est, supinum in accusativo.

Versio Castellionis equidem abundat pulcris classicisque sententiis, perutilis itaque est discipulo Latinae linguae cui Sacra Scriptura nota est.
Latinitas ecclesiastica multis caret — pro pudor! — antiquis constructionibus: supino in accusativo, supino in ablativo, imperativo futuro, etc.
Sincere, ista me paupertas dolet!

## Opera scripta in $\rm Con\TeX t$

Usus systemate $\rm Con\TeX t$ — quod versio celeberrimi systematos $\rm \TeX$ est — efficit, ut quaevis pagina huius editionis formosa bellaque videatur.
Editio typica mei rescripti compilatur cum $\rm Con\TeX t$ LMTX 2024.06.21.

Mea interest varios adesse modos compilationis diversis pro dispositivis electronicis — tum parvis, tum grandibus.
Varii atque adsunt optiones quae ad orthographiam spectant, quae describuntur infra.

### Modi compilationis

**Modus praedefinitus** documentum producit, ubi longi vocales signo ◌̄ indicantur, littera *j* apparet, ac duae consonantes assimilantur ad invicem, e.g. *immortalis* pro *inmortalis*, *illuminatio* pro *inluminatio*, etc.
Praedefinitae dimensiones chartae sunt *B5*, normas Europeas secus.
Hic modus plane ``context bible.tex`` invocatur ex terminale aperto loco, ubi documentum ``bible.tex`` inest.

**Modus classicus** efficit, ut quantitas vocalium not indicetur nec litterae *j* et *J* appareant.
Credo nostris temporibus hoc modo maioritatem librorum Latinorum imprimi. Invocatur  ``context --mode=classical bible.tex``.

**Modus Oxoniensis** similis praecedentis est, sed litteras *v* et *U* supprimit. Nomen trahitur ex eo, quod *Oxford University Press* suis in Latinis publicationibus litteras *u* et *v* non discernit. Invocatur ``context --mode=oxford bible.tex``.

**Modus ecclesiasticus** efficit, ut quantitas vocalium not indicetur, litterae *j* et *J* visibiles sint, et ligaturae *æ* et *œ* utantur. Hoc modo autem $\rm Con\TeX t$ lineas frangit textus regulas secus Italianae linguae, e.g. *a‧scen‧de‧re* pro *as‧cen‧de‧re*. Invocatur ``context --mode=ecclesiastical bible.tex``.

Si non habes, mi Lector, systema $\rm Con\TeX t$ tuo in computatro installatum, i visum catalogon ``pdf``, ubi quattuor documenta exemplaria insunt.

Varii modi minores atque adsunt, sed nunc non describuntur hoc loco. Dicendum tamen mihi est quattuor nunc genera chartae utenda esse: *B5*, *4:3*, *8:5*, et *16:9* — tres ultimi idonei sint varias apud tabulas electronicas. Uti dimensiones chartae mutentur, invocamus e.g. ``context --mode=tablet_4_3 bible.tex``.

Varii modi compilationis coniuncti possunt, e.g. ``context --mode=classical,tablet_4_3 bible.tex`` producit documentum classicam orthographiam secus, pro tabulis in *4:3* proportione.
Plura invenienda sunt in ``configuration.tex`` documento, hieraticis linguis $\rm Lua$ ac $\rm\TeX$ scripto. Commentarii aliquis in locis Anglico sermone scripsi.

### Exemplum

Intueamur fragmentum *Iac 4, 12*. Modo praedefinito id sonat:
> Ūnus est lēgislātor atque jūdex, quī et servāre potest et perdere. Tū vērō quis es, quī alterum damnās?

Modo ecclesiastico:
> Unus est legislator atque judex, qui et servare potest et perdere. Tu vero quis es, qui alterum damnas?

Modo classico:
> Unus est legislator atque iudex, qui et servare potest et perdere. Tu vero quis es, qui alterum damnas?

Modo Oxoniensi:
> Vnus est legislator atque iudex, qui et seruare potest et perdere. Tu uero quis es, qui alterum damnas?

## Perfecta perficiendaque

Rescribere libros Bibliorum Sacrorum longum tempus consumat, praesertim cum originale versione quantitas vocalium non indiceretur — meo studio, lexicis consultatis ac [*A Latin Macronizer*](https://alatius.com/macronizer/) situ, quantitatem indico.
Igitur exspecto multos annos praeterituros esse priusquam tota Biblia rescribam. Primum perficere partes Novi Foederis mihi est, propterea quod id brevius Vetere Foedere est.
Caveat tamen Lector: *libros Castellionis rescribo otioso meo tempore, ac polliceri nolo et nequeo totam meam operam umquam perfectam fore!*

### Libri Novi Foederis:

- [ ] Evangelia:
  1. [ ] secundum Matthaeum,
  2. [x] secundum Marcum,
  3. [ ] secundum Lucam,
  4. [ ] secundum Iohannem;

- [ ] Actus apostolorum;

- [ ] Epistolae Paulinae:
  1. [ ] epistola ad Romanos,
  2. [ ] epistola prima ad Corinthios,
  3. [ ] epistola altera ad Corinthios,
  4. [ ] epistola ad Galatas,
  5. [ ] epistola ad Ephesios,
  6. [ ] epistola ad Philippenses,
  7. [ ] epistola ad Colossenses,
  8. [ ] epistola prima ad Thessalonicenses,
  9. [ ] epistola altera ad Thessalonicenses,
  10. [ ] epistola prima ad Timotheum,
  11. [ ] epistola altera ad Timotheum,
  12. [ ] epistola ad Titum,
  13. [x] epistola ad Philemonem;

- [ ] Epistola ad Hebraeos;

- [ ] Epistolae catholicae:
  1. [x] epistola Iacobi,
  2. [ ] epistola prima Petri,
  3. [ ] epistola altera Petri,
  4. [x] epistola prima Iohannis,
  5. [x] epistola altera Iohannis,
  6. [x] epistola tertia Iohannis,
  7. [x] epistola Iudae;

- [x] Apocalypsis Iohannis.

## Errorem conspexisti? Scribito mihi notitam!

Quamquam opus rescribendi librorum Castellionis diligenter et multa cum cura perficio, errores aliqui textum certo aliquis in locis corrumpunt.
Mea refert ut errores eliminentur utque opus meum prosit discipulis Bibliorum Sacrorum Latinaeve linguae.
Si quemvis lapsum animadvertisti, igonosce mihi! Te rogo, *Egregie Lector*, uti scribas mihi notitam vel hic apud GitHub vel apud meum cursum electronicum:
``AnulusSmaragdinus@protonmail.com``. Linguae mihi gnotae: Latina, Italiana, Castellana, Anglica, et Polona.

## Cui gratias ago?

Gratias ago variis hominibus coetisque hominum. Primum, quod est perspicuum, gratias ago magno *Sebastiano* ipso *Castellioni* pro eius egregia translatione Bibliorum Sacrorum. Deinde, *Donaldo Ervino Knuth*, creatori systematos $\rm\TeX$, ac omnibus qui recentius systema $\rm Con\TeX t$ perficient. Deinde, omnibus qui lexica Latina scribuntur, praesertim *Felici Gaffiot* ac *Oxoniensibus professoribus*. Denique, gratias meas erga [*the Gregorio Project*](https://gregorio-project.github.io), quoniam creavere classicae exemplaria syllabizationis verborum Latinorum (Anglice *hyphenation patterns*). Salutem atque meis amicis amicabusque dico, qui semper me ad operam meam continuandam adhortentur.

# Bibliographia et fontes

Infra posui aliquos fontes et situs, qui magnopere prosint mihi ad meam operam perficiendam. <mark>Omnis situs Interretialis Kalendis Iuliis anno ᴍᴍxxɪᴠ accessibilis est</mark>.

1. S. Castellio, [*Biblia interprete Sebastiano Castellione*](https://books.google.pl/books?id=1Z1kAAAAcAAJ&dq=editions%3ALCCN2003586150&hl=pl&source=gbs_book_other_versions), Johannes Oporinus, Basilea, 1551;
2. S. Castellio, [*Biblia Sacra ex Sebastiani Castellionis interpretatione*](https://www.google.pl/books/edition/Biblia_Sacra/xmlCAAAAcAAJ?hl=pl&gbpv=0), Thomas Fritsch, Lipsia, 1697;
3. E. Schick (editor), [*Nova Vulgata*](https://www.vatican.va/archive/bible/nova_vulgata/documents/nova-vulgata_index_lt.html) (2ᵃ ed.), Libreria Editrice Vaticana, Città del Vaticano, 1998;
4. E. Nestle, K. Aland (editores), *Novum Testamentum Graece* (28ᵃ ed.), Deutsche Bibelgesellschaft, Stuttgart, 2012;
5. M. A. C. de Vaan, *Etymological Dictionary of Latin and the other Italic Languages*, Brill, Leiden, 2008;
6. P. G. W. Glare (editor), *Oxford Latin Dictionary* (2ᵃ ed.), Oxford University Press, Oxford, 2012;
7. F. Gaffiot, [*Dictionnaire illustré latin-français*](https://archive.org/details/Gaffiot2016), Gérard Gréco, 2016;
8. Pragma ADE, [*ConTeXt LMTX*](https://www.pragma-ade.nl/install.htm);
9. Johan Winge, [*A Latin Macronizer*](https://alatius.com/macronizer/);
10. The Gregorio Project, [*hyphen-la*](https://github.com/gregorio-project/hyphen-la);
11. S. Castellio, [*Biblia interprete Sebastiano Castellione*](https://la.wikisource.org/wiki/Biblia_Sacra_interprete_Sebastiano_Castellione), Vicifons;
12. Blue Letter Bible Institute, [*Blue Letter Bible*](https://www.blueletterbible.org).

---

## Pauca de me ipso

Ego, $\color{green} A.\thinspace G.\thinspace Th.\thinspace Vidovicus$, Polono 🇵🇱 genere Cracoviaeque degens, mathematicus sum et admirator historiae, culturae classicae, linguaeque Latinae restituendae.
Aliquis in locis Interreti $\color{green}\bf Anulus\ Smaragdinus$ vocor, quod nomen est atque [**canali mei apud YouTube**](https://www.youtube.com/@AnulusSmaragdinus),
ubi Anglico sermone scientiam meam divulgo ac doctrinam publico pro bono.
