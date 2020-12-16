

run("8-bit");
run("Set Measurements...", "centroid redirect=None decimal=3");
run("Set Scale...", "distance=888 known=1 pixel=1 unit=nm");
setThreshold(0, 92);
setOption("BlackBackground", false);
call("ij.plugin.filter.ParticleAnalyzer.setFontSize", 20);
run("Analyze Particles...", "size=0.00009-0.0002 circularity=0.75-1.00 show=[Overlay Outlines] clear include add");
resetThreshold();
setTool("point");
run("Point Tool...", "type=Circle color=Cyan size=[Extra Large] add label");



run("Undo");
run("Set Measurements...", "centroid redirect=None decimal=3");
run("Set Scale...", "distance=888 known=1 pixel=1 unit=nm");
setTool("point");
run("Point Tool...", "type=Circle color=Cyan size=[Extra Large] add label");
waitForUser("Please fix any gold particles and then continue");
roiManager("Deselect");