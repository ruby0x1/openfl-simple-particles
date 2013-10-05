openfl-simple-particles
=======================

A simple particle system for openfl.

[ 1.0.0 Demo ](http://underscorediscovery.com/sven/openfl-simple-particles/).

Usage : 

	- Copy the particles/ folder into your source folder.
	- Create a new particle system, 
	- `var system : ParticleSystem = new ParticleSystem( new flash.geom.Point() );`
	- Add an emitter 
	- `system.add_emitter('smoke1', { particle_image : openfl.Assets.getBitmapData("assets/smoke.png") });`
	- Start the system emitting
	- `system.emit( duration_in_seconds ); //default is -1, infinite emit
	- Add to the stage
	- `addChild( system );`

Known Issues :

	- Supports color internally but does not apply it to the sprite (only alpha is applied atm)
	- Rotation needs some work, setting a start rotation and no end rotation means start -> end tween, if end is not set explicitly it should ignore

License and more :

	- Ported more than once from some js file online (that I found years ago), I don't recall the exact source
	- Ported from original code more than once to diff js libraries, then to haxe and then to openfl
	- MIT license


Feel free to pull request or post issues!

