﻿/*HitEvent.asCreated by: Andrew HornerContents:HitEvent defines an event containing information about the power of an attack that has hit a Character.  This event is dispatched to the Character, and handled with that Character's hitHandler, updating their health appropriately based on the power of the incoming attack.*/package character{		import flash.events.Event;		public class HitEvent extends Event	{				protected var _power:Number;				/**********************************************		Constructor method		**********************************************/		public function HitEvent(newPower:Number)		{			super("hitEvent");			_power = newPower;		}				/**********************************************		The following define public methods of the 		HitEvent class.		**********************************************/				/**********************************************		Getters and Setters		**********************************************/		public function get power():Number		{			return _power;		}		/**********************************************		**********************************************/	}	}