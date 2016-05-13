# Delphi Notepad

Original task:
>Implementation of a simple transposition cipher with Delphi programming language. Create a program in Delphi programming language that would allow the source code to code a simple transposition cipher and perform a reverse encryption (coding or decoding program is determined by the user). The password must be entered by the user from the keyboard, and the user can encrypt the text that will be in the file. Encrypted text can be in Russian (or English) language.

Delphi Notepad is a free, encrypted, offline-notepad on Delphi. There is no math model. I chose Cesar chipher, because this algorithm is suitable for my task.

In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.([Source](https://en.wikipedia.org/wiki/Caesar_cipher))

## What user will input:
* Text or URL(using special open dialog)
* Password to open file

## What user will recive:
* Text file(crypted or not)

## Menu architecture:
* File->Save->Save with code - that option will execute save action with encryption
* File->Save->Save without code - that option will execute save action witout encryption
* File->Open->Open with code - that option will execute open action with encryption
* File->Open->Open without code - that option will execute open action witout encryption
* File->Exit - exit from app
* About - opens frame with shorted app info

## Help(In our case this is shortcuts)
* Ctrl+S - Save witout code
* Ctrl+Shift+S - Save with code
* Ctrl+O - Open witout code
* Ctrl+Shift+O - Open with code

## Example
1. Cryption process. User write code and choose filename: ![Cryption](http://i.imgur.com/x6wnVBW.png "Cryption")
2. As result : ![Result](http://i.imgur.com/1e2Ftoz.png "Result")
3. How we try to open that file using password 5: ![Decryption](http://i.imgur.com/QYESjUm.png "Decryption")
4. As result : ![Result](http://i.imgur.com/BVH7Bk5.png "Result")

## How it works
Well, this programm consist of Memo(Something like a portable notepad by delphi), ActionList(Here we have a list of functions and shortcuts), Main menu(At the top of frame), Image(In "About" frame) and label with link on GitHub. Like a said before, app use a Caesar cipher. When user opens a file with password, app trying to decode file. When user save a file with password, app trying to encode file.

## Debug tools
...

## Test for app
* Multiline texts
* Singleline texts
* Wikipedia texts

## Sources:
* [Wikipedia. Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher)
* [StackOverFlow. Simple questions](http://stackoverflow.com/)