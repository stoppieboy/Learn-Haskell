html_::String->String
-- html_ content = "<html>"<>content<>"</html>"
html_ = el "html"

body_::String->String
-- body_ content = "<body>"<>content<>"</body>"
body_ = el "body"

head_::String->String
head_ content = "<head>"<>content<>"</head>"

title_::String->String
title_ content = "<title>"<>content<>"</title>"

makeHtml::String->String->String
makeHtml titlec bodyc = html_ (head_ (title_ titlec) <> body_ bodyc)

-- myhtml::String
-- myhtml = makeHtml "Shivam's doc" "yeppp"
myhtml = makeHtml "Shivam's doc"

el::String->String->String
el tag content =
    "<"<>tag<>">"<>content<>"</"<>tag<>">"

main = putStrLn (myhtml "yepp")