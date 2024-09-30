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
    TweenPlugin.activate([BlurFilterPlugin]);
	TweenPlugin.activate([GlowFilterPlugin]);
	TweenPlugin.activate([TransformMatrixPlugin]);

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
		
    public class animationPackage extends MovieClip {	
		
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
	
	//mcSatContainer variables
    public var dataSpeed = 2;
	public var dataRotation = 0;
	public var dataEase = Sine.easeIn;
	
	public var dataDelayOut = 30;
    public var dataSpeedOut = 2;
	public var dataRotationOut = 0;
	public var dataEaseOut = Sine.easeIn;
	
	public var rgbWhite = 0xFEFEFE;
	public var rgbOrange = 0xFF6600;
	public var rgbGreen = 0x8FF3A6;
	public var rgbBlue = 0x62D1F7;
	public var rgbPink = 0xEF45B4;
	public var rgbDark = 0x464546;
	
	public var dataRotationTablet = 180;
	public var dataSpeedTablet = .4;
	
	public var dataRotationMonitor = 180;
	public var dataSpeedMonitor = .4;
	
	public var hologramDataFade = .03;
	public var hologramDataIn = .07;
	public var dataRotationHologram = 0;
	
    public var nanoBotSpeed = 1.5;
	public var nanoBotRotation = 180;
	public var nanoBotScale = 1.1;
	public var nanoBotEaseType = Elastic.easeInOut;
	
	public var planetDestructionSpeedTransitionIn = .8;
	public var planetDestructionSpeedWait = 2;
	public var planetDestructionSpeedTransitionOut = .5;

	public var dataEOWDInSpeed = .2;	
	public var dataEOWDInRotation =  180;	
	public var dataEOWDInEaseType= Sine.easeIn;

	public var dataDNAInSpeed = .4;	
	public var dataDNAInRotation =  0;	
	public var dataDNAInEaseType = Sine.easeIn;
	
	public var mcNMHRNodeSpeed = 2;	
    public var mcNMHRNodeEaseType = Sine.easeInOut;
	public var mcNMHNDNodeSpeed = 2;	
    public var mcNMHNDNodeEaseType = Sine.easeInOut;
	
    public var mcGDataSquareSpeed = .3;	
    public var mcGDataSquareEaseType = Sine.easeInOut;
	
	public var lenseAdaptorSpeed = .3;	
	public var BodyDataFadeSpeed = .12;	
	

	// TimelineLite reference
	//public var rotatorsAni:TimelineLite;
	//public var satDataBOut:TimelineMax;

	

	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//BEGIN THE ANIMATION PACKAGE FUNCTION
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	public function animationPackage() {
	addEventListener(Event.ADDED_TO_STAGE, init);
	
	
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
		//CONTROL PANEL Comment Out When Not Testing
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			

	

		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
		//BEGIN IDLE ANIMATION TIMELINES - TO DO
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		

	  //mcLargeDrivesIdle
/*      var mcLargeDrivesIdle = new TimelineMax( { repeat: -1, yoyo:true } );
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcBlueDrive, 2, { alpha:1, rotation: 360, ease:Sine.easeInOut } ));
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcOrangeDrive, 1.5, { alpha:1, rotation: 360, ease:Sine.easeInOut } ));
       mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcPinkDrive, 1, { alpha:1, rotation: 360, ease:Sine.easeInOut } ));
	   
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcBlueDrive, 3, { alpha:1, rotation: 1080, ease:Sine.easeInOut } ));
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcOrangeDrive, 2, { alpha:1, rotation: 720, ease:Sine.easeInOut } ));
       mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcPinkDrive, 1.5, { alpha:1, rotation: -720, ease:Sine.easeInOut } ));
	   
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcBlueDrive, 3, { alpha:1, rotation: -2160, ease:Sine.easeInOut } ));
	   mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcOrangeDrive, 2, { alpha:1, rotation: -1440, ease:Sine.easeInOut } ));
       mcLargeDrivesIdle.append(new TweenMax(mcGlobalData.mcPinkDrive, 1.5, { alpha:1, rotation: 180, ease:Sine.easeInOut } ));
	   
	   
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
         1.5);*/
		 
   //CONTROL PANEL ShowPaths
	var ShowPaths = new TimelineMax( {  } );	
	ShowPaths.append(new TweenMax(mcDataGuidePath0Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath1Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath2Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath3Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath4Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath5Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath6Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath7Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	ShowPaths.append(new TweenMax(mcDataGuidePath8Display, 0, { alpha:0, ease:Sine.easeOut } )); 
	
    //CONTROL PANEL ToDo
	ShowPaths.append(new TweenMax(mcToDo, 0, { alpha:0, ease:Sine.easeOut } )); 
		 
		//mcBrainNodesIdle				
		var mcBrainNodesIdle	 = new TimelineMax({repeat:-1, yoyo:true, repeatDelay:1});
		mcBrainNodesIdle	.insertMultiple([	
							new TweenMax(mcBrainNodes.mcBrainNode10, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode9, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode8, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode7, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode6, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode5, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode4, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode3, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode2, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode1, .5, { tint:rgbWhite,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),	
							new TweenMax(mcBrainNodes.mcBrainNode10, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode9, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode8, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode7, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode6, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode5, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode4, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode3, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode2, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut } ),
							new TweenMax(mcBrainNodes.mcBrainNode1, 1.5 , { scaleY: 1,  scaleX: 1, ease:Elastic.easeOut  })],	
			.3,
            TweenAlign.START,
            .1);	
		 
		 
		 
//mcWorldMapColorChange
	var mcWorldMapColorChange = new TimelineMax( { repeat: -1, yoyo:false , repeatDelay:1 } );	
	mcWorldMapColorChange.append(new TweenMax(mcWorldMap, 4, { tint:rgbGreen, ease:Sine.easeOut } )); 
	mcWorldMapColorChange.append(new TweenMax(mcWorldMap, 20, { tint:rgbGreen, ease:Sine.easeOut } )); 
	mcWorldMapColorChange.append(new TweenMax(mcWorldMap, 4, { tint:rgbPink, ease:Sine.easeOut } )); 
	mcWorldMapColorChange.append(new TweenMax(mcWorldMap, 10, { tint:rgbPink, ease:Sine.easeOut } )); 
	mcWorldMapColorChange.append(new TweenMax(mcWorldMap, 4, { tint:rgbGreen, ease:Sine.easeOut } )); 

		//mcSubstance
		var mcSubstanceIdle = new TimelineMax( { repeat: -1, yoyo:true } );
		mcSubstanceIdle.insertMultiple([
		//new TweenMax(mcSubstance.mcGermFellow, 1, { tint:rgbGreen, scaleY: 1,  scaleX: 1, ease:Elastic.easeInOut } ),
		//new TweenMax(mcSubstance.mcGermFellow, 5, { tint:rgbGreen, scaleY: 1.2,  scaleX: 1.2, ease:Elastic.easeInOut } ),
		
		//new TweenMax(mcSubstance, 5, {  scaleY: 1,  scaleX: 1, delay: 4,  ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermPink, 4, { tint:rgbOrange, ease:Elastic.easeOut } ),
		new TweenMax(mcSubstance.mcGermWhite, 5, { tint:rgbPink, ease:Elastic.easeOut  } ),
		new TweenMax(mcSubstance.mcGermFellow, 5, { tint:rgbGreen, scaleY: 1,  scaleX: 1, ease:Elastic.easeInOut } ),
		
		new TweenMax(mcSubstance.mcGermScaler1, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermScaler2, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermScaler3, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermScaler4, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermScaler5, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermScaler6, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } ),
		new TweenMax(mcSubstance.mcGermScaler7, 3, { tint:rgbOrange,  scaleY: 1.3,  scaleX: 1.3, ease:Elastic.easeInOut } )],		
		.3,
         TweenAlign.START,
        .6);

//mcSubstanceJiggle
	var mcSubstanceJiggle = new TimelineMax( { repeat: -1, yoyo:false , repeatDelay:3 } );	
	mcSubstanceJiggle.append(new TweenMax(mcSubstance.mcGermFellow.mcGermFellowMovement, 1, { alpha:1, scaleX:1, ease:Elastic.easeOut} )); 
	mcSubstanceJiggle.append(new TweenMax(mcSubstance.mcGermFellow.mcGermFellowMovement, 2, { alpha:1, scaleX:.9, ease:Elastic.easeOut  } )); 	
	mcSubstanceJiggle.append(new TweenMax(mcSubstance.mcGermFellow.mcGermFellowMovement, 2.5, { alpha:1, scaleX:1.2, ease:Elastic.easeOut } )); 	
	mcSubstanceJiggle.append(new TweenMax(mcSubstance.mcGermFellow.mcGermFellowMovement, 4, { alpha:1, scaleX:1, ease:Elastic.easeInOut} )); 


		
		//mcHubArrows
		var mcHubArrowsIdle = new TimelineMax( { repeat: -1, yoyo:false } );
		
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, 4, { alpha:1} ));  //wait time to begin ani
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:.9,  scaleX:.9, ease:Sine.easeOut } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:.9,  scaleX:.9,  rotation:90, ease:Sine.easeInOut } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:1,  scaleX:1,  ease:Sine.easeInOut  } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, 4, { alpha:1 } ));  //wait time for next move
				
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:.9,  scaleX:.9, ease:Sine.easeOut } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, 1, { alpha:1, scaleY:.9,  scaleX:.9,  rotation:-270, ease:Sine.easeInOut } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:1,  scaleX:1,  ease:Sine.easeInOut  } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, 4, { alpha:1 } ));  //wait time for next move
		
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:.9,  scaleX:.9, ease:Sine.easeOut } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, 2, { alpha:1, scaleY:.9,  scaleX:.9,  rotation:-90, ease:Sine.easeInOut } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, .5, { alpha:1, scaleY:1,  scaleX:1,  ease:Sine.easeInOut  } )); 
		mcHubArrowsIdle.append(new TweenMax(mcHubArrows, 4, { alpha:1 } ));  //wait time for next move
		
		
		//mcHeartAndSpaceShoes 
		var mcHeartAndSpaceShoeIdle = new TimelineMax( { repeat: 10, onComplete:goRun } );
		               mcHeartAndSpaceShoeIdle.append(new TweenMax(mcHeartAndSpaceShoe.mcHeart, .3, { scaleY:.9, scaleX:.9,ease:Elastic.easeOut } ));
					   mcHeartAndSpaceShoeIdle.append(new TweenMax(mcHeartAndSpaceShoe.mcHeart, .8, { scaleY:1, scaleX:1, ease:Elastic.easeOut} ));
		
		var mcHeartAndSpaceShoeActive = new TimelineMax( { paused:true, repeat: 10, onComplete:goRest } );
		                mcHeartAndSpaceShoeActive.append(new TweenMax(mcHeartAndSpaceShoe.mcHeart, .2, { scaleY:.9, scaleX:.9,ease:Elastic.easeOut } ));
					    mcHeartAndSpaceShoeActive.append(new TweenMax(mcHeartAndSpaceShoe.mcHeart, .4, { scaleY:1, scaleX:1, ease:Elastic.easeOut } ));
					   
					   
		function goRun():void {
			trace("Working Out");
			TweenMax.to(mcHeartAndSpaceShoe.mcSpaceShoeLED2, 1, { tint:rgbGreen, scaleY:1.4, scaleX:1.4, ease:Elastic.easeOut } );
			TweenMax.to(mcHeartAndSpaceShoe.mcSpaceShoeLEDHeartBlinker, 1, { alpha:1 } );
			mcHeartAndSpaceShoeActive.restart();	
		}			
		
		function goRest():void {
			trace("Resting");
			TweenMax.to(mcHeartAndSpaceShoe.mcSpaceShoeLED2, 1, { tint:rgbBlue, scaleY:1, scaleX:1, ease:Elastic.easeOut } );
			TweenMax.to(mcHeartAndSpaceShoe.mcSpaceShoeLEDHeartBlinker, 1, { alpha:0 } );
			mcHeartAndSpaceShoeIdle.restart();	
		}	
		
		
		//mcSlottedRotatorIdle
        var mcSlottedRotatorIdle = new TimelineMax({repeat:-1, repeatDelay:1});
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotator.mcSlottedRotatorOuter, 4, {transformMatrix:{rotation:225, ease:Sine.easeInOut}}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotator.mcSlottedRotatorInner, 4, {transformMatrix:{rotation:90, ease:Bounce.easeOut}}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotatorLock.mcSlottedRotatorLockTop, .4, {delay:.1, y:-6.0, ease:Bounce.easeIn}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotator.mcSlottedRotatorInner, .5, {transformMatrix:{delay:1, scaleX:.8, scaleY:.8, rotation:495, ease:Cubic.easeOut}}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotator.mcSlottedRotatorOuter, .7, {transformMatrix:{delay:0, scaleX:.8, scaleY:.8, rotation:450, ease:Cubic.easeOut}}));
						
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotatorFan, 8, {transformMatrix:{ delay:0, rotation:2160, ease:Cubic.easeInOut }}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotatorLock.mcSlottedRotatorLockTop, .3, {delay:.1, y:-3.85, ease:Bounce.easeOut}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotator.mcSlottedRotatorOuter, .7, {transformMatrix:{rotation:0, scaleX:1, scaleY:1, ease:Bounce.easeOut}}));
						mcSlottedRotatorIdle.append(new TweenMax(mcSlottedRotator.mcSlottedRotatorInner, 1, { transformMatrix: { rotation:0, scaleX:1, scaleY:1, ease:Bounce.easeOut }} ));
						
						
		//mcOpenRotatorIdle				
		var mcOpenRotatorIdle = new TimelineMax({repeat:-1, yoyo:true, repeatDelay:1});
		mcOpenRotatorIdle.insertMultiple([	
							new TweenMax(mcOpenRotator.mcOpenRotatorInner1, 4, {rotation:135, ease:Sine.easeOut}),
							new TweenMax(mcOpenRotator.mcOpenRotatorInner2, 6, {rotation:90, ease:Sine.easeOut}),	
							new TweenMax(mcOpenRotator.mcOpenRotatorInner1, 2, {delay:8, rotation:0, ease:Sine.easeOut}),
							new TweenMax(mcOpenRotator.mcOpenRotatorInner2, 2, {delay:8, rotation:0, ease:Sine.easeOut})],					
			0,
            TweenAlign.START,
            8);	
							
		
		//mcSatContainer Data In
        var satDataB = new TimelineMax( { paused:true, onComplete:satDataBremove } );
		//satDataB.append(remoteControlGlobal);
		satDataB.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetB1, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB2, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetB3, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB4, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB5, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetB6, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB7, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB8, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetB9, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB10, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB11, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetB12, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB13, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB14, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetB15, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB16, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetB17, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetB18, dataSpeed, { alpha:1, rotation:dataRotation, ease:dataEase } )],	
			0,
            TweenAlign.START,
            .15);

			
        var satDataP = new TimelineMax( {paused:true, onComplete:satDataPremove } );
		satDataP.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetP1, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP2, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP3, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP4, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP5, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP6, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP7, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP8, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP9, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP10, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP11, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP12, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP13, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP14, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP15, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP16, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP17, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP18, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP19, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP20, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP21, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP22, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP23, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetP24, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetP25, dataSpeed, { alpha:1, rotation:dataRotation, ease:dataEase } )],
			0,
            TweenAlign.START,
            .15);

        var satDataG = new TimelineMax( {paused:true, onComplete:satDataGremove } );
		satDataG.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetG1, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG2, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG3, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG4, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG5, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG6, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG7, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG8, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG9, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG10, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG11, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG12, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG13, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG14, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG15, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG16, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG17, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG18, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG19, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG20, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG21, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetG22, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetG23, dataSpeed, { alpha:1, rotation:dataRotation, ease:dataEase } )],	
			0,
            TweenAlign.START,
            .15);

		var satDataW = new TimelineMax( {paused:true, onComplete:satDataWremove } );
		satDataW.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetW1, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW2, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetW3, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW4, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW5, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetW6, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW7, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW8, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetW9, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW10, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW11, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetW12, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetW13, dataSpeed, { alpha:1, rotation:dataRotation, ease:dataEase } )],
			0,
            TweenAlign.START,
            .15);
			
        var satDataO = new TimelineMax( {paused:true, onComplete:satDataOremove } );
		satDataO.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetO1, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO2, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetO3, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO4, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO5, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetO6, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO7, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO8, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetO9, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO10, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO11, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetO12, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO13, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),
							new TweenMax(mcSatContainer.mcSatDataSetO14, dataSpeed, {alpha:1, rotation:dataRotation, ease:dataEase}),	
							new TweenMax(mcSatContainer.mcSatDataSetO15, dataSpeed, { alpha:1, rotation:dataRotation, ease:dataEase } )],		
			0,
            TweenAlign.START,
            .15);
			
		//mcSatContainer Data Out
        var satDataBOut = new TimelineMax({paused:true, onComplete:satDataOremove});
		satDataBOut.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetB1, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB2, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetB3, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB4, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB5, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetB6, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB7, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB8, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetB9, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB10, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB11, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetB12, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB13, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB14, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetB15, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB16, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetB17, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetB18, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut})],		
			0,
            TweenAlign.START,
            .15);
			
        var satDataPOut = new TimelineMax({paused:true, onComplete:satDataOremove});
		satDataPOut.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetP1, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP2, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP3, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP4, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP5, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP6, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP7, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP8, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP9, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP10, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP11, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP12, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP13, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP14, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP15, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP16, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP17, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP18, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP19, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP20, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP21, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP22, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP23, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetP24, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetP25, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut})],
			0,
            TweenAlign.START,
            .15);						
	
        var satDataGOut = new TimelineMax({paused:true, onComplete:satDataOremove});
		satDataGOut.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetG1, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG2, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG3, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG4, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG5, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG6, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG7, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG8, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG9, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG10, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG11, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG12, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG13, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG14, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG15, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG16, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG17, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG18, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG19, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG20, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG21, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetG22, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetG23, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut})],
			0,
            TweenAlign.START,
            .15);						

		var satDataWOut = new TimelineMax({paused:true, onComplete:satDataOremove});
		satDataWOut.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetW1, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW2, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetW3, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW4, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW5, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetW6, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW7, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW8, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetW9, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW10, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW11, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetW12, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetW13, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut})],
			0,
            TweenAlign.START,
            .15);
			
        var satDataOOut = new TimelineMax( { paused:true, onComplete:satDataOremove} );
		satDataOOut.insertMultiple([	
							new TweenMax(mcSatContainer.mcSatDataSetO1, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO2, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetO3, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO4, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO5, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetO6, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO7, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO8, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetO9, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO10, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO11, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetO12, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO13, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),
							new TweenMax(mcSatContainer.mcSatDataSetO14, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut}),	
							new TweenMax(mcSatContainer.mcSatDataSetO15, dataSpeedOut, { alpha:0, rotation:dataRotationOut, ease:dataEaseOut})],							
			0,
            TweenAlign.START,
            .15);	

			
					//open the satellite and send data
		var satOpen = new TimelineMax( { onComplete:sendingSatelliteData } );
		//satOpen.append(new TweenMax(mcSatContainer, .3, { delay:6, alpha:1 } )); //SET DELAY UNTIL SATELLITE O HERE
		satOpen.append(new TweenMax(mcSatContainer.mcSatSignal1, 0, { alpha:0 } ));
		satOpen.append(new TweenMax(mcSatContainer.mcSatSignal2, 0, { alpha:0 } ));
		satOpen.append(new TweenMax(mcSatContainer.mcSatSignal3, 0, { alpha:0 } ));
		
		satOpen.append(new TweenMax(mcSatContainer.mcSatPanelsTop, 2, { transformMatrix: { x:27, y: -52.9, skewY: -14, ease:Sine.easeIn }} ));
		satOpen.append(new TweenMax(mcSatContainer.mcSatSignal1, 1, { delay:0, alpha:1 } ));
		satOpen.append(new TweenMax(mcSatContainer.mcSatPanelsBot, 2, {transformMatrix:{x:47, y: 52.6, skewY:-14, ease:Sine.easeIn}}));
		
		satOpen.append(new TweenMax(mcSatContainer.mcSatSignal2, .5, { delay:0, alpha:1 } ));
		satOpen.append(new TweenMax(mcSatContainer.mcSatSignal3, 1, { delay:0, alpha:1 } ));
		
		//close the satellite and end tx
		var satClose = new TimelineMax( { paused:true, onComplete:stopSatelliteData } );
		satClose.append(new TweenMax(mcSatContainer, .3, { delay:6, alpha:1 } )); //SET DELAY UNTIL SATELLITE CLOSES HERE
		
		satClose.append(new TweenMax(mcSatContainer.mcSatPanelsTop, 2, { transformMatrix: { x:27, y: -54.35, skewY: 0, ease:Sine.easeOut }} ));
		satClose.append(new TweenMax(mcSatContainer.mcSatSignal3, 1, { delay:1, alpha:0 } ));
		satClose.append(new TweenMax(mcSatContainer.mcSatPanelsBot, 2, {transformMatrix:{x:47, y: 54.4, skewY:0, ease:Sine.easeOut}}));
		
		satClose.append(new TweenMax(mcSatContainer.mcSatSignal2, .6, { delay:1, alpha:0 } ));
		satClose.append(new TweenMax(mcSatContainer.mcSatSignal1, .8, { delay:1, alpha:0 } ));


		
		
		function sendingSatelliteData():void {
		trace("The Satellite is sending data");
		satDataB.restart();	
		satDataP.restart();				
		satDataG.restart();				
		satDataW.restart();				
		satDataO.restart();	
		satClose.restart();
		}	
		
		function stopSatelliteData():void {
			trace("The Satellite is closing");
			
		satDataB.reverse();	
		satDataP.reverse();				
		satDataG.reverse();			
		satDataW.reverse();			
		satDataO.reverse();
		satOpen.restart();
		}
		 
		//mcTheGoodBook
		var mcTheGoodBookIdle = new TimelineMax( { repeat: -1, yoyo:false } );
		
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBook, 0, { rotation:0, scaleX:1, scaleY:1, alpha:1, ease:Sine.easeInOut } ));
		//mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBook, 4, { blurFilter:{blurX:30, blurY:30}, quality:3, alpha:0, ease:Sine.easeIn } ));
		//mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBook, 4, { blurFilter: { blurX:30, blurY:30 }, quality:3, alpha:1, ease:Sine.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBook, 3, {glowFilter:{color:0xB7D442, alpha:1, blurX:0, blurY:0}}));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBook, 1, {glowFilter:{color:0xB7D442, alpha:1, blurX:0, blurY:0}}));
		
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcConnectToGod, 1, { x:0.4, y:232, alpha:1, ease:Sine.easeInOut } ));
		//mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBookEnergy, 0, { rotation:0, scaleX:1, scaleY:1, alpha:1, ease:Sine.easeInOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.theGoodBookEnergy, 2.5, { rotation:360, scaleX:1, scaleY:1, alpha:1, ease:Sine.easeInOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcConnectToGod, 1, { x:0.4, y:223.6, alpha:1, ease:Sine.easeInOut } ));
		
		
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart1, .3, { scaleY:.9, scaleX:.9, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart1, .8, { scaleY: 1.2, scaleX:1.2, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart2, .3, { scaleY:.9, scaleX:.9, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart2, .8, { scaleY: 1.2, scaleX:1.2, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart3, .3, { scaleY:.9, scaleX:.9, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart3, .8, { scaleY: 1.2, scaleX:1.2, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart4, .3, { scaleY:.9, scaleX:.9, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart4, .8, { scaleY: 1.2, scaleX:1.2, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart5, .3, { scaleY:.9, scaleX:.9, ease:Elastic.easeOut } ));
		mcTheGoodBookIdle.append(new TweenMax(mcTheGoodBook.mcHeart5, .8, { scaleY: 1.2, scaleX:1.2, ease:Elastic.easeOut } ));			
		
		
		


		 
		 
		 
		//mcCorneaImplant
		var mcCorneaImplantIdle = new TimelineMax( { repeat: -1, yoyo:false } );
		
		//natural eyeball animation
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverPupil, 0, { tint:rgbPink, alpha:1 } )); //current color
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverEye
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverSocket
		
		//cornea implant lense - set initial outer color - Pink to Blue
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 0, { tint:rgbPink, alpha:1 } )); //current color
        mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbBlue, alpha:0 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerInner, 1.2, { rotation:90, ease:Sine.easeInOut, onComplete:runOuterMask } ));	//rotate inner	
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbBlue, alpha:1 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 1.5, { tint:rgbBlue, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask} ));//next color commit
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, .4, { alpha:1 } )); //wait time
		
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverPupil, .5, { tint:rgbBlue, alpha:1 } )); //current color
		
		        
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedInner, 2, { rotation:90, ease:Elastic.easeInOut} ));	//rotate inner	
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedOuter, 1, { tint:rgbBlue, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask } ));//next color commit
				//change lense adapters
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor1, lenseAdaptorSpeed, { rotation:0, tint:rgbBlue, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor2, lenseAdaptorSpeed, { rotation:270, tint:rgbPink, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor3, lenseAdaptorSpeed, { rotation:0, tint:rgbPink, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor4, lenseAdaptorSpeed, { rotation:-90, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor5, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor6, lenseAdaptorSpeed, { rotation:45, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor7, lenseAdaptorSpeed, { rotation:0, alpha: 0, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor8, lenseAdaptorSpeed, { rotation:0, tint:rgbPink,  alpha: 1, ease:Sine.easeInOut } ));
		
		//cornea implant lense - transition to next color - Blue to Orange
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 0, { tint:rgbBlue, alpha:1 } )); //current color
        mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbOrange, alpha:0 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerInner, 1.2, { rotation:180, ease:Sine.easeInOut, onComplete:runOuterMask } ));	//rotate inner	
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbOrange, alpha:1 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 1.5, { tint:rgbOrange, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask} ));//next color commit
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, .4, { alpha:1 } )); //wait time
		
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverPupil, .5, { tint:rgbOrange, alpha:1 } )); //current color
		
		
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedInner, 2, { rotation:180, ease:Elastic.easeInOut} ));	//rotate inner	
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedOuter, 1, { tint:rgbOrange, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask} ));//next color commit
				//change lense adapters
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor1, lenseAdaptorSpeed, { rotation:0, tint:rgbOrange, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor2, lenseAdaptorSpeed, { rotation:180, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor3, lenseAdaptorSpeed, { rotation:0, tint:rgbGreen, alpha: 0, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor4, lenseAdaptorSpeed, { rotation:180, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor5, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor6, lenseAdaptorSpeed, { rotation:90, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor7, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor8, lenseAdaptorSpeed, { rotation:0, tint:rgbWhite, alpha: 1, ease:Sine.easeInOut } ));
				
		//cornea implant lense - transition to next color - Orange to Green
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 0, { tint:rgbOrange, alpha:1 } )); //current color
        mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbGreen, alpha:0 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerInner, 1.2, { rotation:270, ease:Sine.easeInOut, onComplete:runOuterMask } ));	//rotate inner	
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbGreen, alpha:1 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 1.5, { tint:rgbGreen, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask} ));//next color commit
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, .4, { alpha:1 } )); //wait time
		
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverPupil, .5, { tint:rgbGreen, alpha:1 } )); //current color
		
		
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedInner, 2, { rotation:-90, ease:Elastic.easeInOut} ));	//rotate inner	
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedOuter, 1, { tint:rgbGreen, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask} ));//next color commit
				//change lense adapters
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor1, lenseAdaptorSpeed, { rotation:0, tint:rgbGreen, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor2, lenseAdaptorSpeed, { rotation:45, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor3, lenseAdaptorSpeed, { rotation:0, tint:rgbBlue, alpha: 0, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor4, lenseAdaptorSpeed, { rotation:180, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor5, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor6, lenseAdaptorSpeed, { rotation:270, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor7, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor8, lenseAdaptorSpeed, { rotation:0, tint:rgbPink, alpha: 1, ease:Sine.easeInOut } ));
				
		//cornea implant lense - transition to next color - Green to Pink
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 0, { tint:rgbGreen, alpha:1 } )); //current color
        mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbPink, alpha:0 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerInner, 1.2, { rotation:0, ease:Sine.easeInOut, onComplete:runOuterMask } ));	//rotate inner	
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { tint:rgbPink, alpha:1 } ));  //next color
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 1.5, { tint:rgbPink, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask} ));//next color commit
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, .4, { alpha:1 } )); //wait time
		
		
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcEyeballMover.mcEyeballMoverPupil, .5, { tint:rgbPink, alpha:1 } )); //current color
		
		
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedInner, 2, { rotation:360, ease:Elastic.easeInOut} ));	//rotate inner	
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainerEnhanced.mcCorneaLenseContainerEnhancedOuter, 1, { tint:rgbPink, scaleX:1, scaleY:1, alpha:1, onComplete:resetOuterMask } ));//next color commit
				//change lense adapters
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor1, lenseAdaptorSpeed, { rotation:0, tint:rgbPink, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor2, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor3, lenseAdaptorSpeed, { rotation:0, tint:rgbPink, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor4, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor5, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor6, lenseAdaptorSpeed, { rotation:0, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor7, lenseAdaptorSpeed, { rotation:0, tint:rgbBlue, alpha: 1, ease:Sine.easeInOut } ));
				mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcLenseAdaptor8, lenseAdaptorSpeed, { rotation:0, tint:rgbOrange, alpha: 1, ease:Sine.easeInOut } ));
				
				
		//setup unmasked for next loop
		mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 0, { tint:rgbPink, alpha:1 } )); //current color
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperOut, .5, {  scaleX:1.2, scaleY:1.2, ease:Sine.easeOut } ));
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, 0, { alpha:1 } ));
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperOut, 0, { alpha:0} ));
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerWrapperIn, .5, {  scaleX:1, scaleY:1, ease:Sine.easeIn } ));
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 0, { tint:rgbBlue, alpha:1 } )); //commit changed color
		//mcCorneaImplantIdle.append(new TweenMax(mcCorneaImplant.mcCorneaLenseContainer.mcCorneaLenseContainerOuter, 4, {alpha:1 } )); //wait time until next lense switch
		
	
		function runOuterMask():void {
        mcCorneaImplant.mcCorneaLenseContainer.mcCorneaCircleMaskTool.gotoAndPlay(2);
		}	
		
		function resetOuterMask():void {
        mcCorneaImplant.mcCorneaLenseContainer.mcCorneaCircleMaskTool.gotoAndStop(1);
		}	
						
		//mcNanoBotArmy
		var mcRNanoBotArmyIdle = new TimelineMax( { repeat: -1, yoyo:true } );
		mcRNanoBotArmyIdle.insertMultiple([
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB11, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB10, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB9, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB8, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB7, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB6, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB5, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB4, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB3, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB2, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcRedNBs.RNB1, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } )],
						.3,
                        TweenAlign.START,
                       .1);

		var mcGNanoBotArmyIdle = new TimelineMax( { repeat: -1, yoyo:true } );
		mcGNanoBotArmyIdle.insertMultiple([
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB11, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB10, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB9, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB8, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB7, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB6, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB5, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB4, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB3, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB2, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } ),
		new TweenMax(mcNanoBotArmy.mcGreenNBs.GNB1, nanoBotSpeed, { rotation:nanoBotRotation, scaleX:nanoBotScale, scaleY:nanoBotScale, alpha:1, ease:nanoBotEaseType } )],
						.6,
                        TweenAlign.START,
                       .2);
					   
		var mcWNanoBotArmyIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay: 3} );
		mcGNanoBotArmyIdle.append(new TweenMax(mcNanoBotArmy.mcWhiteNBs, 4, { alpha:0, ease:nanoBotEaseType } ));

						
     //mcNodeHoversIdle
       var mcNodeHoversNHTIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay: 3.9} );
		mcNodeHoversNHTIdle.insertMultiple([
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT1, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT2, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT3, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT4, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT5, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT6, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT7, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT8, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT8, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),// duplicate to match hands speed
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT1, 1, { alpha:0, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),// duplicate to match hands speed
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT1, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT2, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT3, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT4, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT5, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT6, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT7, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversTop.mcNHT8, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } )],
						.6,
                        TweenAlign.START,
                        .2);
						
       var mcNodeHoversNHRIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay: 3.9} );
		mcNodeHoversNHRIdle.insertMultiple([
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR1, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR2, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR3, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR4, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR5, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR6, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR7, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR8, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR9, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR1, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR2, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR3, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR4, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR5, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR6, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR7, 1, { alpha:1, tint:rgbWhite, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR8, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversRight.mcNHR9, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } )],
						.6,
                        TweenAlign.START,
                        .2);
						
       var mcNodeHoversNHLIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay: 3.9 } );
		mcNodeHoversNHLIdle.insertMultiple([
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL1, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL2, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL3, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL4, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL5, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL6, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL7, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL8, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL9, 1, { alpha:0, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL1, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL2, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL3, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL4, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL5, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL6, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL7, 1, { alpha:1, tint:rgbWhite, ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL8, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } ),
		new TweenMax(mcNodeMoversHuman.mcNodeHoversLeft.mcNHL9, 1, { alpha:1, tint:rgbWhite,ease:mcNMHNDNodeEaseType } )],
						.6,
                        TweenAlign.START,
                        .2);
						
						
						
							
						
		
     //mcNodeMoversHandIdle
       var mcNodeMoversHandIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay: 5 } );
		mcNodeMoversHandIdle.insertMultiple([
		//new TweenMax(mcNodeMoversHand.mcNMHNDNode0, mcNMHNDNodeSpeed, { alpha:1, x: 0.4 , ease:mcNMHNDNodeEaseType } ),
        //new TweenMax(mcNodeMoversHand.mcNMHNDNode1, mcNMHNDNodeSpeed, { alpha:1, x: -149.65 , ease:mcNMHNDNodeEaseType } ),
        //new TweenMax(mcNodeMoversHand.mcNMHNDNode2, mcNMHNDNodeSpeed, { alpha:1, x: -226.55 , ease:mcNMHNDNodeEaseType } ),		

        new TweenMax(mcNodeMoversHand.mcNMHNDNode1, mcNMHNDNodeSpeed, { alpha:1, y: 118.4 , ease:mcNMHNDNodeEaseType } ),
        new TweenMax(mcNodeMoversHand.mcNMHNDNode2, mcNMHNDNodeSpeed, { alpha:1, x: -94.85, y: 84 , ease:mcNMHNDNodeEaseType } ),
        new TweenMax(mcNodeMoversHand.mcNMHNDNode3, mcNMHNDNodeSpeed, { alpha:1, x: -208.2,  ease:mcNMHNDNodeEaseType } )],
						1.5,
                        TweenAlign.START,
                        3.5);
		
     //mcNodeMoversHumanIdle
       var mcNodeMoversHumanIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay: 5 } );
		mcNodeMoversHumanIdle.insertMultiple([
		//new TweenMax(mcNodeMoversHuman.mcNMHRNode0, mcNMHRNodeSpeed, { alpha:1, x: 0.4 , ease:mcNMHRNodeEaseType } ),
        //new TweenMax(mcNodeMoversHuman.mcNMHRNode1, mcNMHRNodeSpeed, { alpha:1, x: -149.65 , ease:mcNMHRNodeEaseType } ),
        //new TweenMax(mcNodeMoversHuman.mcNMHRNode2, mcNMHRNodeSpeed, { alpha:1, x: -226.55 , ease:mcNMHRNodeEaseType } ),		
        //new TweenMax(mcNodeMoversHuman.mcNMHRNode3, mcNMHRNodeSpeed, { alpha:1, x: -180.85 , ease:mcNMHRNodeEaseType } ),
        //new TweenMax(mcNodeMoversHuman.mcNMHRNode4, mcNMHRNodeSpeed, { alpha:1, x: -207.4 , y: -350.3 ,ease:mcNMHRNodeEaseType } ),
        //new TweenMax(mcNodeMoversHuman.mcNMHRNode5, mcNMHRNodeSpeed, { alpha:1, x: 67.75 , ease:mcNMHRNodeEaseType } ),
		//new TweenMax(mcNodeMoversHuman.mcNMHRNode6, mcNMHRNodeSpeed, { alpha:1, x: -28.25 , ease:mcNMHRNodeEaseType } ),
        //new TweenMax(mcNodeMoversHuman.mcNMHRNode7, mcNMHRNodeSpeed, { alpha:1, x: -40.55, y: -280.6 , ease:mcNMHRNodeEaseType } ),

		new TweenMax(mcNodeMoversHuman.mcNMHRNode0, mcNMHRNodeSpeed, { alpha:1, x: -112.4 , ease:mcNMHRNodeEaseType } ),
        new TweenMax(mcNodeMoversHuman.mcNMHRNode1, mcNMHRNodeSpeed, { alpha:1, x: -102.85 , ease:mcNMHRNodeEaseType } ),
        new TweenMax(mcNodeMoversHuman.mcNMHRNode2, mcNMHRNodeSpeed, { alpha:1, x: -27.7 , ease:mcNMHRNodeEaseType } ),		
        new TweenMax(mcNodeMoversHuman.mcNMHRNode3, mcNMHRNodeSpeed, { alpha:1, x: -102.85 , ease:mcNMHRNodeEaseType } ),
        new TweenMax(mcNodeMoversHuman.mcNMHRNode4, mcNMHRNodeSpeed, { alpha:1, x: -56.6 , y: -199.5 ,ease:mcNMHRNodeEaseType } ),
        new TweenMax(mcNodeMoversHuman.mcNMHRNode5, mcNMHRNodeSpeed, { alpha:1, x: -144.25 , ease:mcNMHRNodeEaseType } ),
        new TweenMax(mcNodeMoversHuman.mcNMHRNode6, mcNMHRNodeSpeed, { alpha:1, x: -80.05 , ease:mcNMHRNodeEaseType } ),
        new TweenMax(mcNodeMoversHuman.mcNMHRNode7, mcNMHRNodeSpeed, { alpha:1, x: -54.85, y: -266.6 , ease:mcNMHRNodeEaseType } )],
						2,
                        TweenAlign.START,
                        0);
		
		
	  //mcDNAStrandSolidIdle
       var mcDNAStrandSolidIdle = new TimelineMax( { repeat: -1, yoyo:false } );
	   mcDNAStrandSolidIdle.append(new TweenMax(mcDNADamaged, 3, { alpha:1, tint:rgbPink, ease:dataDNAInEaseType } ));
	   mcDNAStrandSolidIdle.append(new TweenMax(mcDNADamaged, 3, { alpha:1, tint:rgbGreen, ease:dataDNAInEaseType } ));
	   mcDNAStrandSolidIdle.append(new TweenMax(mcDNASolid, 0, { alpha:1, tint:rgbWhite, ease:dataDNAInEaseType } ));

		
	  //mcDNAStrandIdle
       var mcDNAStrandIdle = new TimelineMax( { repeat: -1, yoyo:false } );
		mcDNAStrandIdle.insertMultiple([
        new TweenMax(mcDNAStrand.mcDNA1, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA2, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA3, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA4, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA5, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA6, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA7, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA8, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA9, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA10, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA11, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA12, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA13, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA14, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA15, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA16, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA17, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA18, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA19, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA20, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA21, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA22, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA23, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA24, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA25, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA26, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA27, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA28, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA29, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA30, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA31, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA32, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA33, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA34, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA35, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA36, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA37, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA38, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA39, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),	
        new TweenMax(mcDNAStrand.mcDNA40, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA41, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA42, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA43, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA44, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA45, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA46, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA47, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA48, dataDNAInSpeed, { alpha:0, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
		
		new TweenMax(mcDNAStrand.mcDNA1, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA2, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA3, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA4, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA5, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA6, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA7, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA8, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA9, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA10, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA11, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA12, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA13, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA14, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA15, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA16, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA17, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA18, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA19, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA20, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA21, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA22, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA23, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA24, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA25, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA26, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA27, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA28, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA29, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA30, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA31, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA32, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA33, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA34, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA35, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA36, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA37, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA38, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA39, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),	
        new TweenMax(mcDNAStrand.mcDNA40, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA41, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA42, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA43, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA44, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA45, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA46, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),		
        new TweenMax(mcDNAStrand.mcDNA47, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } ),
        new TweenMax(mcDNAStrand.mcDNA48, dataDNAInSpeed, { alpha:1, rotation:dataDNAInRotation, ease:dataDNAInEaseType } )],
						.2,
                        TweenAlign.START,
                        .08);
		
		
		//mcComAndProcessIdle
		var mcComAndProcessIdle = new TimelineMax( { repeat: -1, yoyo:true } );
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess1, 0, { rotation:0, alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess2, 0, { rotation:0, alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess3, 0, { rotation:0, alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessBubble,  1, { rotation:0, tint:rgbBlue, alpha: 1, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess1, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess2, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess3, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessBubble,  1.5, { rotation:0, tint:rgbPink, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessRot1, .7, { rotation:180, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessRot2, .7, { rotation:90, tint:rgbOrange, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessRot3, .7, { rotation:135, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessBubble,  1, { rotation:0, tint:rgbBlue, alpha: 1, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess1, .1, { rotation:0,  alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess2, .1, { rotation:0,  alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess3, .1, { rotation:0,  alpha: 0, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess1, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess2, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess3, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessBubble,  1.5, { rotation:0, tint:rgbGreen, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessRot1, .7, { rotation:360, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessRot2, .7, { rotation:-135, tint:rgbWhite, alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessRot3, .7, { rotation: -90, alpha: 1, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess1, .1, { rotation:0,  alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess2, .1, { rotation:0,  alpha: 0, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess3, .1, { rotation:0,  alpha: 0, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess1, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess2, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcess3, .3, { rotation:0,  alpha: 1, ease:Sine.easeInOut } ));
		
		mcComAndProcessIdle.append(new TweenMax(mcComAndProcess.mcComAndProcessBubble,  1, { rotation:0, tint:rgbBlue, alpha: 1, ease:Sine.easeInOut } ));
		
		//mcBigBrotherIsWatching
		var mcBigBrotherIsWatching = new TimelineMax( { repeat: -1, yoyo:false, repeatDelay:45 } );
		
		mcBigBrotherIsWatching.insertMultiple([	
							new TweenMax(mcMonitorScreens.mcMonitorScreensBigBrother, 2, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut }),
							new TweenMax(mcTabletScreens.mcTabletScreensBigBrother, 2, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } )],
                        0,
                        TweenAlign.START,
                        0);
		mcBigBrotherIsWatching.append(new TweenMax(mcMonitorScreens.mcMonitorScreensBigBrother, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut }  )); 
		mcBigBrotherIsWatching.append(new TweenMax(mcTabletScreens.mcTabletScreensBigBrother, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut }  )); 
		mcBigBrotherIsWatching.append(new TweenMax(mcMonitorScreens.mcMonitorScreensBigBrother, .2, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut }  )); 
		mcBigBrotherIsWatching.append(new TweenMax(mcTabletScreens.mcTabletScreensBigBrother, .2, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut }  )); 
		
		//mcNanoBotSwaps
		var mcNanoBotSwaps = new TimelineMax( { } );
		mcNanoBotSwaps.append(new TweenMax(mcNanBotSkelegon, 0, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } )); 
		mcNanoBotSwaps.append(new TweenMax(mcNanoBotCrouch, 0, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } )); 
		
		//NOW ONLY USING  CROUCH AND THAT TIMELINE LOOPS
/*		mcNanoBotSwaps.append(new TweenMax(mcNanoBotCrouch, .1, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut , onComplete:mcNanoBotCrouchAni } )); 
		mcNanoBotSwaps.append(new TweenMax(mcNanoBotCrouch, 30, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));  //wait time is 815 frames at 45 - 19 seconds
		
		mcNanoBotSwaps.append(new TweenMax(mcNanoBotCrouch, .1, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut }  )); 
		mcNanoBotSwaps.append(new TweenMax(mcNanBotSkelegon, .1, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut , onComplete:mcNanBotSkelegonAni} )); 
		mcNanoBotSwaps.append(new TweenMax(mcNanBotSkelegon, 38, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));   //wait time is 1650 frames at 45 - 37 seconds
		
		function mcNanBotSkelegonAni ():void {
			trace("mcNanBotSkelegonAni ");
			mcNanBotSkelegon.gotoAndPlay(2);
		}			
		
		function  mcNanoBotCrouchAni ():void {
			trace("mcNanoBotCrouchAni ");
			mcNanoBotCrouch.gotoAndPlay(2);
		}	*/

		//mcChipSurgerySetup
		var mcChipSetupIdle = new TimelineMax( { } );
		 mcChipSetupIdle.append(new TweenMax(mcChip.mcChip1, 0, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } ));  
		 mcChipSetupIdle.append(new TweenMax(mcChip.mcChip2, 0, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } ));  
		 mcChipSetupIdle.append(new TweenMax(mcChip.mcChip3, 0, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } ));  
		 mcChipSetupIdle.append(new TweenMax(mcChip.mcChip4, 0, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } ));  
		 mcChipSetupIdle.append(new TweenMax(mcChip.mcChip5, 0, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } ));  
		 
	     mcChipSetupIdle.append(new TweenMax(mcChip.mcChip1PostOp, 0, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  
	     mcChipSetupIdle.append(new TweenMax(mcChip.mcChip2PostOp, 0, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  
	     mcChipSetupIdle.append(new TweenMax(mcChip.mcChip3PostOp, 0, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  
	     mcChipSetupIdle.append(new TweenMax(mcChip.mcChip4PostOp, 0, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  
	     mcChipSetupIdle.append(new TweenMax(mcChip.mcChip5PostOp, 0, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  
		 
		//mcChipSurgery
		var mcChipIdle = new TimelineMax( { repeat: -1, yoyo:false } );
	     mcChipIdle.append(new TweenMax(mcChip.mcChip1, 1.5, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip5PostOp, .3, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  //fade out previous
		 mcChipIdle.append(new TweenMax(mcChip.mcChip1PostOp, .1, { scaleX:.35, scaleY:.35, alpha:1, ease:Sine.easeInOut, onComplete:closeSurgeryAni  } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip1, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut, onComplete:openSurgeryAni  } )); //wait time
		 mcChipIdle.append(new TweenMax(mcChip.mcChip1, .5, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } )); //fade out detail
		 
	     mcChipIdle.append(new TweenMax(mcChip.mcChip2, 1.5, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip1PostOp, .1, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  //fade out previous
		 mcChipIdle.append(new TweenMax(mcChip.mcChip2PostOp, .1, { scaleX:.35, scaleY:.35, alpha:1, ease:Sine.easeInOut, onComplete:closeSurgeryAni  } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip2, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut, onComplete:openSurgeryAni  } )); //wait time
		 mcChipIdle.append(new TweenMax(mcChip.mcChip2, .5, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } )); //fade out detail
		 
	     mcChipIdle.append(new TweenMax(mcChip.mcChip3, 1.5, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip2PostOp, .1, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  //fade out previous
		 mcChipIdle.append(new TweenMax(mcChip.mcChip3PostOp, .1, { scaleX:.35, scaleY:.35, alpha:1, ease:Sine.easeInOut, onComplete:closeSurgeryAni  } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip3, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut, onComplete:openSurgeryAni  } )); //wait time
		 mcChipIdle.append(new TweenMax(mcChip.mcChip3, .5, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } )); //fade out detail
		 
	     mcChipIdle.append(new TweenMax(mcChip.mcChip4, 1.5, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip3PostOp, .1, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  //fade out previous
		 mcChipIdle.append(new TweenMax(mcChip.mcChip4PostOp, .1, { scaleX:.35, scaleY:.35, alpha:1, ease:Sine.easeInOut, onComplete:closeSurgeryAni  } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip4, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut, onComplete:openSurgeryAni  } )); //wait time
		 mcChipIdle.append(new TweenMax(mcChip.mcChip4, .5, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } )); //fade out detail
		 
	     mcChipIdle.append(new TweenMax(mcChip.mcChip5, 1.5, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip4PostOp, .1, { scaleX:.35, scaleY:.35, alpha:0, ease:Sine.easeInOut } ));  //fade out previous
		 mcChipIdle.append(new TweenMax(mcChip.mcChip5PostOp, .1, { scaleX:.35, scaleY:.35, alpha:1, ease:Sine.easeInOut, onComplete:closeSurgeryAni  } ));  
		 mcChipIdle.append(new TweenMax(mcChip.mcChip5, 4, { scaleX:1.0, scaleY:1.0, alpha:1, ease:Sine.easeInOut, onComplete:openSurgeryAni  } )); //wait time
		 mcChipIdle.append(new TweenMax(mcChip.mcChip5, .5, { scaleX:1.0, scaleY:1.0, alpha:0, ease:Sine.easeInOut } )); //fade out detail
		 
		function closeSurgeryAni ():void {
			trace("closeSurgeryAni ");
			mcChip.gotoAndPlay(6);
		}			
		
		function  openSurgeryAni ():void {
			trace("openSurgeryAni");
			mcChip.gotoAndPlay(70);
		}	

		
        //mcActiveAndQRCode
		var mcActiveAndQRCodeIdle = new TimelineMax( { repeat: -1, yoyo:true } );
        mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR1O, 0, { scaleX:1.0, scaleY:1.0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR2O, 0, { scaleX:1.0, scaleY:1.0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR3O, 0, { scaleX:1.0, scaleY:1.0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
        mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR1O, .2, { scaleX:1.1, scaleY:1.1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR2O, .2, { scaleX:1.1, scaleY:1.1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR3O, .2, { scaleX:1.1, scaleY:1.1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
        mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR1I, .4, { scaleX:0.95, scaleY:0.95, alpha:1, tint:rgbPink, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR2I, .2, { scaleX:0.95, scaleY:0.95, alpha:1, tint:rgbPink, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR3I, .1, { scaleX:0.95, scaleY:0.95, alpha:1, tint:rgbPink, ease:Sine.easeInOut, onComplete:scanQRCode } ));  
        mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR1O, .2, { scaleX:1.0, scaleY:1.0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR3O, .2, { scaleX:1.0, scaleY:1.0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR2O, .2, { scaleX:1.0, scaleY:1.0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  

		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4O, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4a, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4b, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
         mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4c, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4d, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut  } ));  
		 
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4O, 4, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  //wait time while scan animation runs

		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4O, .2, { scaleX:0, scaleY:0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4a, .2, { scaleX:0, scaleY:0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4b, .2, { scaleX:0, scaleY:0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
         mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4c, .2, { scaleX:0, scaleY:0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4d, .2, { scaleX:0, scaleY:0, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } )); 
		 
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4b, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
         mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4c, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4O, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
		 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4a, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } ));  
     	 mcActiveAndQRCodeIdle.append(new TweenMax(mcTabletScreens.mcActiveAndQRCode.mcQR4d, .2, { scaleX:1, scaleY:1, alpha:1, tint:rgbGreen, ease:Sine.easeInOut } )); 
		 
		function  scanQRCode ():void {
			trace("scanQRCode");
			mcTabletScreens.mcActiveAndQRCode.mcScanAni.gotoAndPlay(2);
		}	

		 //mcBodyDataPointsMover
		var mcBodyDataPointsMoverIdle = new TimelineMax( { repeat: -1, yoyo:false } );	
						//mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, 6, { y:-200, ease:Sine.easeOut} ));             
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, 3, { y:-200, ease:Sine.easeOut} )); 
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, .1, { y:200, tint:rgbGreen} ));
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, 3, { y:-200, ease:Sine.easeOut} )); 
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, .1, { y:200, tint:rgbPink} ));
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, 3, { y: -200, ease:Sine.easeOut } )); 
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, .1, { y:200, tint:rgbDark} ));
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, 3, { y: -200, ease:Sine.easeOut } )); 
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, .1, { y:200, tint:rgbOrange} ));
		                 mcBodyDataPointsMoverIdle.append(new TweenMax(mcBodyData.mcBodyDataPointsMover, 3, { y: -200, ease:Sine.easeOut } )); 
						 
						 
		//mcBodyDataIdleDots
		var mcBodyDataIdleDots = new TimelineMax( { } );
		mcBodyDataIdleDots.insertMultiple([new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S37, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut}),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S38, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S39, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S40, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S41, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S42, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S43, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S44, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S45, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S46, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S47, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S48, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S49, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S50, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S51, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S52, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S53, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S54, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S55, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S56, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S57, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S58, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S59, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S60, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S61, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S62, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S63, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S64, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S65, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S66, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S67, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S68, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S69, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S70, 0, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } )],
						0,
                        TweenAlign.START,
                        0);
						
		var mcBodyDataIdleDotsFader = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:.5 } );
		mcBodyDataIdleDotsFader.insertMultiple([
		                new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S37, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut}),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S38, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S39, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S40, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S41, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S42, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S43, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S44, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S45, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S46, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S47, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S48, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S49, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S50, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S51, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S52, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S53, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S54, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S55, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S56, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S57, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S58, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S59, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S60, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S61, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S62, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S63, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S64, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S65, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S66, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S67, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S68, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S69, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S70, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:1, tint:rgbWhite, ease:Sine.easeInOut } ),
		                new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S37, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut}),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S38, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S39, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S40, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S41, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S42, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S43, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S44, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S45, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S46, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S47, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S48, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S49, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S50, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S51, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S52, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S53, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S54, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S55, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S56, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S57, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S58, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S59, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S60, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S61, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S62, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S63, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S64, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S65, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S66, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S67, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S68, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
						new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S69, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } ),
                        new TweenMax(mcBodyData.mcBodyDotsFader1.mcBD1S70, BodyDataFadeSpeed, { scaleX:1.6, scaleY:1.6, alpha:0, tint:rgbWhite, ease:Sine.easeInOut } )],
						
						
						0.1,
                        TweenAlign.START,
                        0.1);
		
		
        //mcCellSignalTower
		var mcCellSignalTowerIdle = new TimelineMax( { repeat: -1, yoyo:true } );
		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalDot, 0, { tint:rgbPink} ));  //set inactive color	
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalPhone, 0, { tint:rgbPink} ));  //set inactive color	
		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalDot, 0, { alpha:1} ));  //wait time to begin ani		
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalPhone, 1, { alpha:1 } ));  //wait time to begin ani

		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandL1, .4, { alpha: 0, ease:Sine.easeIn  } ));  //sig low	
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandL2, .4, { alpha: 0, ease:Sine.easeIn  } ));  //sig low	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandL3, .4, { alpha: 0, ease:Sine.easeIn  } ));  //sig low	
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandR1, .4, { alpha: 0, ease:Sine.easeIn  } ));  //sig low	
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandR2, .4, { alpha: 0, ease:Sine.easeIn  } ));  //sig low	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandR3, .4, { alpha: 0, ease:Sine.easeIn  } ));  //sig low	
		
		 mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars4, .5, { alpha:0 } ));  //wait time to begin ani
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars3, .5, { alpha:0 } ));  //wait time to begin ani		
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars2, .5, { alpha:0 } ));  //wait time to begin ani		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars1, .5, { alpha:0 } ));  //wait time to begin ani		
        
        
       
		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier1, 0, { alpha:0 } ));  //wait time to begin ani		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier2, 0, { alpha:0 } ));  //wait time to begin ani		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier3, 0, { alpha:0 } ));  //wait time to begin ani		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier4, 0, { alpha:0 } ));  //wait time to begin ani		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier5, 0, { alpha:0 } ));  //wait time to begin ani
		
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalPhone, 1, { alpha:1 } ));  //phone appears
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalDot, .5, { alpha:1} ));  //wait time to begin ani		
		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars1, .4, { alpha:1 } )); 
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars2, .4, { alpha:1 } ));  
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandL1, .4, { alpha: 1, ease:Sine.easeIn  } ));  //sig low	
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandL2, .4, { alpha: 1, ease:Sine.easeIn  } ));  //sig low	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandL3, .4, { alpha: 1, ease:Sine.easeIn  } ));  //sig low	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars3, .4, { alpha:1 } ));  
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars4, .4, { alpha:1 } )); 
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandR1, .4, { alpha: 1, ease:Sine.easeIn  } ));  //sig low	
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandR2, .4, { alpha: 1, ease:Sine.easeIn  } ));  //sig low	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandR3, .4, { alpha: 1, ease:Sine.easeIn  } ));  //sig low	
		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier1, .2, { alpha:1 } ));  	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier2, .2, { alpha:1 } )); 	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier3, .2, { alpha:1 } ));  	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier4, .2, { alpha:1 } )); 
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier5, .2, { alpha:1 } )); 
		
