Dim args, test1, test2

Set args = wscript.arguments

test1 = args(0)
WScript.StdOut.WriteLine test1

WScript.StdOut.WriteLine args.length

test2 = args(1)
WScript.StdOut.WriteLine test2