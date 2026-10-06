-- Typeset `::: kiegeszites` fenced divs as the shaded LaTeX environment of
-- the same name (defined in header.tex). The textbooks use these boxes for
-- proofs that were not given in the lecture. Other output formats keep the
-- plain div.
function Div(el)
  if FORMAT:match('latex') and el.classes:includes('kiegeszites') then
    table.insert(el.content, 1, pandoc.RawBlock('latex', '\\begin{kiegeszites}'))
    table.insert(el.content, pandoc.RawBlock('latex', '\\end{kiegeszites}'))
    return el.content
  end
end
