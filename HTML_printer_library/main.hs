html_ content = "<html>"<>content<>"</html>"
body_ content = "<body>"<>content<>"</body>"
head_ content = "<head>"<>content<>"</head>"
title_ content = "<title>"<>content<>"</title>"

makeHtml titlec bodyc = html_ (head_ (title_ titlec) <> body_ bodyc)

myhtml = makeHtml "Shivam's doc" "yeppp"

main = do
    putStrLn myhtml