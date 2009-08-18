﻿/*Skill.asCreated by: Andrew HornerContents:Skill defines a a sequence of skill segments, each of which contains information about a portion of an attack which will be dispatched in a series of AttackEvents. Each segment has some type, a duration, a power, a knockback, and a list of attributes which typically includes some information about the region that the attack segment will affect.*/package character{		public class Skill	{				protected var _sequence:Array = new Array();		protected var _name:String;				/**********************************************		Constructor method		**********************************************/		public function Skill(skillType:String = "attack")		{			_sequence["type"] = new Array();			_sequence["duration"] = new Array();			_sequence["power"] = new Array();			_sequence["attributes"] = new Array();			_sequence["knockback"] = new Array();			_name = skillType;		}				/**********************************************		The following define static methods of the 		Skill class.		**********************************************/				/*		Pre:	duration is a number referring to the desired duration of the skill segment;				power is a number referring to the desired power of the skill segment;				knockback is a number referring to the desired knockback of the skill segment;				attributes is an array containing the hit region or settings of the skill segment;				type refers to the skill segment's type (this defaults to "hitBox" if no type is passed)		Post:	Returns a properly formatted array describing a skill segment with the requested parameters		*/		public static function makeSkillSegment(duration:Number, power:Number, knockback:Number, attributes:Array, type:String = "hitBox"):Array		{			var segment:Array = new Array();			segment["duration"] = duration;			segment["power"] = power;			segment["knockback"] = knockback;			segment["attributes"] = attributes;			segment["type"] = type;			return segment;		}		/**********************************************		**********************************************/				/**********************************************		The following define public methods of the 		Skill class.		**********************************************/				/**********************************************		Getters and Setters		**********************************************/		public function get sequence():Array		{			return _sequence;		}				public function get name():String		{			return _name;		}		/*********************************************/				/*		Pre:	newSequence is an Array containing a series of skill segments		Post:	The current skill sequence is updated with the contents of newSequence		*/		public function addSequence(newSequence:Array)		{			for each (var part in newSequence)				addSegment(part);		}				/*		Pre:	newPart is an array containing the various properties of a skill segment		Post:	The skill sequence is updated to include newPart's contents		*/		public function addSegment(newPart:Array)		{			if (newPart["type"])				_sequence["type"].push(newPart["type"]);			else				_sequence["type"].push("hitBox");			_sequence["duration"].push(newPart["duration"]);			_sequence["power"].push(newPart["power"]);			_sequence["attributes"].push(newPart["attributes"]);			_sequence["knockback"].push(newPart["knockback"]);		}		/**********************************************		**********************************************/	}	}