--[[ Copyright (C) 2024 A. G. Th. Vidovicus.

     This program is free software: you can redistribute it and/or modify it
     under the terms of the GNU General Public License as published
     by the Free Software Foundation, either version 3 of the License,
     or (at your option) any later version.

     This program is distributed in the hope that it will be useful,
     but WITHOUT ANY WARRANTY; without even the implied warranty
     of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
     See the GNU General Public License for more details.

     You should have received a copy of the GNU General Public License along
     with this program. If not, see <https://www.gnu.org/licenses/>.

     ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     ┃ Biblia Sacra ex Sebastiani Castellionis interpretatione: ┃
     ┃                  Editio Contemporanea                    ┃
     ┃                       01.07.2024                         ┃
     ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
 --]]

local input_translations_table = {
  ["default"] = {
    -- VARIABLE QUANTITY --
    -- Covering vowels of dubious quantity,
    -- according to the Oxford Latin Dictionary, 2nd ed.
    {"fī̆er", "fier"}, -- (OLD, p. 774)
    {"ibī̆", "ibi"}, -- (OLD, p. 898)
    {"illī̆us", "illīus"}, -- (OLD, p. 908)
    {"ipsī̆us", "ipsīus"}, -- (OLD, p. 1060)
    {"istī̆us", "istīus"}, -- (OLD, p. 1067)
    {"sī̆quidem", "sīquidem"}, -- (OLD, p. 1953)
    {"sōlī̆us", "sōlīus"}, -- (OLD, p. 1972)
    {"tōtī̆us", "tōtīus"}, -- (OLD, p. 2153)
    {"ubī̆", "ubi"}, -- (OLD, p. 2223)
    {"ullī̆us", "ullīus"}, -- (OLD, pp. 1321, 2297)
    {"unī̆us", "unīus"}, -- (OLD, p. 2309)
    {"ū̆sque", "ūsque"}, -- (OLD, p. 2325)
    {"utrī̆us", "utrīus"}, -- (OLD, p. 2333)
    -- ARCHAIC TO CLASSICAL --
    {"duell", "bell"}, -- duellum → bellum
    -- I use ‧ to separate a word from its enclitic
    {"‧", ""},
    {"|", ""},
    -- Changing horizontal bar (quotation dash) to em-dash,
    -- as Latin Modern font plays weirdly with horizontal bar
    {"―", "—"},
  },
  ["ae_oe_ligatures"] = {
    {"ae", "æ"},
    {"oe", "œ"},
  },
  ["assimilation"] = {
    -- AD --
    {"adc", "acc"},
    {"adf", "aff"},
    {"adg", "agg"},
    {"adl", "all"},
    {"adn", "ann"}, --rare
    {"adp", "app"},
    {"ads", "ass"},
    {"adsp", "asp"},
    {"adst", "ast"},
    {"adt", "att"},
    -- CON --
    {"conl", "coll"},
    {"conm", "comm"},
    {"conr", "corr"},
    -- EX --
    {"ecf", "eff"},
    -- IN --
    {"inl", "ill"},
    {"inm", "imm"},
    {"inp", "imp"},
    {"inr", "irr"},
    -- OB --
    {"obc", "occ"},
    {"obf", "off"},
    {"obp", "opp"},
    -- SUB --
    {"subc", "succ"},
    {"subf", "suff"},
    {"subg", "sugg"},
    {"subp", "supp"},
    {"subr", "surr"},
    -- EXCEPTIONS --
    -- Forms of ‘adesse’ are usually not assimilated
    {"adsum", "adsum"},
    {"adsumus", "adsumus"},
    {"adsunt", "adsunt"},
    {"startadnotation", "startadnotation"},
    {"stopadnotation", "stopadnotation"},
    {"subchristquote", "subchristquote"},
    {"input", "input"},
  },
  ["c_to_ch"] = {
    {"pulc", "pulch"},
  },
  ["division"] = {
    {"acsī", "ac sī"},
    {"etiamsī", "etiam sī"},
    {"necnōn", "nec nōn"},
    {"nōnnisi", "nōn nisi"},
    {"nōnnūll", "nōn nūll"},
    {"quamobrem", "quam ob rem"},
    {"quemadmodum", "quem ad modum"},
    {"quodsī", "quod sī"},
    {"quōmodo", "quō modō"},
    {"quoūsque", "quō ūsque"},
    {"sī̆quidem", "sī quidem"},
    -- ----- --
    -- NOUNS --
    -- ----- --
    -- PERSONA FAMILIAE --
    {"māterfamiliae", "māter familiae"},
    {"mātrisfamiliae", "mātris familiae"},
    {"mātrīfamiliae", "mātrī familiae"},
    {"mātrefamiliae", "mātre familiae"},
    {"paterfamiliae", "pater familiae"},
    {"patrisfamiliae", "patris familiae"},
    {"patrīfamiliae", "patrī familiae"},
    {"patrefamiliae", "patre familiae"},
    -- RES PUBLICA --
    {"rēspūblica", "rēs pūblica"},
    {"reīpūblicae", "reī pūblicae"},
    {"rempūblicam", "rem pūblicam"},
    {"rēpūblicā", "rē pūblicā"},
    -- IUS IURANDUM --
    {"jūsjūrand", "jūs jūrand"},
    -- TERRAE MOTUS --
    {"terraemōt", "terrae mōt"},
  },
  ["emdash_to_endash"] = {
    {"---", "--"},
  },
  ["gn_to_n"] = {
    {"gnāt", "nāt"},
    -- EXCEPTIONS --
    {"cognāt", "cognāt"},
    {"indignāt", "indignāt"},
    {"prōgnāt", "prōgnāt"},
  },
  ["i_to_e"] = {
    {"|īs", "ēs"},
    {"||īs", "ēs"},
    {"|im", "em"},
    {"|ī", "e"},
  },
  ["m_to_n"] = {
    {"eamdem", "eandem"},
    {"earūmdem", "earūndem"},
    {"eorūmdem", "eorūndem"},
    {"eumdem", "eundem"},
    {"quamdam", "quandam"},
    {"quamquam", "quanquam"},
    {"quārumdam", "quārundam"},
    {"quemdam", "quendam"},
    {"quamdiū", "quandiū"},
    {"quōrumdam", "quōrundam"},
    {"umquam", "unquam"},
  },
  ["no_diaeresis"] = {
    {"ë", "e"},
  },
  ["no_h"] = {
    {"ōhann", "ōann"},
    {"Halph", "Alph"},
    {"Harimath", "Arimath"},
    {"Henōch", "Enōch"},
  },
  ["no_quum"] = {
    {"quum", "cum"},
    {"equum", "equum"},
    {"antīquum", "antīquum"},
  },
  ["no_uti"] = {
    {"utī", "ut"},
  },
  ["s_to_r"] = {
    {"colōs", "color"},
    {"honōs", "honor"},
  },
  ["u_to_i"] = {
    {"monument", "moniment"},
  },
}

local function capitalize_first_letter(s)
  if str=="" then return end
  local first = s:sub(1,1)
  local last = s:sub(2)
  return first:upper() .. last:lower()
end

function write_out_input_translations(s)
  local T = input_translations_table[s]
  for k = 1, #T do
    context("\\translateinput[" .. capitalize_first_letter(T[k][1]) .. "][" .. capitalize_first_letter(T[k][2]) .. "]")
    context("\\translateinput[" .. T[k][1] .. "][" .. T[k][2] .. "]")
  end
end
