﻿/*BackgroundMusic.asCreated by: Andrew HornerContents:BackgroundMusic defines a class for manipulating the background music of the game. Assumptions for this class are that there will only ever be one background song playing at a time (excluding the fact that two are playing during a crossfade), andrequests for a crossfade before the previous fade is complete should replace the old fade, maintaining the original backgroundmusic for the fade, rather than forcing the new one into place.*/package sound{		import flash.events.TimerEvent;	import flash.media.Sound;	import flash.media.SoundChannel;	import flash.media.SoundTransform;	import flash.utils.getDefinitionByName;	import flash.utils.Timer;		public class BackgroundMusic	{				protected var channelOne:SoundChannel;		protected var soundOne:Sound;		protected var channelTwo:SoundChannel;		protected var soundTwo:Sound;		protected var bgVolume:Number;		protected var isFirstChannel:Boolean = true;		protected var fadeTimer:Timer = new Timer(200);		protected var fadeIncrementer:Number;				/**********************************************		Constructor method		**********************************************/		public function BackgroundMusic(songName:String, newbgVol:Number = 0.3):void		{			soundOne = new (Class(getDefinitionByName(songName)))();			bgVolume = newbgVol;			var bgVol:SoundTransform = new SoundTransform(bgVolume, 0);			channelOne = soundOne.play(0, int.MAX_VALUE, bgVol);			fadeTimer.addEventListener(TimerEvent.TIMER, fadeHandler);		}				/**********************************************		The following define public methods of the 		BackgroundMusic class.		**********************************************/				/*		Pre:	newSongName is a valid reference to a song in the library		Post:	The new song is faded in, and the old song is faded out.		*/		public function crossFade(newSongName:String):void		{			if (!fadeTimer.running)				isFirstChannel = !isFirstChannel;							var fadeIn:SoundTransform = new SoundTransform(0, 0);			fadeIncrementer = 0.1;						if (isFirstChannel)			{				soundOne = new (Class(getDefinitionByName(newSongName)))();				if (channelOne)				{					channelOne.stop();					channelOne = null;				}				channelOne = soundOne.play(0, int.MAX_VALUE, fadeIn);			}			else			{				soundTwo = new (Class(getDefinitionByName(newSongName)))();				if (channelTwo)				{					channelTwo.stop();					channelTwo = null;				}				channelTwo = soundTwo.play(0, int.MAX_VALUE, fadeIn);			}			fadeTimer.start();		}		/**********************************************		**********************************************/				/**********************************************		The following define private methods of the 		BackgroundMusic class.		**********************************************/				/*		Pre:	e is a TimerEvent.TIMER event		Post:	The new background music becomes incrementally louder as the old music becomes incrementally				quieter; the old music is stopped when the fadeIncrementer reaches its cap value.		*/		protected function fadeHandler(e:TimerEvent):void		{			var fadeIn:SoundTransform = new SoundTransform(fadeIncrementer, 0);			var fadeOut:SoundTransform = new SoundTransform(bgVolume - fadeIncrementer, 0);			if (isFirstChannel)			{				channelOne.soundTransform = fadeIn;				channelTwo.soundTransform = fadeOut;			}			else			{				channelTwo.soundTransform = fadeIn;				channelOne.soundTransform = fadeOut;			}						if (fadeIncrementer >= bgVolume)			{				if (isFirstChannel)				{					channelTwo.stop();					channelTwo = null;					soundTwo = null;				}				else				{					channelOne.stop();					channelOne = null;					soundOne = null;				}				fadeTimer.stop();			}							fadeIncrementer += .03;		}		/**********************************************		**********************************************/	}	}