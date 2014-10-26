helper
isOperator: char
	^ char == $~ or: [
	  char == $& or: [
	  char == $| or: [
	  char == $* or: [
	  char == $/ or: [
	  char == $\ or: [
	  char == $+ or: [
	  char == $= or: [
	  char == $> or: [
	  char == $< or: [
	  char == $, or: [
	  char == $@ or: [
	  char == $%
	]]]]]]]]]]]].