var COLOUR_NORMAL = "#FFFFFF";
var COLOUR_WARNING = "#DF161F";
var TIMER_INTERVAL = 0.05;

var startTime = -1;
var timerDuration = 0;
var timerMode = 0; // Countdown = 0, Countup = 1
var timerMessage = "Remaining";
var timerEnd = false; // When true, hide on timer end
var timerPosition = 0; 
var timerPaused = false;
var timerSound = false;
var timer = null;
var timerWarning = -1; // Second to start warning at from end (-1 Disabled)
var timerLast = 0;

var timer = $( "#TimerBox" );

function UpdateTimer() {
	// Adjust the message based on time of day
	var day = CustomNetTables.GetTableValue("cycle", "IsDaytime")["value"];
	var timerMessage;
	if (day)
		timerMessage = $.Localize("#custom_timer_daylight");
	else
		timerMessage = $.Localize("#custom_timer_moonlight");
	var timerTextMsg = $( "#TimerMsg" );
	timerTextMsg.text = $.Localize(timerMessage);

	if (timerPaused)
		startTime += 0.05;

	var timerTextRemain = $( "#TimerRemaining" );
	var time = Game.GetGameTime() - startTime;
	var remaining = CustomNetTables.GetTableValue("cycle", "TimeRemaining")["value"];
	//var remaining = Math.ceil(timerDuration - time);
	
	if (remaining <= timerWarning && timerWarning != -1) {
		if (remaining != timerLast && timerSound) {
			timerLast = remaining;
			//$.Msg('Beep');
			Game.EmitSound("ui.crafting_confirm_socket");
		}
		timerTextRemain.style['color'] = COLOUR_WARNING;
	}
	else
		timerTextRemain.style['color'] = COLOUR_NORMAL;
	if (remaining >= 0) {
		if (timerMode == 0)
			timerTextRemain.text = FormatTime(remaining);
		else
			timerTextRemain.text = FormatTime(time);
	}

	$.Schedule(TIMER_INTERVAL, function(){UpdateTimer();});

	//if (time < timerDuration)
	//if (remaining >= 0) {
	//	$.Schedule(TIMER_INTERVAL, function(){UpdateTimer();});
	//}
	//else
	//	if (!timerEnd)
	//		$.Schedule(1, function(){FadeOut();});
}

function FadeIn() {
	timer.AddClass("FadeIn");
}

function FadeOut() {
	timer.RemoveClass("FadeIn");
}

function DisplayTimer( table ) {
	timerMessage = table.msg || "Remaining";
	timerDuration = table.duration;
	timerMode = table.mode;
	timerEnd = table.endfade;
	timerPosition = table.position;
	timerWarning = table.warning;
	timerPaused = table.paused;
	timerSound = table.sound;
	startTime = Game.GetGameTime();
	var timerTextMsg = $( "#TimerMsg" );
	timerTextMsg.text = $.Localize(timerMessage);
	UpdateTimer();
	FadeIn();
}

function PauseTimer( bool ) {
	timerPaused = bool.pause;
}

function FormatTime( seconds ) {
	var minutes = Math.floor(seconds / 60);
	var seconds = Math.floor(seconds % 60);
	var s = "";
	var m = "";
	if (seconds < 10)
		s = "0";
	if (minutes < 10)
		m = "0";
	return m + minutes + ":" + s + seconds;
}

/*function FormatTime( seconds ) {
	var hours = Math.floor(seconds / 3600);
	var remainder = seconds % 3600;
	var minutes = Math.floor(remainder / 60);
	var seconds = Math.floor(remainder % 60);
	var s = "";
	var m = "";
	var h = "";
	if (seconds < 10)
		s = "0";
	if (minutes < 10)
		m = "0";
	if (hours < 10)
		h = "0";
	return h + hours + ":" + m + minutes + ":" + s + seconds;
}*/

(function () {
  GameEvents.Subscribe( "display_timer", DisplayTimer );
  GameEvents.Subscribe( "pause_timer", PauseTimer );
})();