fun! VimPlugTest()
    " hot reloading
    " dont forget to remove this one....
    lua for k in pairs(package.loaded) do if k:match("^vim%-plug%-test") then package.loaded[k] = nil end end

    " call the function
    lua require("vim-plug-test").printHello()
endfun

augroup VimPlugTest
    " this handles vim events
    " like event listeners
    autocmd!

    " this one is triggered every time you exit of insert mode
    " autocmd InsertLeave * :lua require("vim-plug-test").printHello()
augroup END
