openfl-simple-particles
=======================

A simple particle system for [openfl](http://openfl.org).

[ 1.0.0 Demo ](http://underscorediscovery.com/sven/openfl-simple-particles/)

##Usage : 

- Copy the particles/ folder into your source folder.
- Create a new particle system, 
- `var system : ParticleSystem = new ParticleSystem( new flash.geom.Point() );`
- Add an emitter 
- `system.add_emitter('smoke1', { particle_image : openfl.Assets.getBitmapData("assets/smoke.png") });`
- Start the system emitting
- `system.emit( duration_in_seconds ); //default is -1, infinite emit`
- Add to the stage
- `addChild( system );`

##Emitter template values

//Values that you can pass into the { } to the add_emitter function: 

    particle_image = BitmapData

    emit_time = 0.1; 					//seconds

    life = 1.0;							//seconds
    life_random = 0.0;

    gravity = new Point(0,-3);

    pos = new Point();
    pos_offset = new Point();
    
    rotation = 0.0;						//degrees
    end_rotation = 0.0;					//degrees

    rotation_offset = 0.0;				//degrees
    direction_vector = new Point();

    direction = 0.0;					//degrees
    direction_random = 0.0;				//degrees

    speed = 0.0;
    speed_random = 0.0;

    start_size = new Point( 32,32 );
    end_size = new Point( 128,128 );

    start_color = new Color( 1,1,1,1 );
    end_color = new Color( 0,0,0,0 );

// The random values are "delta" based, 
// if start is 32 and random is 32, it will be between 32 and 64

    rotation_random = 360.0;
    end_rotation_random = 360.0;

    pos_random = new Point( 0,0 );

    start_size_random = new Point( 0,0 );
    end_size_random = new Point();

    start_color_random = new Color( 0,0,0,0 );
    end_color_random = new Color( 0,0,0,0 );


##Known Issues :

- Supports color internally but does not apply it to the sprite (only alpha is applied atm)
- Rotation needs some work, setting a start rotation and no end rotation means start -> end tween, if end is not set explicitly it should ignore

##License and more :

- Ported more than once from some js file online (that I found years ago), I don't recall the exact source
- Ported from original code more than once to diff js libraries, then to haxe and then to openfl
- MIT license


Feel free to pull request or post issues!

