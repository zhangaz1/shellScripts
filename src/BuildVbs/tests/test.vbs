Dim fromFilePath, xPath, attributeName, value, toFilePath

Dim args, doc, node


Set args = wscript.arguments

fromFilePath = args(0)
xPath = args(1)
attributeName = args(2)
value = args(3)
toFilePath = args(4)


Function LoadDoc(filePath)
    Dim doc

    Set doc = CreateObject("MSXML.DOMDocument")
    doc.Load filePath
    
    LoadDoc = doc
End Function


Function GetNodeByPath(doc, xPath)
    Dim node

    node = doc.selectSingleNode(xPath)

    GetNodeByPath = node
End Function


Function UpdateValue(node, attributeName, value)
    node.setAttribute attributeName, value
End Function


Function SaveResult(doc, filePath)
    doc.save filePath
End Function

doc = LoadDoc(fromFilePath)
node = GetNodeByPath(doc, xPath)
UpdateValue node, attributeName, value
SaveResult doc, toFilePath
