﻿/*PowerUp.asCreated by: Andrew HornerContents:PowerUp defines an item contaiing some information about an effect that can be passed to the player character, increasing certain statistics and having a certain duration for those effects to last.*/package item{		import flash.events.Event;	import flash.utils.getQualifiedClassName;		public class PowerUp extends Item	{				protected var _effectPower:Number;		protected var _effectType:String;		protected var _duration:Number = 15;				/**********************************************		Constructor Method		**********************************************/		public function PowerUp():void		{			super();			_effectPower = 2;			switch(getQualifiedClassName(this))			{				case "redBattery":					_effectType = "attack";					break;				case "blueBattery":					_effectType = "defense";					break;				case "yellowBattery":					_effectType = "speed";					break;				case "headphoneBubble":					_effectType = "health";					_effectPower = 10;					break;			}		}				/**********************************************		The following define public methods of the		PowerUp class.		**********************************************/				/**********************************************		Getters and Setters		**********************************************/		public function get effectPower():Number		{			return _effectPower;		}				public function get effectType():String		{			return _effectType;		}				public function get duration():Number		{			return _duration;		}		/**********************************************		**********************************************/	}	}