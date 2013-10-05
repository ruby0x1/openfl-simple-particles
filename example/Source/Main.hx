package;


import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.geom.Point;

import openfl.Assets;

import particles.Particles.ParticleSystem;

class Main extends Sprite {
    
    var system : ParticleSystem;
    
//Construct 

    public function new () {
        
        super();

            //listen for events     
        stage.addEventListener( flash.events.MouseEvent.MOUSE_MOVE, onmousemove );
        stage.addEventListener( flash.events.MouseEvent.MOUSE_DOWN, onmousedown );

        

        var smoke1 = Assets.getBitmapData("assets/smoke.png");
        var smoke2 = Assets.getBitmapData("assets/smoke2.png");
                
                //create particle system at the middle screen
            system = new ParticleSystem(new Point(stage.stageWidth/2, stage.stageWidth/2) );
                
                //create an emitter. template is a dynamic with lots of options
            system.add_emitter('smoke1', { particle_image : smoke1, emit_time:0.1, life:1 });
                //a second emitter, varying the smoke up
            system.add_emitter('smoke2', { 
                particle_image : smoke2, 
                emit_time:1, 
                gravity : new Point(0,-5),
                rotation_random:0, 
                end_rotation_random:0, 
                end_size:new Point(256,256) 
            });

                //start emitting
            system.emit();  

            //add to the stage
        addChild(system);

    }
        
//Mouse

        //Click to toggle emission
    function onmousedown(e) {
        if(system.active) {
            system.stop();
        } else {
            system.emit();
        }
    }

        //mouse position changes the system position
    function onmousemove(e:MouseEvent) {
        system.pos.setTo(e.stageX, e.stageY);
    }

//Update


    
    
}