﻿/*StartScreen.asCreated by: Andrew HornerContents:StartScreen defines an opening screen, which waits for the player to hit Enter before proceeding.*/package menu{		import sound.SoundEffect;	import flash.display.MovieClip;	import flash.events.KeyboardEvent;		public class StartMenu extends MovieClip	{				/**********************************************		Constructor method		**********************************************/		public function StartMenu():void		{			super();		}				/**********************************************		The folowing define public methods of the 		StartScreen class.		**********************************************/				/*		Pre:	e is a reference to a KeyboardEvent.KEY_DOWN event		Post:	Handles the keypress appropriately, dispatching an event when the player hits ENTER		*/		public function keyHandler(e:KeyboardEvent):void		{			if (e.keyCode == 13)			{				var selectEvent:SelectionEvent = new SelectionEvent(this);				this.dispatchEvent(selectEvent);				var enterSound:SoundEffect = new SoundEffect("bellSound");			}		}		/**********************************************		**********************************************/	}}