/*
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars1, .4, { alpha:0 } )); 
		        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandLow, .4, { alpha:0 } ));  //sig low	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars2, .4, { alpha:0 } ));  
                mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandMid, .4, { alpha:0 } ));  //sig mid		
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars3, .4, { alpha:0 } ));  
               mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalExpand.mcCellSignalExpandFull, .4, { alpha:0 } ));  //sig high
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBars.mcCellSignalBars4, .4, { alpha:0 } )); */
		
		
		                                                                 //maybe bring phone up to ear
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalPhone, 1, { tint:rgbBlue, alpha:1 } ));  //change phone to active color
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalDot, 1, { tint:rgbBlue, alpha:1 } ));  //change tower to active color
		
		mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalDot, 5, { tint:rgbBlue, alpha:1 } ));  //wait time for yoyo doubled

        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier1, .2, { alpha:0} ));  	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier2, .2, { alpha:0 } )); 	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier3, .2, { alpha:0 } ));  	
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier4, .2, { alpha:0} )); 
        mcCellSignalTowerIdle.append(new TweenMax(mcCellSignalTower.mcCellSignalBarrier.mcCellSignalBarrier5, .2, { alpha:0} )); 
		
		
		
		//mcForkArrowsUp
		var mcForkArrowsUpIdle = new TimelineMax( { repeat: -1, yoyo:false, repeatDelay:1.5 } );
        mcForkArrowsUpIdle.append(new TweenMax(mcForkArrows.mcForkArrowsUp, 0, {y:-18.5 } ));  //original pos y
		        mcForkArrowsUpIdle.append(new TweenMax(mcForkArrows.mcForkArrowsUp, .3, {y:-28.5, ease:Sine.easeOut  } ));  //original pos y
        mcForkArrowsUpIdle.append(new TweenMax(mcForkArrows.mcForkArrowsUp, .3, {y:-18.5, ease:Sine.easeIn  } ));  //original pos y
		        mcForkArrowsUpIdle.append(new TweenMax(mcForkArrows.mcForkArrowsUp, .3, {y:-28.5, ease:Sine.easeOut  } ));  //original pos y
        mcForkArrowsUpIdle.append(new TweenMax(mcForkArrows.mcForkArrowsUp, .3, { y: -18.5, ease:Sine.easeIn  } ));  //original pos y
		
		
		//mcForkArrowsDn
		var mcForkArrowsDnIdle = new TimelineMax( { repeat: -1, yoyo:false, repeatDelay:1.5 } );
		mcForkArrowsDnIdle.append(new TweenMax(mcForkArrows.mcForkArrowsDn, 0, { y:18.45 } ));   //original pos y
		       mcForkArrowsDnIdle.append(new TweenMax(mcForkArrows.mcForkArrowsDn, .3, { y:32.45, ease:Sine.easeOut  } ));   //original pos y
		mcForkArrowsDnIdle.append(new TweenMax(mcForkArrows.mcForkArrowsDn, .3, { y:18.45, ease:Sine.easeIn  } ));   //original pos y
		       mcForkArrowsDnIdle.append(new TweenMax(mcForkArrows.mcForkArrowsDn, .3, { y:32.45, ease:Sine.easeOut  } ));   //original pos y
		mcForkArrowsDnIdle.append(new TweenMax(mcForkArrows.mcForkArrowsDn, .3, { y:18.45, ease:Sine.easeIn  } ));   //original pos y
		
		
		//mcAggressors
		var mcAggressorsIdle = new TimelineMax( { repeat: -1, yoyo:false } );
		
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPre, 0, { alpha:0 } ));  //hide 
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPreFlash, 0, { alpha:0 } ));  //hide 
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPost, 0, { alpha:0 } ));  //hide 
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueMurderDeathKill, 0, { alpha:0 } ));  //hide 	
		
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPre, 1, { alpha:1 } ));  //bring
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPre, 5, { alpha:1 } ));  //hold 
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPreFlash, .2, { alpha:1 , repeat:7 } ));  //flash 
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPre, .1, { alpha:0 } ));  //hide 
        mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPreFlash, .1, { alpha:0} ));  //flash 
		
		
		
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPost, .1, { alpha:1 } ));  //bring
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPost, 5, { alpha:1 } ));  //hold 
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueBombPost, .5, { alpha:0 } ));  //hide 
		
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueMurderDeathKill, 1, { alpha:1 } ));  //bring

				mcAggressorsIdle.append(new TweenMax(mcAggressors.mcAggressorShooter.mcBullet, 0, { alpha:0 } ));  //hide bullet
				mcAggressorsIdle.append(new TweenMax(mcAggressors.mcAggressorShooter, .2, { alpha:1, onComplete:beginAggression } ));  //wait time to begin ani
				mcAggressorsIdle.append(new TweenMax(mcAggressors.mcAggressorShooter.mcBullet, 1, { alpha:1 } ));  //allow aggression
				mcAggressorsIdle.append(new TweenMax(mcAggressors.mcAggressorShooter, 16, { alpha:1 } ));  //allow aggression
				mcAggressorsIdle.append(new TweenMax(mcAggressors.mcAggressorShooter.mcBullet, 1,{ alpha:0, onComplete:breakAggression} ));  //break aggression
				mcAggressorsIdle.append(new TweenMax(mcAggressors.mcAggressorShooter, 1, { alpha:1 } ));  //break aggression
		
		mcAggressorsIdle.append(new TweenMax(mcAggressors.mcSpeakBlueMurderDeathKill, .5, { alpha:0 } ));  //hide 
		

		function beginAggression ():void {
			trace("aggression! ");
			mcAggressors.mcAggressorShooter.gotoAndPlay(2);
			mcAggressors.mcAggressorShooter.mcBullet.gotoAndPlay(2);
		}			
		
		function  breakAggression ():void {
			mcAggressors.mcAggressorShooter.gotoAndPlay(20);
			mcAggressors.mcAggressorShooter.mcBullet.gotoAndStop(1);
		}	
		
		
		//mcEndOfWorldData
