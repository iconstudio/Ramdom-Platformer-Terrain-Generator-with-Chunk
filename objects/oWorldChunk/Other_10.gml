/// @description 지형 생성
var terrax = x, terray = y
for (var k = 0; k < string_length(terrain); ++k) {
	terrain_char = string_char_at(terrain, k + 1)

	if terrain_char == " " {
		terrax += blocksize
		terray = y

		continue
	} else if !instance_place(terrax, terray, oSolid) {
		if terrain_char == "b" {
			instance_create_layer(terrax, terray, "terrains", oCave)
		} else if terrain_char == "l" {
			instance_create_layer(terrax, terray, "terrains", oLadder)
		}
	}

	terray += blocksize
}