﻿package map{		import flash.events.Event;		public class LevelEvent extends Event	{				protected var _newArea:int;				public function LevelEvent(newRegion:int):void		{			super("levelEvent");			_newArea = newRegion;		}				public function get newArea():int		{			return _newArea;		}			}	}