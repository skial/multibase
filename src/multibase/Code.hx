package multibase;

@:forward
@:forwardStatics
enum abstract Code(String) from String to String {
    public var Id = '\x00';
    public var Base1 = '1';
    public var Base2 = '0';
    public var Base8 = '7';
    public var Base10 = '9';
    public var Base16 = 'f';
    public var Base16Upper = 'F';
    public var Base32Hex = 'v';
    public var Base32HexUpper = 'V';
    public var Base32HexPad = 't';
    public var Base32HexPadUpper = 'T';
    public var Base32 = 'b';
    public var Base32Upper = 'B';
    public var Base32Pad = 'c';
    public var Base32PadUpper = 'C';
    public var Base32Z = 'h';
    public var Base58Flickr = 'Z';
    public var Base58Btc = 'z';
    public var Base64 = 'm';
    public var Base64Pad = 'M';
    public var Base64Url = 'u';
    public var Base64UrlPad = 'U';

    public static inline function isValid(v:String):Bool {
        return if (v.length == 1) switch v {
            case Id, Base1, Base2, Base8, Base10, Base16, Base16Upper, Base32Hex, Base32HexUpper, Base32HexPad, Base32HexPadUpper, Base32, Base32Upper, Base32Pad, Base32PadUpper, Base32Z, Base58Flickr, Base58Btc, Base64, Base64Pad, Base64Url, Base64UrlPad:
                true;

            case _:
                false;

        } else {
            false;

        }
    }

    @:to public inline function asIdentity():Identity {
        return switch this {
            case Id: Identity.Id;
            case Base1: Identity.Base1;
            case Base2: Identity.Base2;
            case Base8: Identity.Base8;
            case Base10: Identity.Base10;
            case Base16: Identity.Base16;
            case Base16Upper: Identity.Base16Upper;
            case Base32Hex: Identity.Base32Hex;
            case Base32HexUpper: Identity.Base32HexUpper;
            case Base32HexPad: Identity.Base32HexPad;
            case Base32HexPadUpper: Identity.Base32HexPadUpper;
            case Base32: Identity.Base32;
            case Base32Upper: Identity.Base32Upper;
            case Base32Pad: Identity.Base32Pad;
            case Base32PadUpper: Identity.Base32PadUpper;
            case Base32Z: Identity.Base32Z;
            case Base58Flickr: Identity.Base58Flickr;
            case Base58Btc: Identity.Base58Btc;
            case Base64: Identity.Base64;
            case Base64Pad: Identity.Base64Pad;
            case Base64Url: Identity.Base64Url;
            case Base64UrlPad: Identity.Base64UrlPad;
            case _: '-_-';
        }
    }

    @:from private static inline function fromInt(code:Int):Code {
        return switch (code) {
            case 0x00: Id;
            case '1'.code: Base1;
            case '0'.code: Base2;
            case '7'.code: Base8;
            case '9'.code: Base10;
            case 'f'.code: Base16;
            case 'F'.code: Base16Upper;
            case 'v'.code: Base32Hex;
            case 'V'.code: Base32HexUpper;
            case 't'.code: Base32HexPad;
            case 'T'.code: Base32HexPadUpper;
            case 'b'.code: Base32;
            case 'B'.code: Base32Upper;
            case 'c'.code: Base32Pad;
            case 'C'.code: Base32PadUpper;
            case 'h'.code: Base32Z;
            case 'Z'.code: Base58Flickr;
            case 'z'.code: Base58Btc;
            case 'm'.code: Base64;
            case 'M'.code: Base64Pad;
            case 'u'.code: Base64Url;
            case 'U'.code: Base64UrlPad;
            case _: '_';
        }
    }

}