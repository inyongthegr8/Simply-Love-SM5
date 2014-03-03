return LoadFont("_wendy small") .. {
	Text="Exit";
	InitCommand=cmd(x,SCREEN_CENTER_X;zoom,0.5;shadowlength,0;diffuse,GetCurrentColor();NoStroke);
	OnCommand=cmd(diffusealpha,0;decelerate,0.5;diffusealpha,1);
	OffCommand=cmd(stoptweening;accelerate,0.3;diffusealpha,0;queuecommand,"Hide");
	HideCommand=cmd(visible,false);

	GainFocusCommand=cmd(diffuseshift;effectcolor1,GetHexColor((SimplyLoveColor()-1)%12);effectcolor2,GetHexColor((SimplyLoveColor()+1)%12););
	LoseFocusCommand=cmd(stopeffect);
};
