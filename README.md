# Bookmark Manager

### First requirement
 - Show a list of bookmarks

### User Story

```
As a <User>
So that I can <Access saved bookmarks>
I'd like <See a list of bookmarks>
```
www.diagram.codes/d/sequence/alias%20user%20%3D%20%22user%22%0Aalias%20browser%20%3D%20%22browser%22%0Aalias%20server%20%3D%20%22server%22%0Aalias%20database%20%3D%20%22databse%22%0A%0A%0Auser%20-%3E%20browser%20%3A%22enters%20URL%22%0Abrowser%20-%3E%20server%3A%20%22GET%20request%20to%20access%20information%22%0Aserver%20-%3E%20database%3A%20%22requests%20information%22%20%0Adatabase%20-%3E%20server%3A%20%22sends%20back%20information%22%20%0Aserver%20-%3E%20browser%3A%20%22requests%20information%22%20%0Abrowser%20-%3E%20user%3A%20%22information%20is%20rendered%20for%20page%22%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A%0A
