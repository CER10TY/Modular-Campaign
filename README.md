<h1>Modular Campaign Framework</h1>
<p align="center">
<a href="https://github.com/CER10TY/Modular-Campaign/releases">
	<img src="https://img.shields.io/github/release/CER10TY/Modular-Campaign.svg" />
</a>
<a href="https://github.com/CER10TY/Modular-Campaign/issues">
	<img src="https://img.shields.io/github/issues/CER10TY/Modular-Campaign.svg" />
</a>
</p>

<h2>THE IDEA</h2>

This project will provide a basic campaign framework to enable even new mission makers to easily make a campaign, because it will let them focus on the actual missions instead of the back-end scripting.
A hub which players can return to after every mission is provided, and at this hub players can select their mission and their operators (if available for the current mission). This framework also comes with an official campaign for players to enjoy, which will be added after the framework is ready to be shipped to mission makers.

Mission makers have to do very little back-end work, depending on which functionality they wish to enable. Operators can easily be added by making their own personal file in the /operators/ folder.
Individual missions are easily tied into the whole framework through the classic class Campaign {} structure, which is shipped with an official campaign and commented out example code, to make it easy to follow and understand. Due to this campaign being in mod form, mission makers are also able to integrate smaller, self-made mods (ie uniform model/texture changes) into the campaign for use with their missions.

<h3>CHANGELOG</h3>
v0.2.0

Released 2016-06-12

ADDED:
* You can now select specific operators' gear from a drop-down menu. Gear is pulled from loadouts you saved in Arsenal.

Various changes and fixes.

v0.1.0

Released 2016-06-12

ADDED:
* Operator View: Stats View, to view statistics such as accuracy of operators.
* Operator View: Gear View, to view the gear of operators. Not changeable yet.
* Operator View: Basic 'API' established. View documentation for more details.

v0.0.5

Released 2016-05-02

MODIFIED:
* Hub: Added new buildings and BIS' Arsenal.

v0.0.1

Released 2016-05-01

* Initial Commit
* Established StandardHub in VR, view HubState.VR.
