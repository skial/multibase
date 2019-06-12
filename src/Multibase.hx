package ;

import base.*;
import multibase.Code;
import multibase.Identity;
import haxe.io.BytesBuffer;

using tink.CoreApi;
using haxe.io.Bytes;

typedef TBase = {
    function encode(input:Bytes):Bytes;
    function decode(input:Bytes):Bytes;
};
/**
Links
---
Canonical encodings @see https://github.com/multiformats/multibase/issues/34

Info
---
bases 2, 8 and 10 are non-standard, I think

**/

//
class Multibase {

    public var table:Map<Identity, Lazy<TBase>> = @:privateAccess [
        Id => Lazy.ofConst( (new IdPass():TBase) ),
        //Base1 => 
        Base2 => Lazy.ofConst( (new Base2():TBase) ),
        //Base8 => Lazy.ofConst( (new Base8ZC():TBase) ),
        Base10 => Lazy.ofConst( (new Base10():TBase) ),
        Base16 => Lazy.ofConst( (new Base16Lower():TBase) ),
        Base16Upper => Lazy.ofConst( (new Base16():TBase) ),
        Base32Hex => Lazy.ofConst( (new Base32HexLower(false):TBase) ),
        Base32HexUpper => Lazy.ofConst( (new Base32Hex(false):TBase) ),
        Base32HexPad => Lazy.ofConst( (new Base32HexLower():TBase) ),
        Base32HexPadUpper => Lazy.ofConst( (new Base32Hex():TBase) ),
        Base32 => Lazy.ofConst( (new Base32Lower(false):TBase) ), 
        Base32Upper => Lazy.ofConst( (new Base32(false):TBase) ),
        Base32Pad => Lazy.ofConst( (new Base32Lower():TBase) ),
        Base32PadUpper => Lazy.ofConst( (new Base32():TBase) ),
        Base32Z => Lazy.ofConst( (new ZBase32():TBase) ),
        Base58Flickr => Lazy.ofConst( (new Base58Flickr():TBase) ),
        Base58Btc => Lazy.ofConst( (new Base58():TBase) ),
        Base64 => Lazy.ofConst( (new Base64(false):TBase) ),
        Base64Pad => Lazy.ofConst( (new Base64():TBase) ),
        Base64Url => Lazy.ofConst( (new Base64Url(false):TBase) ),
        Base64UrlPad => Lazy.ofConst( (new Base64Url():TBase) ),
    ];

    public function new() {}

    public function encode(bytes:Bytes, base:Identity):Null<Bytes> {
        if (table.exists(base)) {
            var buffer = new BytesBuffer();
            buffer.addString( base.asCode() );
            // table.get(Identity) -> Lazy.get() -> encode( bytes );
            buffer.add( table.get(base).get().encode( bytes ) );
            return buffer.getBytes();

        } else {
            return null;

        }

    }

    public function decode(bytes:Bytes):Null<Bytes> {
        if (bytes.length == 0) return null;
        var raw = bytes.get(0);
        var code:Code = raw;
        var id:Identity = code;
        trace( raw, code, id );
        if (!table.exists(id)) return null;
        // table.get(Identity) -> Lazy.get() -> encode( bytes );
        return table.get( (code:Code).asIdentity() ).get().decode( bytes.sub(1, bytes.length-1) );
    }

}

class IdPass {

    public inline function new() {}

    public function encode(bytes:Bytes):Bytes {
        return bytes;
    }

    public function decode(bytes:Bytes):Bytes {
        return bytes;
    }

}