html_::String->String
-- html_ content = "<html>"<>content<>"</html>"
html_ = el "html"

body_::String->String
-- body_ content = "<body>"<>content<>"</body>"
body_ = el "body"

head_::String->String
-- head_ content = "<head>"<>content<>"</head>"
head_ = el "head"

title_::String->String
-- title_ content = "<title>"<>content<>"</title>"
title_ = el "title"

p_::String->String
p_ = el "p"

h1_::String->String
h1_ = el "h1"

makeHtml::String->String->String
makeHtml titlec bodyc = html_ (head_ (title_ titlec) <> body_ bodyc)

myhtml::String->String
-- myhtml = makeHtml "Shivam's doc" "yeppp"
myhtml = makeHtml "Shivam's doc"

el::String->String->String
el tag content =
    "<"<>tag<>">"<>content<>"</"<>tag<>">"

-- normal function definition
-- main = putStrLn (myhtml (h1_ "First Heading" <> p_ "First Para"))

-- lambda function
main = putStrLn ((\c1 c2 -> myhtml(h1_ c1 <> p_ c2)) "First Heading" "First Paragraph")