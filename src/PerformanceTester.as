/**
 * Created with IntelliJ IDEA.
 * User: Fricken Hamster
 * Date: 7/18/13
 * Time: 9:50 PM
 *
 */
package
{
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.text.TextFormatAlign;
import flash.utils.getTimer;

import spark.primitives.Rect;

public class PerformanceTester
{
	
	public static const TIMES_RUN:int = 10000;
	public static const NUM_TRIALS:int = 20;
	
	public function PerformanceTester()
	{
		
		var startTime:int;
		
		
		var counter:int = 0;
		var vv:Vector.<int>;
		for (var i:int = 0; i < NUM_TRIALS; i++)
		{
			vv = new Vector.<int>(500);
			
			for (var j:int = 0; j < 500; j++)
			{
				//bb = new BitmapData(800, 600, true, 0x000000);
				vv[j] = Math.random();
				//vv.splice(0,vv.length);
			}
			startTime = getTimer();
			for (j = 0; j < TIMES_RUN; j++)
			{
				var ii:int = Math.random() * 500;
				vv[ii];
			}
			
			counter += getTimer() - startTime;
		}
		
		trace("First Test:" + counter / NUM_TRIALS);
		
		counter = 0;
		for (i = 0; i < NUM_TRIALS; i++)
		{
			vv = new Vector.<int>(500);
			for (j = 0; j < 500; j++)
			{
				//bb = new BitmapData(800, 600, true, 0x000000);
				vv[j] = Math.random();
				//vv.splice(0,vv.length);
			}
			startTime = getTimer();
			for (j = 0; j < TIMES_RUN; j++)
			{
				var ii:int = Math.random() * 500;
				vv[ii];
			}
			counter += getTimer() - startTime;
		}

		trace("Second Test:" + counter / NUM_TRIALS);


	}
}
}
