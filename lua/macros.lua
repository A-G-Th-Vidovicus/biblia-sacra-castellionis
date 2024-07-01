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

local macros = {
  -- First declension
  [1] = {
    "Arca",
    "bēlua",
    "bēstia",
    "Diabolica",
    "Dominica",
    "ecclēsia",
    "Jerosolyma", -- to differentiate from ‘Hierosolyma’, the litteral citty
    "Sacra",
    "Scrīptūra",
    "spōnsa",
  },
  -- Second declension
  [2] = {
    "Agnus",
    "apostolus",
    "Deus",
    "Diabolicus",
    "Diabolus",
    "Dominicus",
    "Dominus",
    "ēvangelium",
    "Fīlius",
    "Malus",
    "Orcus",
    "populus",
    "prīmus",
    "prīncipium",
    "puer",
    "rēgnum",
    "Sānctus",
    "Tartareus",
    "Tartarus",
    "Testāmentum",
    "ultimus",
    "verbum",
    "Vērus",
  },
  -- Third declension: {nominative, genetive}
  [3] = {
    {"dracō", "dracōnis"},
    {"Fidēlis", "Fidēlis"},
    {"fīnis", "fīnis"},
    {"foedus", "foederis"},
    {"meretrīx", "meretrīcis"},
    {"Mors", "Mortis"},
    {"Pater", "Patris"},
    {"Rēx", "Rēgis"},
    {"Sermō", "Sermōnis"},
    {"Vīvēns", "Vīventis"},
  },
  -- Fourth declension
  [4] = {
    "Spīritus",
  },
  -- Fifth declension
  [5] = {
    "diēs",
    "rēs",
  },
  -- Indeclinable forms
  [6] = {
    "Āmēn",
    "Duodecim",
    "Ūndecim",
  },
  -- Other
  [7] = {
    {"ALPHA", "Α"},
    {"ŌMEGA", "Ω"},
    {"myInitials", "A.\\,G.\\,Th.\\,Vidovicus"},
    {"myInitialsAcc", "A.\\,G.\\,Th.\\,Vidovicum"},
  },
}

local capitalize_letters_with_macrons = {
  [1] = {"ā", "Ā"},
  [2] = {"ē", "Ē"},
  [3] = {"ī", "Ī"},
  [4] = {"ō", "Ō"},
  [5] = {"ū", "Ū"},
  [6] = {"ȳ", "Ȳ"},
  [7] = {"æ", "Æ"},
  [8] = {"œ", "Œ"},
}

-- Capitalizing words with macrons
local function capitalize(s)
  return string.upper(lpeg.replacer(capitalize_letters_with_macrons):match(s))
end

