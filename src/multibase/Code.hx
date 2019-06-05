package multibase;

enum abstract Code(String) from String to String {
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

    @:to public inline function toIdentity():Identity {
        return switch this {
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
}