/*		var mcEndOfWorldDataIdle = new TimelineMax( { repeat: -1, yoyo:false } );
        mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData, .5, { alpha:1 } ));  //wait time to begin ani
		
		
        mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData.mcEOWDP, 0, { alpha:1 } ));  //set alpha for group
		        mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData.mcEOWDG, 0, { alpha:1 } ));  //set alpha for group
				        mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData.mcEOWDW, 0, { alpha:1 } ));  //set alpha for group
						        mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData.mcEOWDB, 0, { alpha:1 } ));  //set alpha for group
								        mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData.mcEOWDO, 0, { alpha:1 } ));  //set alpha for group
										
										 mcEndOfWorldDataIdle.append(new TweenMax(mcEndOfWorldData.mcEOWDots, 0, { alpha:1 } ));  //set alpha for group*/
										 
var mcEndOfWorldDataIdleEOWDO = new TimelineMax( { repeat: -1, yoyo:true } );
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO1, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO2, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO3, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO4, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO5, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO6, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO7, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO8, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO9, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO10, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO11, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO12, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO13, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO14, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO15, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO16, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO17, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO18, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO19, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO20, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO21, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO22, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO23, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO24, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO25, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO26, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO27, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDO.append(new TweenMax(mcEndOfWorldData.mcEOWDO.mcEOWDO28, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
		
										 
var mcEndOfWorldDataIdleEOWDW = new TimelineMax( { repeat: -1, yoyo:true } );
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW1, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW2, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW3, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW4, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW5, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW6, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW7, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW8, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW9, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW10, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW11, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW12, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW13, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW14, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW15, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW16, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW17, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW18, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW19, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW20, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW21, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW22, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW23, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW24, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW25, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW26, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW27, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW28, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDW.append(new TweenMax(mcEndOfWorldData.mcEOWDW.mcEOWDW29, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } ));
		
    var mcEndOfWorldDataIdleEOWDP = new TimelineMax( { repeat: -1, yoyo:true } );
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP1, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP2, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP3, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP4, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP5, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP6, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP7, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP8, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP9, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP10, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP11, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP12, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP13, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP14, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP15, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP16, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP17, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP18, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
       mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP19, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP20, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP21, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP22, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP23, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP24, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP25, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP26, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP27, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP28, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP29, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
 /*        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP30, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP31, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP32, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP33, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP34, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP35, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP36, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP37, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP38, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP39, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP40, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 	
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP41, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP42, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP43, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP44, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP45, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP46, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP47, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP48, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP49, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP50, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP51, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } ));*/
		
		
/*    var mcEndOfWorldDataIdleEOWDP = new TimelineMax( { repeat: -1, yoyo:true } );
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP1, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP2, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP3, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP4, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP5, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP6, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP7, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP8, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP9, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP10, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP11, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP12, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP13, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP14, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP15, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP16, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP17, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP18, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP19, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP20, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP21, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP22, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP23, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP24, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP25, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP26, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP27, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP28, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP29, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP30, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP31, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP32, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP33, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP34, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP35, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP36, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP37, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP38, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP39, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP40, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 	
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP41, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP42, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP43, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP44, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP45, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP46, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP47, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP48, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP49, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP50, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDP.append(new TweenMax(mcEndOfWorldData.mcEOWDP.mcEOWDP51, dataEOWDInSpeed, { alpha:1, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } ));
*/
   var mcEndOfWorldDataIdleEOWDG = new TimelineMax( { repeat: -1, yoyo:true } );
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG1, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG2, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG3, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG4, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG5, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG6, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG7, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG8, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG9, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG10, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG11, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG12, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG13, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG14, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG15, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG16, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG17, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG18, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG19, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG20, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG21, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG22, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG23, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG24, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG25, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG26, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG27, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG28, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG29, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG30, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG31, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG32, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG33, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG34, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG35, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG36, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 		
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG37, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG38, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG39, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
        mcEndOfWorldDataIdleEOWDG.append(new TweenMax(mcEndOfWorldData.mcEOWDG.mcEOWDG40, dataEOWDInSpeed, { alpha: 0, rotation:dataEOWDInRotation, ease:dataEOWDInEaseType } )); 
		


		//mcPlanetDestruction
		var mcPlanetDestructionIdle = new TimelineMax( { repeat: -1, yoyo:false } );
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase1,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase2,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase3,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase4,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase5,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase6,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase7,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase8,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase9,  0, { alpha:0 } ));  //setup alpha
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase10, 0, { alpha:0 } ));  //setup alpha
		
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase1,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase1,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase1,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase2,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase2,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase2,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase3,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase3,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase3,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase4,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase4,  planetDestructionSpeedWait, { alpha:6 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase4,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out

        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase5,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase5,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase5,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase6,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase6,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase6,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		
/*        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase7,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase7,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase7,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		*/
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase8,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase8,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase8,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out

        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase9,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase9,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase9,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out
		
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase10,  planetDestructionSpeedTransitionIn, { alpha:1 } ));  //fade in
		mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase10,  planetDestructionSpeedWait, { alpha:1 } ));  //phase wait
        mcPlanetDestructionIdle.append(new TweenMax(mcPlanetDestruction.mcPlanetDestructionPhase10,  planetDestructionSpeedTransitionOut, { alpha:0 } ));  //fade out

		

			
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
		//BEGIN IDLE ANIMATION TIMELINES - ANIMATIONS THAT WILL RUN AND REPEAT DESPITE ANY INTERACTIVITY
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		


		
		
		




		
		//mcHologramBuddy
		var mcHologramBuddyIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:0 } );
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 0, { scaleY:.1, alpha:0} ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramHandBase, 2, { scaleX:1.2, scaleY:1.2, alpha:1, ease:Elastic.easeIn} ));
		//mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramHandBase, .2, { scaleX:1, scaleY:1, alpha:1, ease:Elastic.easeOut } ));

		//setup removeData alpha
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData1, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData2, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData3, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData4, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData5, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData6, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData7, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData8, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData9, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData10, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData11, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData12, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData13, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData14, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData15, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData16, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData17, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData18, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData19, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData20, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData21, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData22, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData23, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData24, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData25, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData26, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData27, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData28, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData29, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));	
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData30, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData31, 0, { rotation:dataRotationTablet, alpha:0, ease:dataEase } ));	
		
	
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData1, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData2, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData3, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData4, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData5, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData6, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData7, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData8, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData9, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData10, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData11, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData12, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData13, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData14, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData15, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData16, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData17, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData18, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed		
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData19, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData20, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData21, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData22, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData23, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData24, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData25, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData26, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData27, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData28, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));		
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData29, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed	
						mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData30, hologramDataIn, { rotation:dataRotationHologram, alpha:0, ease:dataEase } ));//jon removed		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramData31, hologramDataIn, { rotation:dataRotationHologram, alpha:1, ease:dataEase } ));

		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, .2, { scaleY:1, alpha:.7, ease:Elastic.easeOut } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 1, { blurFilter:{blurX:0} } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 1, { blurFilter: { blurX:0 } } ));
		
		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 3, { rotationY:0, alpha:.85, ease:Sine.easeInOut } ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 1, { blurFilter: { blurX:0 } } ));
		
		
