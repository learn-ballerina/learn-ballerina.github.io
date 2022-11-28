# Use early returns

Use early returns to avoid nested if conditions. Then the code will become more readable and maintainable.

Note: This is not a Ballerina language-specific thing, but it can simplify the code a lot.

<h4><img align="center" height="30" src="../img/BadCode.png"> Bad Code</h4>

```bal
function handleCSVBodyParts(http:Request request) returns string[][]|error {
    var bodyParts = request.getBodyParts();
    if bodyParts is mime:Entity[] {
        string[][] csvLines = [];
        foreach var bodyPart in bodyParts {
            var mediaType = mime:getMediaType(bodyPart.getContentType());
            if mediaType is mime:MediaType {
                string baseType = mediaType.getBaseType();
                if "text/csv" == baseType {
                    byte[] payload = check bodyPart.getByteArray();
                    csvLines = check getCSVData(payload);
                } else {
                    return error("Invalid base type, not text/csv");
                }
            } else {
                return error("Invalid media type");
            }
        }
        return csvLines;
    } else {
        return error("Error in decoding multiparts!");
    }
}
```

- Actual logic resides after many depths.
- Code is not readable.

<h4><img align="center" height="30" src="../img/GoodCode.png"> Good Code</h4>

```bal
function handleCSVBodyParts2(http:Request request) returns string[][]|error {
    mime:Entity[]|error bodyParts = request.getBodyParts();
    if bodyParts is error {
        return error("Error in decoding multiparts!");
    }
    string[][] csvLines = [];
    foreach var bodyPart in bodyParts {
        mime:MediaType|error mediaType = mime:getMediaType(bodyPart.getContentType());
        if mediaType is error {
            return error("Invalid media type");
        }
        string baseType = mediaType.getBaseType();
        if "text/csv" != baseType {
            return error("Invalid base type, not text/csv");
        }
        byte[] payload = check bodyPart.getByteArray();
        csvLines = check getCSVData(payload);
    }
    return csvLines;
}
```
