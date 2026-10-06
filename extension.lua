-- Typeset the grey boxes of the Markdown sources as the shaded LaTeX
-- environment `kiegeszites` (defined in header.tex). Two div classes map to
-- it:
--   ::: kiegeszites   textbooks: proofs that were not given in the lecture
--   ::: elmelet       solutions: the theory recap explaining why a solution
--                     works
-- Other output formats keep the plain div.
local shaded = { kiegeszites = true, elmelet = true }

function Div(el)
  if not FORMAT:match('latex') then
    return nil
  end
  for _, class in ipairs(el.classes) do
    if shaded[class] then
      table.insert(el.content, 1, pandoc.RawBlock('latex', '\\begin{kiegeszites}'))
      table.insert(el.content, pandoc.RawBlock('latex', '\\end{kiegeszites}'))
      return el.content
    end
  end
end
