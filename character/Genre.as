﻿/*Genre.asCreated by: Andrew HornerContents:Genre defines a basic movie clip to be manipulated by the game's Hero class. The Genre contains specific information related toeach particular Genre's capabilities, including a skill list, walk speed, and jump height.*/package character{		import flash.display.MovieClip;		public class Genre extends MovieClip	{				protected var _walkSpeed:Number;		protected var _jumpHeight:Number;		protected var _defense:Number = 2;		protected var _skillList:Array = new Array();			/**********************************************		Constructor method		**********************************************/		public function Genre():void		{			super();			_walkSpeed = 7;			_jumpHeight = 28;		}				/**********************************************		The following define public methods of the 		Genre class.		**********************************************/				/**********************************************		Getters and Setters		**********************************************/		public function get walkSpeed():Number		{			return _walkSpeed;		}				public function set walkSpeed(newSpeed:Number):void		{			_walkSpeed = newSpeed;		}				public function get jumpHeight():Number		{			return _jumpHeight;		}				public function set jumpHeight(newHeight:Number):void		{			_jumpHeight = newHeight;		}				public function get defense():Number		{			return _defense;		}				public function set defense(newDefense:Number):void		{			_defense = newDefense;		}				public function get skillList():Array		{			return _skillList;		}		/*********************************************/				/*		Pre:	newSkill is a reference to a Skill object		Post:	The skill referenced by newSkill is appended to the Genre's skill list.		*/		public function addSkill(newSkill:Skill):void		{			_skillList.push(newSkill);		}		/**********************************************		**********************************************/	}	}