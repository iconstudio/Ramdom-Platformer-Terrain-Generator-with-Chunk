/// @description 초기화
randomize()

#macro blocksize 16
#macro chunksize blocksize * 8

global.chunk_null = "00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000"
global.chunk_template = []
global.chunk_template_number = 0

for (i = 0; i < room_width; i += 16) {
	instance_create_layer(i, 0, "terrains", oCave)
	instance_create_layer(i, room_height - 16, "terrains", oCave)
}

for (j = 16; j < room_height - 16; j += 16) {
	instance_create_layer(0, j, "terrains", oCave)
	instance_create_layer(room_width - 16, j, "terrains", oCave)
}

// for all
chunk_add("00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000")
chunk_add("0000b000 0000b000 0000bb00 0000b000 0000bb00 0000bb00 0000bb00 0000b000")
chunk_add("0000b000 0000bb00 0000b000 0000bb00 0000bb00 0000b000 0000bb00 0000b000")
chunk_add("0000b000 0000bb00 0000bb00 0000b000 0000bb00 0000bb00 0000bb00 0000b000")
chunk_add("0000bb00 0000bb00 0000bb00 0000b000 0000bb00 0000b000 0000b000 0000bb00")
chunk_add("0b00bbb0 bbb0bbb0 bbb0bb00 0lllbb00 0bb0bb00 0bb0bb00 0lllbb00 0bbbbb00")
chunk_add("0b00bb00 bbb0bb00 bbb0bb00 0lllbb00 0bb0bb00 0bb0bb00 0lllbb00 0bbbbb00")
chunk_add("00b0bb00 0bb0bb00 bbb0bb00 0lllbb00 0bb0bb00 0bb0bb00 0lllbb00 0bb0bb00")
chunk_add("0b0000b0 bb000bb0 b00000bb 00000bbb 000000b0 00000bb0 b00000b0 b0000bbb")
chunk_for_all = global.chunk_template_number - 1

// Highest Floor
chunk_add("0000b000 0000bb00 000bbb00 0000bbb0 0000bb00 0000bb00 0000bbb0 0000bbb0")
chunk_add("0000b000 0000bb00 000bb000 000bb000 0000bb00 0000bb00 0000b000 000bbb00")
chunk_add("0000b000 000bb000 000bb000 0000b000 00000b00 0000bb00 0000b000 000bb000")
chunk_add("000bbb00 0000bb00 0000bbb0 00000bb0 00000b00 0000bb00 0000b000 0000b000")
chunk_add("000bbb00 0000bb00 00000bb0 00000bb0 00000b00 00000b00 00000bb0 00000b00")
chunk_add("00000b00 00000b00 00000bb0 00000bb0 00bbbb00 00lllb00 00000000 00000000")
chunk_add("00000b00 00000b00 00000b00 00000b00 00bbbb00 00lllb00 00000000 00000000")
chunk_add("00000b00 00000000 00000bb0 00000bb0 00000b00 0000bb00 00000bb0 0000bb00")
chunk_add("bbb00000 bb00b000 bb00b000 00000000 b00b0000 000b0000 b00b0000 b00b0000")
chunk_add("b000b000 b000b000 b0000000 00000000 b00bb000 b000b000 bb000000 bb0b0000")
chunk_add("b0000000 bb000000 0000000b 0000000b bb00000b b000000b bb00000b b000000b")
chunk_add("b000000b 0000000b b000000b b00000bb bb0000bb 0000000b 0000000b b00000bb")
chunk_add("b000000b b00000bb 00000bbb 000000bb 0000000b 0000000b 000000bb 000000bb")
chunk_add("000000bb 000000bb 00000bbb 000000b0 000000bb 00000bbb 00000bb0 000000bb")
chunk_add("000000bb 000000b0 000000b0 00000bbb 000000bb 000000bb 00000bbb 00000bbb")
chunk_add("000000bb 00000bb0 000000b0 000000b0 00000bb0 00000bb0 000000bb 000000b0")
chunk_add("000000b0 0000b0bb 0000b0bb 0000b0bb 0000b0bb 00bbbbbb 00llllb0 00000000")
chunk_for_topper = global.chunk_template_number - 1

