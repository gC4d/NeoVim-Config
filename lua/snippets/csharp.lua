local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

ls.add_snippets("cs", {
  -- C# class snippet
  s("class", fmt([[
        namespace {};
        public class {} 
        {{
            // Constructor
            public {}() 
            {{
                {}
            }}

        }}
    ]], {
     i(1, "Namespace"),          -- Namespace placeholder
        i(2, "ClassName"),          -- Class name
        rep(2),                     -- Repeat the class name for constructor
        i(3, "// constructor body")-- Constructor body    -- Method body    })),
    })),
}) 
