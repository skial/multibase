package multibase;

@:forward
@:forwardStatics
enum abstract Identity(String) from String to String {
    public var Id = 'identity';
    public var Base1 = 'base1';
    public var Base2 = 'base2';
    public var Base8 = 'base8';
    public var Base10 = 'base10';
    public var Base16 = 'base16';
    public var Base16Upper = 'base16upper';
    public var Base32Hex = 'base32hex';
    public var Base32HexUpper = 'base32hexupper';
    public var Base32HexPad = 'base32hexpad';
    public var Base32HexPadUpper = 'base32hexpadupper';
    public var Base32 = 'base32';
    public var Base32Upper = 'base32upper';
    public var Base32Pad = 'base32pad';
    public var Base32PadUpper = 'base32padupper';
    public var Base32Z = 'base32z';
    public var Base58Flickr = 'base58flickr';
    public var Base58Btc = 'base58btc';
    public var Base64 = 'base64';
    public var Base64Pad = 'base64pad';
    public var Base64Url = 'base64url';
    public var Base64UrlPad = 'base64urlpad';

    public static inline function isValid(v:String):Bool {
        return if (v.length > 4) switch v {
            case Id, Base1, Base2, Base8, Base10, Base16, Base16Upper, Base32Hex, Base32HexUpper, Base32HexPad, Base32HexPadUpper, Base32, Base32Upper, Base32Pad, Base32PadUpper, Base32Z, Base58Flickr, Base58Btc, Base64, Base64Pad, Base64Url, Base64UrlPad:
                true;

            case _:
                false;

        } else {
            false;

        }
    }

    @:to public inline function asCode():Code {
        return switch this {
            case Id: Code.Id;
            case Base1: Code.Base1;
            case Base2: Code.Base2;
            case Base8: Code.Base8;
            case Base10: Code.Base10;
            case Base16: Code.Base16;
            case Base16Upper: Code.Base16Upper;
            case Base32Hex: Code.Base32Hex;
            case Base32HexUpper: Code.Base32HexUpper;
            case Base32HexPad: Code.Base32HexPad;
            case Base32HexPadUpper: Code.Base32HexPadUpper;
            case Base32: Code.Base32;
            case Base32Upper: Code.Base32Upper;
            case Base32Pad: Code.Base32Pad;
            case Base32PadUpper: Code.Base32PadUpper;
            case Base32Z: Code.Base32Z;
            case Base58Flickr: Code.Base58Flickr;
            case Base58Btc: Code.Base58Btc;
            case Base64: Code.Base64;
            case Base64Pad: Code.Base64Pad;
            case Base64Url: Code.Base64Url;
            case Base64UrlPad: Code.Base64UrlPad;
            case _: '-_-';
        }
    }
    
}