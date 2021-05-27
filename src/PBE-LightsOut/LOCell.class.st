Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [
	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	onColor := Color paleYellow .
	offColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff
]

{ #category : #accessing }
LOCell >> mouseAction: aBlockClosure [ 
	mouseAction := aBlockClosure
]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
	mouseAction value
]
