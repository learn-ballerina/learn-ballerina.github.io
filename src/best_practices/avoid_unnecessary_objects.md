# Avoid unnecessary objects

Ballerina is an data oriented programming language, but it has support for classes and objects. Avoid unncessary usage of classes and objects. 

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
import ballerina/http;

type Album readonly & record {|
    string title;
    string artist;
|};

service /store on new http:Listener(9090) {
    private final BookStore store;

    function init() {
        self.store = new BookStore();
    }

    resource function get albums(string title) returns Album|error {
        return self.store.getAlbums(title);
    }
}

class BookStore {

    private table<Album> key(title) albums;

    function init() {
        self.albums = table [
            {title: "Blue Train", artist: "John Coltrane"},
            {title: "Jeru", artist: "Gerry Mulligan"}
        ];
    }

    public function getAlbums(string title) returns Album|error {
        Album? album = self.albums[title];
        if album is () {
            return error("Album not found");
        }
        return album;
    }
}
```
<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
type Album readonly & record {|
    string title;
    string artist;
|};

service /store on new http:Listener(9090) {

    private table<Album> key(title) albums;

    function init() {
        self.albums = table [
            {title: "Blue Train", artist: "John Coltrane"},
            {title: "Jeru", artist: "Gerry Mulligan"}
        ];
    }

    resource function get albums(string title) returns Album|error {
        Album? album = self.albums[title];
        if album is () {
            return error("Album not found");
        }
        return album;
    }
}
```

## See Also:

- [Object](https://ballerina.io/learn/language-basics/#object)