// Middle Floor
chunk_add("0000b000 0000b000 0000bb00 0000b000 0000bb00 0000bb00 0000bb00 0000b000")
chunk_add("0000b000 0000bb00 0000b000 0000bb00 0000bb00 0000b000 0000bb00 0000b000")
chunk_add("0000b000 0000bb00 0000bb00 0000b000 0000bb00 0000bb00 0000bb00 0000b000")
chunk_add("0000bb00 0000bb00 0000bb00 0000b000 0000bb00 0000b000 0000b000 0000bb00")
chunk_add("0b00bbb0 bbb0bbb0 bbb0bb00 0lllbb00 0bb0bb00 0bb0bb00 0lllbb00 0bbbbb00")
chunk_add("0b00bb00 bbb0bb00 bbb0bb00 0lllbb00 0bb0bb00 0bb0bb00 0lllbb00 0bbbbb00")
chunk_add("00b0bb00 0bb0bb00 bbb0bb00 0lllbb00 0bb0bb00 0bb0bb00 0lllbb00 0bb0bb00")
chunk_add("0b0000b0 bb000bb0 b00000bb 00000bbb 000000b0 00000bb0 b00000b0 b0000bbb")
chunk_add("00000bb0 0000bbb0 0000bbb0 00000bb0 0000bbb0 000bbbb0 000bbbb0 00000bb0")
chunk_add("00000bb0 0000bbbb 0000bbb0 00000bbb 0000bbbb 00000bb0 000000bb 000000b0")
chunk_add("00000bb0 000000bb 00000bb0 00000bbb 0000bbbb 0000bbb0 0000bbbb 00000bb0")
chunk_add("b0000bb0 bb000bb0 b000bbb0 b000bb00 b0000000 b0000000 b0000bb0 b0000bb0")
chunk_add("0000bbb0 000bbbb0 00bbbbb0 00bbbb00 0000bb00 000bbbb0 b000bbb0 b000bb00")
chunk_add("00000bb0 00000bb0 00000bb0 000bbb00 00000b00 000bbbb0 b00000b0 b0000000")
chunk_add("00000000 00000b00 00000bb0 000bbbb0 00000b00 0000bb00 000000b0 00000000")
chunk_add("00000bb0 000bbbb0 00000bb0 000bbbb0 00000bb0 00000bb0 00000bb0 0000bbb0")
chunk_add("0000bbb0 0000bbb0 00000bb0 0000bbb0 000bbb00 0000bbb0 0000bbb0 0000bb00")
chunk_add("0000bbb0 00000b00 00000bb0 00000bb0 0000bb00 0000bb00 000bbbb0 000bbbb0")
chunk_add("000000b0 000000bb 000000bb 0llllbbb 000bbbb0 0000bbb0 000000bb 000000b0")
chunk_for_middle = global.chunk_template_number - 1

