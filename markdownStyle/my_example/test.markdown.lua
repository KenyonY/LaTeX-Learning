local ran_ok, error = pcall(function() local kpse = require("kpse") kpse.set_program_name("luatex") local lfs = require("lfs") local cacheDir = "./_markdown_test" if not lfs.isdir(cacheDir) then assert(lfs.mkdir(cacheDir)) end local md = require("markdown") local convert = md.new({cacheDir = "./_markdown_test", contentBlocks = true, definitionLists = true, footnotes = true, fencedCode = true, hashEnumerators = true, hybrid = true, inlineFootnotes = true, pipeTables = true, smartEllipses = true, tableCaptions = true, } ) local input = assert(io.open("README.md", "r"):read("*a")) print(convert(input:gsub("\r\n?", "\n") .. "\n")) end) if not ran_ok then local file = io.open("./test.markdown.err", "w") if file then file:write(error .. "\n") file:close() end print('\\markdownError{An error was encountered while executing Lua code}{For further clues, examine the file "./test.markdown.err"}') end