/*mcHologramBuddyIdle.appendMultiple([new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 2, { rotationY:360, alpha:.85, ease:Sine.easeInOut }),
                                    new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 0, { blurFilter:{blurX:0} }),
									new TweenMax(mcHologramHandBase, 1, {alpha:0.5})],
									1,
									TweenAlign.START,
									0.2);	*/
		
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 1, { rotationY:0, alpha:.85, blurFilter:{blurX:0} } ));
		//mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 2, { transformMatrix: { scaleY:1, alpha:1, ease:Elastic.easeOut }} ));
		mcHologramBuddyIdle.append(new TweenMax(mcHologramBuddy.mcHologramBuddyHuman, 5, {  alpha:1, ease:Sine.easeInOut }));
		
		
	    //mcMonitorScreens
		var mcMonitorScreensIdle = new TimelineMax( { repeat: -1, yoyo:false } );
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensFrame, 0, {alpha:1} ));
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensDay, 0, {alpha:0} ));
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensNight, 0, { alpha:0 } ));
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensRandom, 0, {alpha:0} ));
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensGalaga, 0, { alpha:0 } ));

						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensNight, 3, {alpha:0} )); //wait time for screen start
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensNight, 1, { alpha:1 } )); // fade in screen
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensNight, 3, { alpha:1 } )); // wait time for screen night
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensDay, 0, { alpha:1 } )); // have day ready in bg
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensNight, 1, { alpha:0 } )); //fade to day
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensDay, 3, { alpha:1 } )); // wait time for screen day
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensDay, 1, {alpha:0} )); //fade to screensaver data
						
						
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensRandom, 3, {alpha:0} )); //wait time for screensaver data
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensRandom, 1, { alpha:1 } )); // fade in screen
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensRandom, 3, { alpha:1 } )); //wait time keep screen
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensRandom, 1, {alpha:0} )); //fade to screensaver data
						
						
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensGalaga, 3, {alpha:0} )); //wait time for screensaver data
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensGalaga, 1, { alpha:1 } )); // fade in screen
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensGalaga, 3, { alpha:1 } )); //wait time keep screen
						mcMonitorScreensIdle.append(new TweenMax(mcMonitorScreens.mcMonitorScreensGalaga, 1, {alpha:0} )); //fade to screensaver data
						 
	    //mcMonitorData
		var mcMonitorDataIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:5 } );
		                mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataW3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataB1, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataB2, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataB3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataB4, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO1, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO2, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
					    mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataP1, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataP2, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));	
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataP3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataP4, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataP5, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));		
						
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO1, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1 , ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO2, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataO3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataW1, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataW2, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataG1, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataG2, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));	
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataG3, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataG4, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						mcMonitorDataIdle.append(new TweenMax(mcMonitorData.mcMonitorDataG5, dataSpeedMonitor, { rotation:dataRotationMonitor, alpha:1, ease:Sine.easeInOut } ));
						 
	    //mcTabletScreens
		var mcTabletScreensIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:5 } );
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenFrame, 0, {alpha:1} ));
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage, 0, {alpha:0} ));
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenApp, 0, { alpha:0 } ));
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenAlienFace, 0, {alpha:0} ));
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenCatFace, 0, { alpha:0 } ));
						
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage, 3, {alpha:0} )); //wait time for doc and app animations
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage, 1, { alpha:1 } )); // fade  in home page and dock
						
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, 0, { alpha:0, scaleY:1,  scaleX:1,  y:25.25 , ease:Sine.easeOut } )); 
						
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenBackground, .2, { alpha:1} )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:1, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .2, { alpha:1, scaleY:1,  scaleX:1,  y:17.35, ease:Sine.easeOut  } )); 
						
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, 3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35, ease:Sine.easeOut  } ));  //hold home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:0, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .4, { alpha:1, scaleY:1.8,  scaleX:1.8,  y:-22, ease:Sine.easeOut } )); // fade  in home page and dock
						
						//show AlienApp
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenAlienFace, .4, { alpha:1 } )); // fade  in alien app
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenAlienFace, 4, { alpha:1 } )); // hold on alien app
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenAlienFace, .2, { alpha:0 } )); // close  alien app
						
						// return to home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35 , ease:Sine.easeOut } ));  //fade in home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:1, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut  } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, 3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35 , ease:Sine.easeOut } ));  //hold home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:0, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .4, { alpha:1, scaleY:1.8,  scaleX:1.8,  y: -22, ease:Sine.easeOut  } )); // fade  in home page
						
						//show CatApp
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenCatFace, .4, { alpha:1 } )); // fade  in cat app
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenCatFace, 4, { alpha:1 } )); // hold on cat app
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenCatFace, .2, { alpha:0 } )); // close  cat app
						
						// return to home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35 , ease:Sine.easeOut } ));  //fade in home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:1, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut  } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, 3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35 , ease:Sine.easeOut } ));  //hold home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:0, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .4, { alpha:1, scaleY:1.8,  scaleX:1.8,  y: -22, ease:Sine.easeOut  } )); // fade  in home page
						
						//show RandomApp
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenApp, .4, { alpha:1 } )); // fade  in random app
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenApp, 4, { alpha:1 } )); // hold on random app
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenApp, .2, { alpha:0 } )); // close  random app
						
						// return to home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35, ease:Sine.easeOut } ));  //fade in home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:1, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut  } )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, 3, { alpha:1, scaleY:1,  scaleX:1,  y:17.35 } ));  //hold home screen
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, .2, { alpha:0, scaleY:1,  scaleX:1,  y:22.25, ease:Sine.easeOut } )); 
						
						//turn off tablet - back to data animation
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenDock, 1, { alpha:1, scaleY:1,  scaleX:1,  y:25.25 , ease:Sine.easeOut } )); // shut off tablet
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenApplications, .2, { alpha:0, scaleY:1,  scaleX:1,  y:17.35 } ));   // shut off tablet
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenBackground, 1, { alpha:0 } )); // shut off tablet
						
						
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenBackground, .3, { alpha:0} )); 
						mcTabletScreensIdle.append(new TweenMax(mcTabletScreens.mcTabletScreenHomePage.mcTabletHomeScreenBackground, 1, { alpha:0} )); // hold on default data animation

						
					 //mcUploadArrow
		             var mcUploadArrowIdle = new TimelineMax( { repeat: -1, yoyo:false, repeatDelay:3.5 } );
					 mcUploadArrowIdle.append(new TweenMax(mcUploadArrow, 1, { tint:rgbPink } ));   //active color
		             mcUploadArrowIdle.append(new TweenMax(mcUploadArrow.mcUploadArrowUp, 0, { y:-7.15 } ));   //original pos y
		             mcUploadArrowIdle.append(new TweenMax(mcUploadArrow.mcUploadArrowUp, .3, { y:-12.25, ease:Sine.easeOut  } ));   //original pos y
		             mcUploadArrowIdle.append(new TweenMax(mcUploadArrow.mcUploadArrowUp, .3, { y: -7.15, ease:Sine.easeIn  } ));   //original pos y
					 mcUploadArrowIdle.append(new TweenMax(mcUploadArrow, 1, { tint:rgbBlue } ));   //original color
					 
					 //mcGoogleGlass
		             var mcGoogleGlassIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:3.5 } );
					 mcGoogleGlassIdle.append(new TweenMax(mcGoogleGlass.mcGoogleGlassLightLeft, 1, { tint:rgbBlue } ));   //original color
					 mcGoogleGlassIdle.append(new TweenMax(mcGoogleGlass.mcGoogleGlassLightRight, 1, { tint:rgbPink } ));   //original color
					 
					 mcGoogleGlassIdle.append(new TweenMax(mcGoogleGlass.mcGoogleGlassLightLeft, .3, { tint:rgbOrange , repeat:4} ));   //active color
					 mcGoogleGlassIdle.append(new TweenMax(mcGoogleGlass.mcGoogleGlassLightRight, .3, { tint:rgbGreen } ));   //active color
					 mcGoogleGlassIdle.append(new TweenMax(mcGoogleGlass.mcGoogleGlassLightRight, 3, { tint:rgbGreen} ));   //wait time
						
	    //mcTabletData
		var mcTabletDataIdle = new TimelineMax( { repeat: -1, yoyo:true, repeatDelay:5 } );
		                mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataB2, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataO1, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataO2, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataO3, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
		
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataB1, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						//mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataB2, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataB3, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataP1, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1 } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataP2, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataP3, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataW1, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataW2, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
		
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataG1, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));
						mcTabletDataIdle.append(new TweenMax(mcTabletData.mcTabletDataG2, dataSpeedTablet, { rotation:dataRotationTablet, alpha:1, ease:Sine.easeInOut } ));		
						
		//mcBatteryAndPhone
        var mcBatteryAndPhoneIdle = new TimelineMax( { repeat: -1, yoyo:false, repeatDelay:1 } );
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensGSAP, .1, {alpha:1}));
						//init  smartphone texting
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensTexting, 0, { alpha:0 } ));
						//init  smartphone weather app
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensWeather,  0, { alpha:0 } ));
						//init  smartphone pong
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensPong, 0, { alpha:0 } ));
						//init  smartphone random
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensRandom, 0, { alpha:0 } ));					
						
						//show  smartphone texting
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensTexting, 1, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensTexting, 8, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensTexting, .5, { alpha:0 } ));
						//show  smartphone weather app
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensWeather, 1, {alpha:1}));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensWeather, 5, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensWeather,  .5, { alpha:0 } ));
						//show  smartphone pong
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensPong, 1, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensPong, 10, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensPong, .5, { alpha:0 } ));
						//show  smartphone random
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensRandom ,1, {alpha:1}));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensRandom, 4, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcPhoneScreens.mcPhoneScreensRandom, .5, { alpha:0 } ));
						
						//drain battery
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel5, 4, { alpha:0 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel4, 4, { alpha:0 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel3, 4, { alpha:0 } ));
						
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, 2, {tint:rgbPink,rotation:90, alpha:1, ease:Sine.easeInOut}));
						
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, .3, { alpha:.7 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData2, .3, { alpha:.7 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData3, .3, { alpha:.7 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, .3, { alpha:.7 } ));
						
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, 2, {tint:rgbGreen,rotation:90, alpha:1, ease:Sine.easeInOut}));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel2, 4, { alpha:0 } ));
						
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, .3, { alpha:.5 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData2, .3, { alpha:.5 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData3, .3, { alpha:.5 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, .3, { alpha:.5 } ));
						
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel1, 4, { alpha:0 } ));
						
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, .1, { scaleY:0.1, alpha:.0, ease:Elastic.easeOut } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, .1, { scaleY:0.1, alpha:.0,  ease:Elastic.easeOut } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData2, .3, { scaleY:0.1, ease:Elastic.easeOut} ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData3, .1, { scaleY:0.1, ease:Elastic.easeOut} ));

								
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, .2, { alpha:.0 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData2, .2, { alpha:.0 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData3, .1, { alpha:.0 } ));
								mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, .1, { alpha:.0 } ));
								
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel1, .5, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel2, .5, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel3, .5, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel4, .5, { alpha:1 } ));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcBatteryLevel5, .5, { alpha:1 } ));
						
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData2, 4, {scaleY:1, alpha:1}));		
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData2, 3, {transformMatrix:{rotation:720, alpha:1, ease:Sine.easeInOut}}));
						
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, .1, {tint:rgbGreen,rotation:0, alpha:0, ease:Sine.easeInOut}));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, .1, { tint:rgbBlue, rotation:0, alpha:0, ease:Sine.easeInOut } ));
						
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData1, .2, {scaleY:1,rotation:360, alpha:1, ease:Sine.easeInOut}));
						mcBatteryAndPhoneIdle.append(new TweenMax(mcBatteryAndPhone.mcPhoneData4, .2, { scaleY:1, rotation:360, alpha:1, ease:Sine.easeInOut } ));
						
						

			
			
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//GLOBAL REMOTE CONTROLER OF NESTED TIMELINES - CONTROL ALL DELAYS HERE
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		//var remoteControlGlobal = new TimelineMax( {repeat:2, yoyo:true, repeatDelay:1.5 } );
		

		
		

			
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//END THE ANIMATION PACKAGE FUNCTION
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
	//---------------------------------------------------------------------------------------------------------------------------------//

	
	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//INITIALIZE THE ANIMATION PACKAGE
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	
	private function init(e:Event):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
 			//replay_btn.addEventListener(MouseEvent.CLICK, replay);
			mcOpenRotatorOver.addEventListener(MouseEvent.CLICK, clickOpenRotator);
			mcOpenRotatorOver.addEventListener(MouseEvent.MOUSE_OVER, overOpenRotator);
			mcFlyContainerIndependant.mcFlyContainerOver.addEventListener(MouseEvent.MOUSE_OVER, overFlyContainer);
			//mcManAndMachine.mcMandMan.mcManAndMachineManOver(MouseEvent.MOUSE_OVER, overManAndMachineManOver);
			//mcManAndMachine.mcMandMachine.mcManAndMachineMachineOver(MouseEvent.MOUSE_OVER, overManAndMachineMachineOver);
			//clickTagHit.addEventListener(MouseEvent.MOUSE_OVER, activate);
			//clickTagHit.addEventListener(MouseEvent.MOUSE_OUT, deactivate);
			//fullbtn.addEventListener(MouseEvent.CLICK, fullScreen); 
			//constructor
			//rotatorsAni = new TimelineLite( { onUpdate:updateHandler } );
			//satDataBOut = new TimelineMax({onUpdate:updateHandler});
			
			//control panel related
			ControlPanel.mcOpenControlPanel.addEventListener(MouseEvent.CLICK, openControlPanel);
			ControlPanel.mcCloseControlPanel.addEventListener(MouseEvent.CLICK, closeControlPanel);
            
			//buttons for paths
			ControlPanel.btn_showPath0.addEventListener(MouseEvent.CLICK, togglebtn_showPath0);
			ControlPanel.btn_showPath1.addEventListener(MouseEvent.CLICK, togglebtn_showPath1);
			ControlPanel.btn_showPath2.addEventListener(MouseEvent.CLICK, togglebtn_showPath2);
			ControlPanel.btn_showPath3.addEventListener(MouseEvent.CLICK, togglebtn_showPath3);
			ControlPanel.btn_showPath4.addEventListener(MouseEvent.CLICK, togglebtn_showPath4);
			ControlPanel.btn_showPath5.addEventListener(MouseEvent.CLICK, togglebtn_showPath5);
			ControlPanel.btn_showPath6.addEventListener(MouseEvent.CLICK, togglebtn_showPath6);
			ControlPanel.btn_showPath7.addEventListener(MouseEvent.CLICK, togglebtn_showPath7);
			ControlPanel.btn_showPath8.addEventListener(MouseEvent.CLICK, togglebtn_showPath8);
			
			ControlPanel.btn_hidePath0.addEventListener(MouseEvent.CLICK, togglebtn_hidePath0);
			ControlPanel.btn_hidePath1.addEventListener(MouseEvent.CLICK, togglebtn_hidePath1);
			ControlPanel.btn_hidePath2.addEventListener(MouseEvent.CLICK, togglebtn_hidePath2);
			ControlPanel.btn_hidePath3.addEventListener(MouseEvent.CLICK, togglebtn_hidePath3);
			ControlPanel.btn_hidePath4.addEventListener(MouseEvent.CLICK, togglebtn_hidePath4);
			ControlPanel.btn_hidePath5.addEventListener(MouseEvent.CLICK, togglebtn_hidePath5);
			ControlPanel.btn_hidePath6.addEventListener(MouseEvent.CLICK, togglebtn_hidePath6);
			ControlPanel.btn_hidePath7.addEventListener(MouseEvent.CLICK, togglebtn_hidePath7);
			ControlPanel.btn_hidePath8.addEventListener(MouseEvent.CLICK, togglebtn_hidePath8);
			
			//buttons for data traveler layers
			ControlPanel.btn_travelerLayerOn0.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn0);
			ControlPanel.btn_travelerLayerOn1.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn1);
			ControlPanel.btn_travelerLayerOn2.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn2);
			ControlPanel.btn_travelerLayerOn3.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn3);
			ControlPanel.btn_travelerLayerOn4.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn4);
			ControlPanel.btn_travelerLayerOn5.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn5);
			ControlPanel.btn_travelerLayerOn6.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn6);
			ControlPanel.btn_travelerLayerOn7.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn7);
			ControlPanel.btn_travelerLayerOn8.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOn8);
			
			ControlPanel.btn_travelerLayerOff0.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff0);
			ControlPanel.btn_travelerLayerOff1.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff1);
			ControlPanel.btn_travelerLayerOff2.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff2);
			ControlPanel.btn_travelerLayerOff3.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff3);
			ControlPanel.btn_travelerLayerOff4.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff4);
			ControlPanel.btn_travelerLayerOff5.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff5);
			ControlPanel.btn_travelerLayerOff6.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff6);
			ControlPanel.btn_travelerLayerOff7.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff7);
			ControlPanel.btn_travelerLayerOff8.addEventListener(MouseEvent.CLICK, togglebtn_travelerLayerOff8);
			
			
			ControlPanel.btn_todoOn.addEventListener(MouseEvent.CLICK, togglebtn_todoOn);
			ControlPanel.btn_todoOff.addEventListener(MouseEvent.CLICK, togglebtn_todoOff);
			
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//END THE ANIMATION PACKAGE INITIALIZATION FUNCTION
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	}
	//---------------------------------------------------------------------------------------------------------------------------------//

	
	//---------------------------------------------------------------------------------------------------------------------------------//
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	//DECLARE INTERACTIVE FUNCTIONS
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
		//adjust the progress bar
		private function updateHandler():void{
		//progress_mc.scaleX = rotatorsAni.currentProgress;
		}			 

		function satDataBremove():void{
		//satDataPOut.restart();
		}	
		function satDataPremove():void{
		//satDataPOut.restart();
		}		
		function satDataGremove():void{
		//satDataGOut.restart();
		}		
		function satDataWremove():void{
		//satDataWOut.restart();
		}	
		function satDataOremove():void{
		//satDataOOut.restart();
		}		
		
    //fullbtn.addEventListener(MouseEvent.CLICK, fullScreen); 
	
