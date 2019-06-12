package multibase;

import haxe.io.Bytes;

@:asserts
class Specs {

    var multibase:Multibase;

    public function new() {
        multibase = new Multibase();
    }

    #if !hl
    @:variant("identity", "\x00Decentralize everything!!", false)
    #end
    @:variant("base2", "001000100011001010110001101100101011011100111010001110010011000010110110001101001011110100110010100100000011001010111011001100101011100100111100101110100011010000110100101101110011001110010000100100001")
    //@:variant("base8", "71043126154533472162302661513646244031273145344745643206455631620441")
    @:variant("base10", "9429328951066508984658627669258025763026247056774804621697313")
    @:variant("base16", "f446563656e7472616c697a652065766572797468696e672121")
    @:variant("base16upper", "F446563656E7472616C697A652065766572797468696E672121")
    @:variant("base32", "birswgzloorzgc3djpjssazlwmvzhs5dinfxgoijb")
    @:variant("base32upper", "BIRSWGZLOORZGC3DJPJSSAZLWMVZHS5DINFXGOIJB")
    @:variant("base32hex", "v8him6pbeehp62r39f9ii0pbmclp7it38d5n6e891")
    @:variant("base32hexupper", "V8HIM6PBEEHP62R39F9II0PBMCLP7IT38D5N6E891")
    @:variant("base32pad", "cirswgzloorzgc3djpjssazlwmvzhs5dinfxgoijb")
    @:variant("base32padupper", "CIRSWGZLOORZGC3DJPJSSAZLWMVZHS5DINFXGOIJB")
    @:variant("base32hexpad", "t8him6pbeehp62r39f9ii0pbmclp7it38d5n6e891")
    @:variant("base32hexpadupper", "T8HIM6PBEEHP62R39F9II0PBMCLP7IT38D5N6E891")
    @:variant("base32z", "het1sg3mqqt3gn5djxj11y3msci3817depfzgqejb")
    @:variant("base58flickr", "Ztwe7gVTeK8wswS1gf8hrgAua9fcw9reboD")
    @:variant("base58btc", "zUXE7GvtEk8XTXs1GF8HSGbVA9FCX9SEBPe")
    @:variant("base64", "mRGVjZW50cmFsaXplIGV2ZXJ5dGhpbmchIQ")
    @:variant("base64pad", "MRGVjZW50cmFsaXplIGV2ZXJ5dGhpbmchIQ==")
    @:variant("base64url", "uRGVjZW50cmFsaXplIGV2ZXJ5dGhpbmchIQ")
    @:variant("base64urlpad", "URGVjZW50cmFsaXplIGV2ZXJ5dGhpbmchIQ==")
    public function testDecentralizeEverything_test1csv(base:String, result:String, checkStrings:Bool = true) {
        return testSpec_all(base, result, "Decentralize everything!!", checkStrings, asserts);
    }

    #if !hl
    @:variant("identity", "\x00yes mani !", false)
    #end
    @:variant("base2", "001111001011001010111001100100000011011010110000101101110011010010010000000100001")
    //@:variant("base8", "7171312714403326055632220041")
    @:variant("base10", "9573277761329450583662625")
    @:variant("base16", "f796573206d616e692021")
    @:variant("base16upper", "F796573206D616E692021")
    @:variant("base32", "bpfsxgidnmfxgsibb")
    @:variant("base32upper", "BPFSXGIDNMFXGSIBB")
    @:variant("base32hex", "vf5in683dc5n6i811")
    @:variant("base32hexupper", "VF5IN683DC5N6I811")
    @:variant("base32pad", "cpfsxgidnmfxgsibb")
    @:variant("base32padupper", "CPFSXGIDNMFXGSIBB")
    @:variant("base32hexpad", "tf5in683dc5n6i811")
    @:variant("base32hexpadupper", "TF5IN683DC5N6I811")
    @:variant("base32z", "hxf1zgedpcfzg1ebb")
    @:variant("base58flickr", "Z7Pznk19XTTzBtx")
    @:variant("base58btc", "z7paNL19xttacUY")
    @:variant("base64", "meWVzIG1hbmkgIQ")
    @:variant("base64pad", "MeWVzIG1hbmkgIQ==")
    @:variant("base64url", "ueWVzIG1hbmkgIQ")
    @:variant("base64urlpad", "UeWVzIG1hbmkgIQ==")
    public function testYesMani_test2csv(base:String, result:String, checkStrings:Bool = true) {
        return testSpec_all(base, result, "yes mani !", checkStrings, asserts);
    }

    #if !hl
    @:variant("identity", "\x00hello world", false)
    #end
    @:variant("base2", "00110100001100101011011000110110001101111001000000111011101101111011100100110110001100100")
    //@:variant("base8", "7064145330661571007355734466144")
    @:variant("base10", "9126207244316550804821666916")
    @:variant("base16", "f68656c6c6f20776f726c64")
    @:variant("base16upper", "F68656C6C6F20776F726C64")
    @:variant("base32", "bnbswy3dpeb3w64tmmq")
    @:variant("base32upper", "BNBSWY3DPEB3W64TMMQ")
    @:variant("base32hex", "vd1imor3f41rmusjccg")
    @:variant("base32hexupper", "VD1IMOR3F41RMUSJCCG")
    @:variant("base32pad", "cnbswy3dpeb3w64tmmq======")
    @:variant("base32padupper", "CNBSWY3DPEB3W64TMMQ======")
    @:variant("base32hexpad", "td1imor3f41rmusjccg======")
    @:variant("base32hexpadupper", "TD1IMOR3F41RMUSJCCG======")
    @:variant("base32z", "hpb1sa5dxrb5s6hucco")
    @:variant("base58flickr", "ZrTu1dk6cWsRYjYu")
    @:variant("base58btc", "zStV1DL6CwTryKyV")
    @:variant("base64", "maGVsbG8gd29ybGQ")
    @:variant("base64pad", "MaGVsbG8gd29ybGQ=")
    @:variant("base64url", "uaGVsbG8gd29ybGQ")
    @:variant("base64urlpad", "UaGVsbG8gd29ybGQ=")
    public function testHelloWorld_test3csv(base:String, result:String, checkStrings:Bool = true) {
        return testSpec_all(base, result, "hello world", checkStrings, asserts);
    }

