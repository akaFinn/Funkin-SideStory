package scripts;

import sys.io.File;
import sys.FileSystem;
import haxe.Json;

class ZipScript
{
    static var gameTitle:String = "Friday Night Funkin'";

    public static inline var modFolder:String = 'fnf-sidestory';

    public static inline var releaseFolder:String = 'release';

    public static function main():Void
    {
        haxe.Log.trace = (v, ?infos) -> {Sys.println(v);}
        var meta:Dynamic = Json.parse(File.getContent('${modFolder}/_polymod_meta.json'));

        trace('${meta.title} - [${meta.mod_version}]');
        trace('${gameTitle} - [${meta.api_version}]');

        trace('\n--[====================]--\n');
        
        trace('Compressing Mod...');
        for (file in FileSystem.readDirectory(modFolder))
        {
            trace('Compressing: ${file}');
        }
    }
}