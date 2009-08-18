﻿/*MovementEvent.asCreated by: Andrew HornerContents:MovementEvent defines an event containing information about the requested position of an object that is moving. Theseevents are intercepted by the LevelMap class, which then determines how to handle the object that is requesting to move.*/package character{		import flash.events.Event;		public class MovementEvent extends Event	{				protected var _useX:Number;		protected var _useY:Number;				/**********************************************		Constructor method		**********************************************/		public function MovementEvent(newTarget:Object, newX:Number, newY:Number):void		{			super("moveRequest", newTarget);			_useX = newX;			_useY = newY;		}				/**********************************************		The following define public methods of the 		MovementEvent class.		**********************************************/				/**********************************************		Getters and Setters		**********************************************/		public function get useX():Number		{			return _useX;		}				public function get useY():Number		{			return _useY;		}		/**********************************************		**********************************************/	}	}