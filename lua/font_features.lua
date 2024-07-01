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

     ┌──────────┐
     │01.07.2024│
     └──────────┘

     Removing macrons by font manipulations,
     cf. https://www.mail-archive.com/ntg-context@ntg.nl/msg80290.html
     and https://tex.stackexchange.com/questions/582551/goodies-for-colored-french-accents

     Latin Modern for some reason has no ‘ȳ/Ȳ’ characters,
     so I am forced to do a trick:
     I am effectively replacing ‘ỹ/Ỹ’ (which are present) by ‘ȳ/Ȳ’,
     and I am also translating every ‘ȳ/Ȳ’ to ‘ỹ/Ỹ’ in the input file.
     Is this solution elegant? No.
     Does it work? Yes.
--]]

fonts.handlers.otf.addfeature {
  name = "y_tilde_to_y_macron",
  type = "multiple",
  data = {
    -- combining macron symbol, U+0304
    ["ỹ"] = {"y","̄"},
    --["Ỹ"] = {"Y","̄"}, -- looks horrible and is most likely not needed
  },
}

fonts.handlers.otf.addfeature {
  name = "no_j",
  type = "multiple",
  data = {
    ["j"] = {"i"},
    ["J"] = {"I"},
  },
}

fonts.handlers.otf.addfeature {
  name = "no_v",
  type = "multiple",
  data = {
    ["v"] = {"u"},
    ["U"] = {"V"},
    ["Ū"] = {"V"},
  },
}

fonts.handlers.otf.addfeature {
  name = "no_macrons",
  type = "multiple",
  data = {
    ["ā"] = {"a"},
    ["Ā"] = {"A"},
    ["ē"] = {"e"},
    ["Ē"] = {"E"},
    ["ī"] = {"i"},
    ["Ī"] = {"I"},
    ["ō"] = {"o"},
    ["Ō"] = {"O"},
    ["ū"] = {"u"},
    ["Ū"] = {"U"},
  },
}

-- Repairing fi ligature after removing macrons;
-- this block must be below the no_macrons block
fonts.handlers.otf.addfeature {
  name = "fimacron_to_fi",
  type = "ligature",
  data = {
    ["fi"] = {"f", "i"},
  }
}
