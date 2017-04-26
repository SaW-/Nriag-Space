@extends('layouts.app')

@section('content')
<script src="{{asset('Build/Cesium/Cesium.js')}}"></script>
<style>
      @import url({{asset('Build/Cesium/Widgets/widgets.css')}});
 
section {
    width:1200px;
    padding:10px;	 	 
}
footer {
    background-color:black;
    color:white;
    clear:both;
    text-align:center;
    padding:5px;	 	 
}
</style>
<script>

function bigPicture() {
      viewer.trackedEntity = undefined
	 
	 if (icrfSwitch == false) { 
	  scene.preRender.addEventListener(icrf);
	  icrfSwitch = true ;
	 } ;
      viewer.camera.setView({
      destination : Cesium.Cartesian3.fromDegrees(-117.16, 32.0, 1500000000.0)
     });
	 viewer.trackedEntity = earthCore ;
	 console.log ("big picture") ;
}

function showSpaceCraft() {
    viewer.trackedEntity = undefined
	
	if (icrfSwitch) { 
	   scene.preRender.removeEventListener(icrf); 
	   icrfSwitch = false ;
	   } ;

    var spaceCraft = czmlDataSource1.entities.getById('lunarProbe') ;	
	  viewer.trackedEntity = spaceCraft ;
}
function showTheMoon() {
    viewer.trackedEntity = undefined
	
   if (icrfSwitch) { 
      scene.preRender.removeEventListener(icrf);
   	  icrfSwitch = false ;
	} ;
	   
	var ourMoon = czmlDataSource2.entities.getById('theMoon') ;	
    viewer.trackedEntity = ourMoon ;
}
function showTheEarth() {
      viewer.trackedEntity = undefined  
	  
   if (icrfSwitch == false) {   
	  scene.preRender.addEventListener(icrf);
	  icrfSwitch = true ;
	};
  // Set position with a top-down view
      viewer.camera.setView({
      destination : Cesium.Cartesian3.fromDegrees(-117.16, 32.0, 150000000.0)
     });
	  viewer.trackedEntity = earthCore ;
}

function initializeButtons() {
	  document.getElementById('showShip').disabled = true;
    //  document.getElementById('showMoon').disabled = true;
      document.getElementById('showEarth').disabled = true;
     // document.getElementById('bigPicture').disabled = true;
      document.getElementById('announcement').innerHTML = "Models are loading.";
	
    
	  setTimeout(activateButtons,2000) ;   // Wait two seconds before activating the buttons.
      
}

function activateButtons() {
	  // Enable the buttons
         document.getElementById('showShip').disabled = false;
        // document.getElementById('showMoon').disabled = false;
         document.getElementById('showEarth').disabled = false;
         //document.getElementById('bigPicture').disabled = false;
         document.getElementById('announcement').innerHTML = "Models have loaded; you may select a view point.";
		 
		 luna = czmlDataSource2.entities.getById('theMoon') ;    // Get the entity for the Moon.
		 viewer.clock.onTick.addEventListener(rotateMoon) ;      // Rotate the Moon.
}

</script>

<center>
<section onload="initializeButtons()">
<h2 id="announcement"></h2>

<!--<input type="button" id="bigPicture" value="Big Picture" onclick="bigPicture();" /><br>-->
<input type="button" id="showShip" value="Spacecraft" onclick="showSpaceCraft();" /><br>
<!--<input type="button" id="showMoon" value="Moon" onclick="showTheMoon();" /><br>-->
<input type="button" id="showEarth" value="Earth" onclick="showTheEarth();" /><br>
  <div id="cesiumContainer"></div>
  <script>
   var viewer = new Cesium.Viewer('cesiumContainer', {
       infoBox : false,
       selectionIndicator : false,
       baseLayerPicker : false,
        //Use OpenStreetMaps
        imageryProvider : Cesium.createOpenStreetMapImageryProvider({
            url : 'https://a.tile.openstreetmap.org/'
        })
	});
	var scene = viewer.scene;
    var clock = viewer.clock;

   var czmlDataSource1 = new Cesium.CzmlDataSource();
       czmlDataSource1.load('../Apps/saw.czml');
       viewer.dataSources.add(czmlDataSource1); 
	   
   var czmlDataSource2 = new Cesium.CzmlDataSource();
       //czmlDataSource2.load('LunarOrbit_withTexture.czml');
      // viewer.dataSources.add(czmlDataSource2);   

    var camera = viewer.scene.camera;
	
  function icrf(scene, time) {
    if (scene.mode !== Cesium.SceneMode.SCENE3D) {   // may not be necessary
        return;
    }
    var icrfToFixed = Cesium.Transforms.computeIcrfToFixedMatrix(time);
    if (Cesium.defined(icrfToFixed)) {
        var offset = Cesium.Cartesian3.clone(camera.position);
        var transform = Cesium.Matrix4.fromRotationTranslation(icrfToFixed);
        camera.lookAtTransform(transform, offset);
    }
};
	clock.multiplier =  2100 ; // 60 * 60 * 60;          // speed of the simulation
    scene.preRender.addEventListener(icrf);  // enable Earth rotation
	var icrfSwitch = true ;                  // flag for icrf event listener
	
    scene.globe.enableLighting = true;
	viewer.scene.moon.show = false;           // Turn off the default moon.
	
	var previousTime = clock.currentTime ;
   function rotateMoon(scene, time) {
      var rotRadSec = 0.00000259722 ;        // rotation in radians per second
      var currentTime = clock.currentTime ;
	  var delta = Cesium.JulianDate.secondsDifference(previousTime, currentTime);
	  var spin = delta * rotRadSec;  // differnece in seconds * radians/second.
	  var axis = new Cesium.Cartesian3(0,0,1) ;   // spin about the Z axis
	  var rotation = Cesium.Quaternion.fromAxisAngle(axis, spin) ;
	   luna.orientation = rotation ;
	   previousTime = currentTime ;   // increment the time
   };
	  viewer.scene.camera.frustum.far = 1e12;            //Move the far wall of the viewing frustum.
	
	// Set position with a top-down view
      viewer.camera.setView({
      destination : Cesium.Cartesian3.fromDegrees(-117.16, 32.0, 1500000000.0)
     });
	
	var earthCore = viewer.entities.add(
     { id:"core",
       position : Cesium.Cartesian3(0,0,0),
       point: { show : false  }
	 });

	showTheEarth();
	// viewer.extend(Cesium.viewerCesiumInspectorMixin);  //Add Cesium Inspector
</script>
</section>
</center>
@endsection