    #if !hl
    @:variant("identity", "\x00\x00yes mani !")
    #end
    @:variant("base2", "00000000001111001011001010111001100100000011011010110000101101110011010010010000000100001")
    //@:variant("base8", "7000171312714403326055632220041")
    @:variant("base10", "90573277761329450583662625")
    @:variant("base16", "f00796573206d616e692021")
    @:variant("base16upper", "F00796573206D616E692021")
    @:variant("base32", "bab4wk4zanvqw42jaee")
    @:variant("base32upper", "BAB4WK4ZANVQW42JAEE")
    @:variant("base32hex", "v01smasp0dlgmsq9044")
    @:variant("base32hexupper", "V01SMASP0DLGMSQ9044")
    @:variant("base32pad", "cab4wk4zanvqw42jaee======")
    @:variant("base32padupper", "CAB4WK4ZANVQW42JAEE======")
    @:variant("base32hexpad", "t01smasp0dlgmsq9044======")
    @:variant("base32hexpadupper", "T01SMASP0DLGMSQ9044======")
    @:variant("base32z", "hybhskh3ypiosh4jyrr")
    @:variant("base58flickr", "Z17Pznk19XTTzBtx")
    @:variant("base58btc", "z17paNL19xttacUY")
    @:variant("base64", "mAHllcyBtYW5pICE")
    @:variant("base64pad", "MAHllcyBtYW5pICE=")
    @:variant("base64url", "uAHllcyBtYW5pICE")
    @:variant("base64urlpad", "UAHllcyBtYW5pICE=")
    public function testYesMani_test4csv(base:String, result:String) {
        return testSpec_all(base, result, "\x00yes mani !", false, asserts);
    }

    #if !hl
    @:variant("identity", "\x00\x00\x00yes mani !")
    #end
    @:variant("base2", "0000000000000000001111001011001010111001100100000011011010110000101101110011010010010000000100001")
    //@:variant("base8", "700000171312714403326055632220041")
    @:variant("base10", "900573277761329450583662625")
    @:variant("base16", "f0000796573206d616e692021")
    @:variant("base16upper", "F0000796573206D616E692021")
    @:variant("base32", "baaahszltebwwc3tjeaqq")
    @:variant("base32upper", "BAAAHSZLTEBWWC3TJEAQQ")
    @:variant("base32hex", "v0007ipbj41mm2rj940gg")
    @:variant("base32hexupper", "V0007IPBJ41MM2RJ940GG")
    @:variant("base32pad", "caaahszltebwwc3tjeaqq====")
    @:variant("base32padupper", "CAAAHSZLTEBWWC3TJEAQQ====")
    @:variant("base32hexpad", "t0007ipbj41mm2rj940gg====")
    @:variant("base32hexpadupper", "T0007IPBJ41MM2RJ940GG====")
    @:variant("base32z", "hyyy813murbssn5ujryoo")
    @:variant("base58flickr", "Z117Pznk19XTTzBtx")
    @:variant("base58btc", "z117paNL19xttacUY")
    @:variant("base64", "mAAB5ZXMgbWFuaSAh")
    @:variant("base64pad", "MAAB5ZXMgbWFuaSAh")
    @:variant("base64url", "uAAB5ZXMgbWFuaSAh")
    @:variant("base64urlpad", "UAAB5ZXMgbWFuaSAh")
    public function testYesMani_test5csv(base:String, result:String) {
        return testSpec_all(base, result, "\x00\x00yes mani !", false, asserts);
    }

    @:exclude public function testSpec_all(base:String, result:String, string:String, checkStrings:Bool = true) {
        asserts.assert( Identity.isValid(base) == true );
        var stringBytes = Bytes.ofString(string);
        var resultBytes = Bytes.ofString(result);
        var encode = multibase.encode( stringBytes, base );
        var decode = multibase.decode( resultBytes );
        
        asserts.assert( encode != null );
        asserts.assert( decode != null );
        
        if (checkStrings) {
            if (encode != null) asserts.assert( encode.toString() == result );
            if (decode != null) asserts.assert( decode.toString() == string );

        } else {
            var _encoded = [];
            var _results = [];
            asserts.assert( encode.length == resultBytes.length );

            for (i in 0...encode.length) {
                if (encode.get(i) == resultBytes.get(i)) {
                    _encoded.push(encode.get(i));
                    _results.push(resultBytes.get(i));

                } else {
                    asserts.assert( encode.get(i) == resultBytes.get(i), '' + _encoded );
                    break;
                }

            }

            asserts.assert( '$_encoded' == '$_results' );

            var _decoded = [];
            var _results = [];
            asserts.assert( decode.length == stringBytes.length );

            for (i in 0...decode.length) {
                if (decode.get(i) == stringBytes.get(i)) {
                    _decoded.push(decode.get(i));
                    _results.push(stringBytes.get(i));

                } else {
                    asserts.assert( decode.get(i) == stringBytes.get(i), '' + _decoded );
                    break;
                }

            }

            asserts.assert( '$_decoded' == '$_results' );

        }

        return asserts.done();
    }

}