/*         private function fullScreen(event:MouseEvent):void {
            stage.displayState = StageDisplayState.FULL_SCREEN;
        }*/
		
		private function clickOpenRotator(e:MouseEvent):void{
							TweenMax.to(mcOpenRotator.mcOpenRotatorInner1, .4, {scaleX:.7, scaleY:.7, rotation:720, ease:Sine.easeInOut} );
							TweenMax.to(mcOpenRotator.mcOpenRotatorInner2, .4,  {delay:.1, scaleX:.7, scaleY:.7, rotation:720, ease:Sine.easeInOut  } );	
							TweenMax.to(mcOpenRotator.mcOpenRotatorInner1, 1.6, {delay:.5, scaleX:1, scaleY:1, rotation:270, ease:Cubic.easeInOut } );
							TweenMax.to(mcOpenRotator.mcOpenRotatorInner2, 1.3,  {delay:1, scaleX:1, scaleY:1, rotation:135, ease:Bounce.easeOut  } );	
		}
		private function overOpenRotator(e:MouseEvent):void{
							TweenMax.to(mcOpenRotator.mcOpenRotatorInner1, .7, { rotation:270, ease:Sine.easeOut } );
							TweenMax.to(mcOpenRotator.mcOpenRotatorInner2, 1, { rotation:-135, ease:Sine.easeOut } );	
		}
		
		private function overFlyContainer(e:MouseEvent):void{
							mcFlyContainerIndependant.gotoAndPlay(2);
							mcFlyContainerIndependant.mcFlyContainer.gotoAndPlay(1000);
		}	
		
		private function overManAndMachineManOver(e:MouseEvent):void{
							mcManAndMachine.mcMandMan.gotoAndPlay(200);
							mcManAndMachine.mcMandMachine.gotoAndPlay(200);
		}
		
		private function overManAndMachineMachineOver(e:MouseEvent):void{
							mcManAndMachine.mcMandMan.gotoAndPlay(1500);
							mcManAndMachine.mcMandMachine.gotoAndPlay(1500);
		}	
		
		private var MenuSpeed = .3;	
        private var MenuEaseType = Sine.easeInOut;
		
		private var MenuItemsColumnLeft =  3105;	
		
        private function openControlPanel(e:MouseEvent):void {
		TweenMax.to(ControlPanel.mcOpenControlPanel, 0, { visible:false } );
		TweenMax.to(ControlPanel.mcCloseControlPanel, 0, { visible:true} );
		TweenMax.to(ControlPanel, MenuSpeed, { x:3840, y:1080, ease:Sine.easeInOut } );
		
		//slider controls open
		TweenMax.to(slManualAniFrameRateOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(slManualAniFrameRate, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(mcManualAnimations, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderNanoBotOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderNanoBot, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderWorldDataMaskOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderWorldDataMask, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderDataTravelersCenterOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderDataTravelersCenter, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderDataTravelersLeftOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderDataTravelersLeft, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderBodyDataOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderBodyData, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );

		TweenMax.to(sliderManAndMachineOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderManAndMachine, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderCalmPlaceBeeAndPathOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderCalmPlaceBeeAndPath, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderDateLineMaskColorSwipeOutput, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		TweenMax.to(sliderDateLineMaskColorSwipe, MenuSpeed, { x:MenuItemsColumnLeft, ease:Sine.easeInOut } );
		}		
		
		private function closeControlPanel(e:MouseEvent):void{
		TweenMax.to(ControlPanel.mcOpenControlPanel, 0, { visible:true } );
		TweenMax.to(ControlPanel.mcCloseControlPanel, 0, { visible:false} );
		TweenMax.to(ControlPanel, MenuSpeed, { x:4580, y:1080, ease:Sine.easeInOut } );

		//slider controls closed
		TweenMax.to(slManualAniFrameRateOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(slManualAniFrameRate, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(mcManualAnimations, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderNanoBotOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderNanoBot, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderWorldDataMaskOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderWorldDataMask, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderDataTravelersCenterOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderDataTravelersCenter, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderDataTravelersLeftOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderDataTravelersLeft, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderBodyDataOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderBodyData, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderManAndMachineOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderManAndMachine, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderCalmPlaceBeeAndPathOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderCalmPlaceBeeAndPath, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		
		TweenMax.to(sliderDateLineMaskColorSwipeOutput, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
		TweenMax.to(sliderDateLineMaskColorSwipe, MenuSpeed, { x:3850, ease:Sine.easeInOut } );
	    }
		
		
		
		
		//CONTROL PANEL show paths
		private function togglebtn_showPath0(e:MouseEvent):void{
        TweenMax.to(ControlPanel.btn_showPath0, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath0Display, .3, { alpha:1 } );
		}

		private function togglebtn_showPath1(e:MouseEvent):void{
    	TweenMax.to(ControlPanel.btn_showPath1, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath1Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath2(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_showPath2, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath2Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath3(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_showPath3, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath3Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath4(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_showPath4, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath4Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath5(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_showPath5, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath5Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath6(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_showPath6, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath6Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath7(e:MouseEvent):void{
	   TweenMax.to(ControlPanel.btn_showPath7, .01, { x:300 } );
	   TweenMax.to(mcDataGuidePath7Display, .3, { alpha:1 } );
		}
		
		private function togglebtn_showPath8(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_showPath8, .01, { x:300 } );
		TweenMax.to(mcDataGuidePath8Display, .3, { alpha:1 } );
		}
		
		
		
		//CONTROL PANEL hide paths
		private function togglebtn_hidePath0(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath0, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath0Display, .3, { alpha:0 } );
		}

		private function togglebtn_hidePath1(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath1, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath1Display, .3, { alpha:0 } );
		}
		
		private function togglebtn_hidePath2(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath2, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath2Display, .3, { alpha:0 } );
		}
		
		private function togglebtn_hidePath3(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath3, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath3Display, .3, { alpha:0 } );
		}
		
		private function togglebtn_hidePath4(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath4, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath4Display, .3, { alpha:0 } );
		}
		
		private function togglebtn_hidePath5(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath5, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath5Display, .3, { alpha:0 } );
		}
		
		private function togglebtn_hidePath6(e:MouseEvent):void {
		TweenMax.to(ControlPanel.btn_showPath6, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath6Display, .3, { alpha:0 } );
		
		}

		private function togglebtn_hidePath7(e:MouseEvent):void{
        TweenMax.to(ControlPanel.btn_showPath7, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath7Display, .3, { alpha:0 } );
		}
		
		private function togglebtn_hidePath8(e:MouseEvent):void{
        TweenMax.to(ControlPanel.btn_showPath8, .01, { x:-148.9 } );
		TweenMax.to(mcDataGuidePath8Display, .3, { alpha:0 } );
		}

		
		
		//CONTROL PANEL hide data travelers
		private function togglebtn_travelerLayerOff0(e:MouseEvent):void{
        TweenMax.to(ControlPanel.btn_travelerLayerOn0, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath0, .3, { visible:false } );
		}

		private function togglebtn_travelerLayerOff1(e:MouseEvent):void{
    	TweenMax.to(ControlPanel.btn_travelerLayerOn1, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath1, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff2(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn2, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath2, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff3(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn3, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath3, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff4(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn4, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath4, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff5(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn5, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath5, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff6(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn6, .01, { alpha: .5   } );
		TweenMax.to(mcDataGuidePath6, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff7(e:MouseEvent):void{
	   TweenMax.to(ControlPanel.btn_travelerLayerOn7, .01, { alpha: .5   } );
	   TweenMax.to(mcDataGuidePath7, .3, { visible:false } );
		}
		
		private function togglebtn_travelerLayerOff8(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn8, .01, { alpha: .5  } );
		TweenMax.to(mcDataGuidePath8, .3, { visible:false } );
		}
		
		private function togglebtn_todoOff(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_todoOn, .01, { alpha: .5  } );
		TweenMax.to(mcToDo, .3, { visible:false,  alpha:0    } );
		}

		
		
		//CONTROL PANEL show data travelers
		private function togglebtn_travelerLayerOn0(e:MouseEvent):void{
        TweenMax.to(ControlPanel.btn_travelerLayerOn0, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath0, .3, { visible:true} );
		}

		private function togglebtn_travelerLayerOn1(e:MouseEvent):void{
    	TweenMax.to(ControlPanel.btn_travelerLayerOn1, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath1, .3, { visible:true} );
		}
		
		private function togglebtn_travelerLayerOn2(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn2, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath2, .3, { alpha:1 } );
		}
		
		private function togglebtn_travelerLayerOn3(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn3, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath3, .3, { visible:true } );
		}
		
		private function togglebtn_travelerLayerOn4(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn4, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath4, .3, { visible:true } );
		}
		
		private function togglebtn_travelerLayerOn5(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn5, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath5, .3, { visible:true } );
		}
		
		private function togglebtn_travelerLayerOn6(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn6, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath6, .3, { visible:true } );
		}
		
		private function togglebtn_travelerLayerOn7(e:MouseEvent):void{
	   TweenMax.to(ControlPanel.btn_travelerLayerOn7, .01, { alpha:1  } );
	   TweenMax.to(mcDataGuidePath7, .3, { visible:true } );
		}
		
		private function togglebtn_travelerLayerOn8(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_travelerLayerOn8, .01, { alpha:1  } );
		TweenMax.to(mcDataGuidePath8, .3, { visible:true } );
		}
		
		private function togglebtn_todoOn(e:MouseEvent):void{
		TweenMax.to(ControlPanel.btn_todoOn, .01, { alpha:1  } );
		TweenMax.to(mcToDo, .3, { visible:true,  alpha:1   } );
		}
		
		
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
