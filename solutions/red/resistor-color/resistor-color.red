Red [
	description: {"Resistor Color" exercise solution for exercism platform}
	author: "BNAndras" ; you can write your name here, in quotes
]

color-code: function [
	color
] [
	(index? find colors color) - 1
]

colors: function [] [
	["black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white"]
]
