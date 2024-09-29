package {


	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//LOAD REQUIRED CLASSES AND PLUGINS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.external.ExternalInterface;
	import com.greensock.*;
	import com.greensock.easing.*;
	import com.greensock.plugins.*;
	import com.greensock.loading.*;
	import com.greensock.events.LoaderEvent;
	import com.greensock.loading.display.*;
	
	
	//import com.greensock.TweenProxy3D;
	//import flash.geom.Vector3D;
	import flash.events.MouseEvent;
	import flash.net.*;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	

    import flash.display.Stage;
    import flash.display.StageDisplayState;

    import flash.ui.ContextMenu;
    import flash.ui.ContextMenuItem;
    import flash.ui.ContextMenuBuiltInItems;
	import flash.events.ContextMenuEvent;
    import flash.display.Sprite;
    import flash.text.TextField;
	

	
	

	
	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//DECLARE THE ANIMATION PACKAGE
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//---------------------------------------------------------------------------------------------------------------------------------//
		
    public class animationData extends MovieClip {	
		
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//DECLARE INTERACTIVE ROLLOVER AREAS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//TIME LINE ANIMATIONS SET INDIVIDUAL FRAME RATES
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
/*		//mcNodeMoversHuman
		public function animate(frameRateInSeconds:Number):void {            
        TweenMax.to(mcNodeMoversHuman, 10, { frame: mcNodeMoversHuman.totalFrames - 1, repeat: -1, ease: Linear.easeNone });
        }*/
	
 	public var replay_btn:SimpleButton; //this will be hidden
	public var mcOpenRotatorOver:SimpleButton;
	public var mcFlyContainerOver:SimpleButton;
	public var mcManAndMachineManOver:SimpleButton;
	public var mcManAndMachineMachineOver:SimpleButton;
	public var fullbtn:SimpleButton;
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//DECLARE GLOBAL VARIABLEs FOR ANIMATIONS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public var rgbWhiteD = 0xFEFEFE;
	public var rgbOrangeD = 0xFF6600;
	public var rgbGreenD = 0x8FF3A6;
	public var rgbBlueD = 0x62D1F7;
	public var rgbPinkD = 0xEF45B4;
	public var rgbDarkD = 0x464546;
	
    public var mcGDataSquareSpeed = .8;	
    public var mcGDataSquareEaseType = Sine.easeInOut;
	public var mcGDataRotatorSpeed = .8;
	

	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//BEGIN THE ANIMATION PACKAGE FUNCTION
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	public function animationData() {
	addEventListener(Event.ADDED_TO_STAGE, initData);
	
	



		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
		//BEGIN IDLE ANIMATION TIMELINES - TO DO
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		

	  //mcLargeDrivesIdle
      var mcLargeDrivesIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:0 } ); //this is 20 seconds total
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcBlueDrive, 2, { alpha:1, rotation: 360, ease:Sine.easeInOut } ));
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcOrangeDrive, 1.75, { alpha:1, rotation: 360, ease:Sine.easeInOut } ));
       mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcPinkDrive, 1, { alpha:1, rotation: 360, ease:Sine.easeInOut } ));
	   
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcBlueDrive, 4, { alpha:1, rotation: 1080, ease:Sine.easeInOut } ));
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcOrangeDrive, 2, { alpha:1, rotation: 720, ease:Sine.easeInOut } ));
       mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcPinkDrive, 2.5, { alpha:1, rotation: -720, ease:Sine.easeInOut } ));
	   
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcBlueDrive, 3, { alpha:1, rotation: -2160, ease:Sine.easeInOut } ));
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcOrangeDrive, 2, { alpha:1, rotation: -1440, ease:Sine.easeInOut } ));
       mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcPinkDrive, 1.75, { alpha:1, rotation: 180, ease:Sine.easeInOut } ));
	   
	   
     //mcGlobalDataElementsIdle
        var mcGlobalDataElementsIdle = new TimelineMax( { repeat: -1, yoyo:false, repeatDelay: 0 } );
		mcGlobalDataElementsIdle.insertMultiple([

        new TweenMax(mcGlobalData.mcGlobalDataElementsWT, mcGDataSquareSpeed, { alpha:0,  ease:mcGDataSquareEaseType } ),
        new TweenMax(mcGlobalData.mcGlobalDataElementsWT, mcGDataSquareSpeed, { alpha:1,  ease:mcGDataSquareEaseType } ),		
		
        new TweenMax(mcGlobalData.mcGlobalDataElementsBL, mcGDataSquareSpeed, { alpha:0,  ease:mcGDataSquareEaseType } ),
		new TweenMax(mcGlobalData.mcGlobalDataElementsGN, mcGDataSquareSpeed, { alpha:0,  ease:mcGDataSquareEaseType } ),
        new TweenMax(mcGlobalData.mcGlobalDataElementsBL, mcGDataSquareSpeed, { alpha:1,  ease:mcGDataSquareEaseType } ),
        new TweenMax(mcGlobalData.mcGlobalDataElementsGN, mcGDataSquareSpeed, { alpha:1,  ease:mcGDataSquareEaseType } ),
		
        new TweenMax(mcGlobalData.mcGlobalDataElementsOR, mcGDataSquareSpeed, { alpha:0, ease:mcGDataSquareEaseType } ),
        new TweenMax(mcGlobalData.mcGlobalDataElementsPK, mcGDataSquareSpeed, { alpha:0,  ease:mcGDataSquareEaseType } ),
        new TweenMax(mcGlobalData.mcGlobalDataElementsOR, mcGDataSquareSpeed, { alpha:1,  ease:mcGDataSquareEaseType } ),
        new TweenMax(mcGlobalData.mcGlobalDataElementsPK, mcGDataSquareSpeed, { alpha:1, ease:mcGDataSquareEaseType } )],
						0,
                        TweenAlign.START,
                        1);

	  //mcGDSRotators
      var mcGDSRotators = new TimelineMax( { repeat: -1, yoyo:true } );
		mcGDSRotators.insertMultiple([
        new TweenMax(mcGlobalData.mcGDSRotatorElement1, mcGDataRotatorSpeed, { alpha:1, rotation: -360, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement2, mcGDataRotatorSpeed, { alpha:1, rotation: -1080, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement3, mcGDataRotatorSpeed, { tint:rgbWhiteD, rotation: 0, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement4, mcGDataRotatorSpeed, { tint:rgbGreenD, rotation: 0, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement5, mcGDataRotatorSpeed, { tint:rgbPinkD, rotation: 360, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement6, mcGDataRotatorSpeed, { alpha:1, rotation: 360, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement7, mcGDataRotatorSpeed, { alpha:1, rotation: -720, ease:Sine.easeInOut  } ),
		new TweenMax(mcGlobalData.mcGDSRotatorElement8, mcGDataRotatorSpeed, { alpha:1, rotation: -2160, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement9, mcGDataRotatorSpeed, { alpha:1, rotation: -495, ease:Sine.easeInOut  } ),
		new TweenMax(mcGlobalData.mcGDSRotatorElement10, mcGDataRotatorSpeed, { alpha:1, rotation: 1080, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement1, mcGDataRotatorSpeed, { alpha:1, rotation: -2160, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement2, mcGDataRotatorSpeed, { alpha:1, rotation: -2160, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement3, mcGDataRotatorSpeed, { tint:rgbPinkD, rotation: 0, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement4, mcGDataRotatorSpeed, { tint:rgbBlueD, rotation: 0, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement5, mcGDataRotatorSpeed, { tint:rgbWhiteD, rotation: 0, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement6, mcGDataRotatorSpeed, { alpha:1, rotation: 180, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement7, mcGDataRotatorSpeed, { alpha:1, rotation: -360, ease:Sine.easeInOut  } ),
		new TweenMax(mcGlobalData.mcGDSRotatorElement8, mcGDataRotatorSpeed, { alpha:1, rotation: -720, ease:Sine.easeInOut  } ),
        new TweenMax(mcGlobalData.mcGDSRotatorElement9, mcGDataRotatorSpeed, { alpha:1, rotation: 135, ease:Sine.easeInOut  } ),
		new TweenMax(mcGlobalData.mcGDSRotatorElement10, mcGDataRotatorSpeed, { alpha:1, rotation: -1080, ease:Sine.easeInOut  } )],
		
						0,
                        TweenAlign.START,
                        .2);
	   
	   
	   
	   
	   
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//END THE ANIMATION PACKAGE FUNCTION
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
	//---------------------------------------------------------------------------------------------------------------------------------//

	
	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//INITIALIZE THE ANIMATION PACKAGE
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	private function initData(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);

	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//END THE ANIMATION PACKAGE INITIALIZATION FUNCTION
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
	//---------------------------------------------------------------------------------------------------------------------------------//

	
	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//DECLARE INTERACTIVE FUNCTIONS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		

	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//END INTERACTIVE FUNCTION DECLARATIONS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
	//---------------------------------------------------------------------------------------------------------------------------------//
	
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
//CLOSE THE PACKAGE
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
//-------------------------------------------------------------------------------------------------------------------------------------//
