package;

import haxe.display.Protocol.Timer;
import flixel.FlxSubState;
import lime.utils.Bytes;
#if desktop
import sys.thread.Thread;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import haxe.Json;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
#if MODS_ALLOWED
import sys.FileSystem;
import sys.io.File;
#end
import options.GraphicsSettingsSubState;
//import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.frames.FlxFrame;
import flixel.group.FlxGroup;
import flixel.input.gamepad.FlxGamepad;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.system.FlxSound;
import flixel.system.ui.FlxSoundTray;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;
import openfl.Assets;
import flixel.FlxObject;

var obj1:FlxSprite;

class PointClickState extends MusicBeatState
{
	override function create():Void{
		obj1 = new FlxSprite(137, 595).loadGraphic(Paths.image('IAmGoingToBreakYourSchlegs'));
		obj1.screenCenter();
		add(obj1);
		FlxG.sound.music.volume = 0;
	}
	override function update(elapsed:Float){
		FlxG.mouse.visible = true;
		if(FlxG.mouse.overlaps(obj1)) {
			obj1.scale.x = 2;
			obj1.scale.y = 2;
			if(FlxG.mouse.justPressed){
				FlxG.sound.play(Paths.sound('PainTon'), 1);
			}
		}else{
			obj1.scale.x = 1;
			obj1.scale.y = 1;
		}
	}
}