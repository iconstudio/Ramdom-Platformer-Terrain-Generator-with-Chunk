if place_free(x, y - 1) and place_free(x, y + 1) and !instance_place(x, y - 1, oLadder) {
	sprite_index = sLadderPlank
}