// Lowest Floor
chunk_add("0000000b 0000000b 0000000b 0000000b 0000000b 0000000b 0000000b 0000000b")
chunk_add("000000bb 00000bbb 0000000b 0000000b 000000bb 0000000b 000000bb 00000bbb")
chunk_add("000000bb 0000000b 00000000 0000000b 000000bb 0000000b 00000000 00000000")
chunk_add("0000000b 0000000b 00000000 0000000b 000000bb 000000bb 000000bb 0000000b")
chunk_add("0000000b 0000000b 00000000 0000000b 000000bb 0000000b 000000bb 0000000b")
chunk_add("00000000 000000bb 00000bbb 0000000b 0000000b 000000bb 0000000b 00000000")
chunk_add("0000000b 000llllb 000b0bbb 000b0bbb 000b0bbb 000b0bbb 000llllb 0000000b")
chunk_add("00000000 0000llll 0000b0bb 0000b0bb 0000b0bb 0000b0bb 0000llll 00000000")
chunk_add("000bb0bb 000bb0bb 0000b00b 000bb000 0000bb00 000bb00b 0000b00b 000bbb00")
chunk_add("000bb00b 000bb0bb 0000b00b 000bb000 00000000 000b000b 00b0000b 00bb00b0")
chunk_add("000bb00b 000b000b 000b000b 000b000b 0000000b 000b000b 00b0000b 00bb00bb")
chunk_add("000bb00b 0bbb000b 000lll0b 00b00000 00b0000b 00bb00bb 00b0000b 0bbb000b")
chunk_add("0bbbb000 00bb00bb 000000bb 00b0000b 00b0000b 00bb0000 00000000 000b0000")
chunk_add("bb0000bb b0000bbb bb000bbb 0b0000bb 0b000bbb 000000bb 00000bbb b00000bb")
chunk_add("000000bb 0000000b b00000bb bb0000bb bb000bbb b0000bbb b0000bbb b00000bb")
chunk_add("000000bb 00000bbb 00000bbb 000bbbbb 000bbbbb 00000bbb 00000bbb 000000bb")
chunk_add("0000bbbb 000000bb 00000bbb 00000bbb 00000bbb 000000bb 00000bbb 0000000b")
chunk_add("0000000b 00000bbb 000000bb 00000bbb 00000bbb 00000bbb 000000bb 0000bbbb")
chunk_add("00000bbb b0000bbb b00000bb bb000bbb bb0000bb bb0000bb b0000bbb bb000bbb")
chunk_add("b000000b bb0000bb bb0000bb bb00000b bb0000bb b00000bb bb0000bb bb000bbb")
chunk_for_lower = global.chunk_template_number - 1

chunk_add("bbbbbbbb bbb00bbb bb0000bb bb00000b bb0000bb b00000bb bb0000bb bb00000b")
chunk_add("bbb00bbb bb0000bb bb0000bb b00000bb b00000bb bb0000bb bb0000bb bb0000bb")
chunk_add("bbb00bbb bb0000bb b0000bbb b0000bbb 000000bb b000000b b000000b bb0000bb")
chunk_add("bbbbbbbb bbb0bbbb bb000bbb bb00000b b000000b b000000b b000000b bb0000bb")
chunk_for_left = global.chunk_template_number - 1

chunk_add("bb000bbb bb00bb0b bb00b00b bb00b00b b00bb00b b00bb00b b000b00b bbbbbbbb")
chunk_add("bb0000bb b00000bb b00000bb bb0000bb b00000bb bb000bbb bbb0bbbb bbbbbbbb")
chunk_add("b0000bbb 000000bb 0000000b bb00000b b00000bb bb000bbb bb000bbb bbbbbbbb")
chunk_add("bb0000bb b00000bb 00000bbb bb0000bb b00000bb bb0000bb bbbb0bbb bbbb0bbb")
chunk_for_right = global.chunk_template_number - 1

global.chunk = []
var chunk_type = 0
for (var i = 0; i < 4; ++i) {
	for (var j = 0; j < 4; ++j) {
		if j == 1 or j == 2 {
			chunk_type = irandom(9) == 0 ? irandom(chunk_for_all) : irandom_range(chunk_for_topper + 1, chunk_for_middle)
		} else if j == 0 {
			chunk_type = irandom_range(chunk_for_all + 1, chunk_for_topper)
		} else if j == 3 {
			chunk_type = irandom_range(chunk_for_middle + 1, chunk_for_lower)
		}

		if irandom(1) == 0 {
			if i == 0 {
				if irandom(2) == 0
					chunk_type = irandom_range(chunk_for_lower + 1, chunk_for_left)
			} else if i == 3 {
				if irandom(2) == 0
					chunk_type = irandom_range(chunk_for_left + 1, chunk_for_right)
			}
		}

		global.chunk[i, j] = instance_create_layer(i * chunksize + blocksize, j * chunksize + blocksize, "terrains", oWorldChunk)
		with global.chunk[i, j] {
			terrain = global.chunk_template[chunk_type]

			event_user(0)
		}
	}
}

with oSolid
	event_user(0)

with oLadder
	event_user(0)
