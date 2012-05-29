package zx.deliriumtremens.copter;

import nme.display.Sprite;
import nme.Lib;
import nme.Assets;
import nme.display.Bitmap;
import nme.display.BitmapData;
import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.text.TextField;
import nme.events.MouseEvent;

class GameMain extends Sprite {

    private var logo:Bitmap;

    public function new () {
        super();
        Lib.current.stage.align = StageAlign.TOP_LEFT;
        Lib.current.stage.scaleMode = StageScaleMode.NO_SCALE;
        logo = new Bitmap(Assets.getBitmapData("assets/copter1.png"));
        addChild(logo);
        Lib.current.stage.addEventListener(MouseEvent.CLICK, onClick);
    }

    private function onClick(event:MouseEvent):Void
    {
        logo.x = event.stageX;
        logo.y = event.stageY;
    }

    public static function main () {
        Lib.current.addChild(new GameMain ());
    }

}
