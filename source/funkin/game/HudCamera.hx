package funkin.game;

import flixel.math.FlxPoint;

/**
 * Camera meant for PlayState hud, allows for flipping the camera.
**/
class HudCamera extends FlxCamera {
	/**
	 * Whenever the camera should flip the y axis.
	 * Keeps the sprites not flipped, but the positions are flipped.
	 */
	public var downscroll:Bool = false;
	
	/**
	 * Array of objects to be ignored by downscroll
	 */
	public var excludedByDownscroll:Array<FlxObject> = [];

	public override function alterScreenPosition(spr:FlxObject, pos:FlxPoint) {
		if (downscroll && !excludedByDownscroll.contains(spr)) {
			pos.y = height - pos.y - spr.height;
		}
		return pos;
	}
}