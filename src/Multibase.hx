package ;

import base.*;
import multibase.Code;
import multibase.Identity;

using haxe.io.Bytes;

typedef TBase = {
    function encode(input:Bytes):Bytes;
    function decode(input:Bytes):Bytes;
};

/**
Base1
Base2
Base8
Base10
Base16
Base16Upper
Base32Hex
Base32HexUpper
Base32HexPad
Base32HexPadUpper
Base32
Base32Upper
Base32Pad
Base32PadUpper
Base32Z
Base58Flickr
Base58Btc
Base64
Base64Pad
Base64Url
Base64UrlPad
**/

class Multibase {

    public static var table:Map<Identity, TBase> = [
        //Base1 => 
        Base2 => new Base2(),
        Base8 => new Base8(),
        Base10 => new Base10(),
        Base16 => new Base16Lower(),
        Base16Upper => new Base16(),
        Base32Hex => new Base32HexLower(),
        Base32HexUpper => new Base32Hex(),
        Base32HexPad => new Base32HexLower(), // FIX padding
        Base32HexPadUpper => new Base32Hex(), // FIX padding
        Base32 => new Base32Lower(),  // FIX padding
        Base32Upper => new Base32(), // FIX padding
        Base32Pad => new Base32Lower(),
        Base32PadUpper => new Base32(),
        Base32Z => new ZBase32(),
        Base58Flickr => new Base58Flickr(),
        Base58Btc => new Base58(),
        Base64 => new Base64(), // FIX padding,
        Base64Pad => new Base64(),
        Base64Url => new Base64Url(), // FIX padding
        Base64UrlPad => new Base64Url(),
    ];

}