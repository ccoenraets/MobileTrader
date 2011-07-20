package charts
{
	import mx.collections.ArrayList;
    
    public class AxisArrayList extends ArrayList
    {
        private var _max:Number = 100;
        public function get max():Number
        {
            return _max;
        }
        public function set max(value:Number):void
        {
            _max = value;
            update();
        }
        
        private var _min:Number = 0;
        public function get min():Number
        {
            return _min;
        }
        public function set min(value:Number):void
        {
            _min = value;
            update();
        }
        
        private var _step:Number = 10;
        public function get step():Number
        {
            return _step;
        }
        public function set step(value:Number):void
        {
            _step = value;
            update();
        }
        
        private function update():void
        {
            var arr:Array = [];
            var i:Number;
            if (step > 0)
            {
                for (i = min; i <= max; i += step)
                {
                    arr.push(i);
                }
            }
            else
            {
                for (i = max; i >= min; i += step)
                {
                    arr.push(i);
                }
            }
            source = arr;
        }
        
    }
}