function write_out_macros()
  for j = 1, #macros do
    T = macros[j]
    if j == 1 then
      for k = 1, #T do
        -- words without the last letter
        local word = T[k]:sub(1,-2)
        local WORD = capitalize(T[k]):sub(1,-2)
        context("\\define\\" .. WORD ..     "A{" .. word ..     "a\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..    "AE{" .. word ..    "ae\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..    "AM{" .. word ..    "am\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..     "Ā{" .. word ..     "ā\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..  "ĀRUM{" .. word ..  "ārum\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..    "ĪS{" .. word ..    "īs\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..    "ĀS{" .. word ..    "ās\\autoinsertnextspace}")
      end
    end
    if j == 2 then
      for k = 1, #T do
        -- words without the last two letters
        local word = T[k]:sub(1,-3)
        local WORD = capitalize(T[k]):sub(1,-3)
        if T[k]:sub(-1,-1) == "m" then
          context("\\define\\" .. WORD .. "A{" .. word .. "a\\autoinsertnextspace}")
        end
        if T[k]:sub(-1,-1) == "r" then
          word = T[k]
          WORD = capitalize(T[k])
          context("\\define\\" .. WORD ..  "{" .. word ..  "\\autoinsertnextspace}")
          context("\\define\\" .. WORD .. "E{" .. word .. "e\\autoinsertnextspace}")
        end
        if T[k]:sub(-1,-1) == "s" and T[k]:sub(-3,-3) ~= "i" then
          context("\\define\\" .. WORD .. "US{" .. word .. "us\\autoinsertnextspace}")
          context("\\define\\" .. WORD ..  "E{" .. word ..  "e\\autoinsertnextspace}")
        end
        -- Exception: vocative of Deus is Deus, not Dee
        if T[k] == "Deus" then
          context("\\define\\DEE{Deus\\autoinsertnextspace}")
        end
        if T[k]:sub(-1,-1) == "s" and T[k]:sub(-3,-3) == "i" then
          context("\\define\\" .. WORD .. "US{" .. word .. "us\\autoinsertnextspace}")
          context("\\define\\" .. WORD:sub(1, -2) .. "Ī{" .. word:sub(1, -2) .. "ī\\autoinsertnextspace}")
        end
        context("\\define\\" .. WORD ..    "Ī{" .. word ..    "ī\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..    "Ō{" .. word ..    "ō\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..   "UM{" .. word ..   "um\\autoinsertnextspace}")
        context("\\define\\" .. WORD .. "ŌRUM{" .. word .. "ōrum\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..   "ĪS{" .. word ..   "īs\\autoinsertnextspace}")
      end
    end
    if j == 3 then
      for k = 1, #T do
        local word_in_genetive = (T[k][2]):sub(1,-3)
        local WORD_in_genetive = capitalize(T[k][2]):sub(1,-3)
        context("\\define\\" .. capitalize(T[k][1]) .. "{" .. T[k][1] .. "\\autoinsertnextspace}")
        context("\\define\\" .. WORD_in_genetive .. "IS{" .. word_in_genetive .. "is\\autoinsertnextspace}")
        context("\\define\\" .. WORD_in_genetive ..  "Ī{" .. word_in_genetive ..  "ī\\autoinsertnextspace}")
        -- not perfect, as nouns of neutral gender have to accusative in -em, but let it be for now
        context("\\define\\" .. WORD_in_genetive .. "EM{" .. word_in_genetive .. "em\\autoinsertnextspace}")
        context("\\define\\" .. WORD_in_genetive ..  "E{" .. word_in_genetive ..  "e\\autoinsertnextspace}")
        -- plural forms are not needed for now
      end
    end
    if j == 4 then
      for k = 1, #T do
        -- words without the last two letters
        local word = T[k]:sub(1,-3)
        local WORD = capitalize(T[k]):sub(1,-3)
        context("\\define\\" .. WORD .. "US{" .. word .. "us\\autoinsertnextspace}")
        context("\\define\\" .. WORD .. "ŪS{" .. word .. "ūs\\autoinsertnextspace}")
        context("\\define\\" .. WORD .. "UĪ{" .. word .. "uī\\autoinsertnextspace}")
        context("\\define\\" .. WORD .. "UM{" .. word .. "um\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..  "Ū{" .. word ..  "ū\\autoinsertnextspace}")
      end
    end
    if j == 5 then
      for k = 1, #T do
        -- words without the last two letters;
        -- -- attention: letter ē takes two bytes,
        -- so we have sub(1,-4) instead of sub(1,-3)
        local word = T[k]:sub(1,-4)
        local WORD = capitalize(T[k]):sub(1,-4)
        context("\\define\\" .. WORD .. "ĒS{" .. word .. "ēs\\autoinsertnextspace}")
        context("\\define\\" .. WORD .. "EM{" .. word .. "em\\autoinsertnextspace}")
        context("\\define\\" .. WORD ..  "Ē{" .. word ..  "ē\\autoinsertnextspace}")
        if T[k]:sub(-3,-3) == "i" then
          context("\\define\\" .. WORD .. "ĒĪ{" .. word .. "ēī\\autoinsertnextspace}")
        end
        if T[k]:sub(-3,-3) ~= "i" then
          context("\\define\\" .. WORD .. "EĪ{" .. word .. "eī\\autoinsertnextspace}")
        end
      end
    end
    if j == 6 then
      for k = 1, #T do
        local word = T[k]
        local WORD = capitalize(T[k])
        context("\\define\\" .. WORD .. "{" .. word .. "\\autoinsertnextspace}")
      end
    end
    if j == 7 then
      for k = 1, #T do
        context("\\define\\" .. T[k][1] .. "{" .. T[k][2] .. "\\autoinsertnextspace}")
      end
    end
  end
end
