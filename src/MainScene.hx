package;

import nape.shape.Polygon;
import nape.geom.Vec2;
import nape.geom.Vec2List;
import ceramic.Shape;
import ceramic.Quad;
import ceramic.Scene;
import ceramic.Color;

/**
 * This project show some weird behaviour with ceramic.Shape and  nape.shape.Polygon.
 * It's like the anchor or the offset of the Shape is half it's size off from the nape.Body
 */

class MainScene extends Scene {

	override function create() {
		// Called when scene has finished preloading

        var space = app.nape.space;
        space.gravity.y = 1000;

        var myShape:Shape = new Shape();

		myShape.color = Color.GRAY;

		myShape.pos(200, 200);

		myShape.anchor(0.5, 0.5);

		myShape.points = [
			  0.0,   0.0,
			100.0,   0.0,
			300.0, 100.0,
			  0.0, 100.0
		];

		var points = Vec2List.fromArray([
			Vec2.weak(0.0, 0.0),
			Vec2.weak(100.0, 0.0),
			Vec2.weak(300.0, 100.0),
			Vec2.weak(0.0, 100.0)
		]);

		var pol = new Polygon(points);

		myShape.initNapePhysics(STATIC, pol);
        myShape.alpha = 0.5;

        add(myShape);

        var box1 = new Quad();
        box1.color = Color.YELLOW;
        box1.size(100,100);
        box1.pos(200,180);
        box1.initNapePhysics(DYNAMIC);
        add(box1);

        var box2 = new Quad();
        box2.color = Color.ORANGE;
        box2.size(80,80);
        box2.pos(310,180);
        box2.initNapePhysics(DYNAMIC);
        add(box2);

        var box2 = new Quad();
        box2.color = Color.RED;
        box2.size(80,80);
        box2.pos(420,180);
        box2.initNapePhysics(DYNAMIC);
        add(box2);

        var box3 = new Quad();
        box3.color = Color.BLUE;
        box3.size(80,80);
        box3.pos(530,180);
        box3.initNapePhysics(DYNAMIC);
        add(box3);
	}

}
