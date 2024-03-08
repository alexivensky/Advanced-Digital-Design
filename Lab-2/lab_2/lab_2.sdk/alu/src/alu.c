#include <stdio.h>

int main(void) {
	uint32_t *regmap = (uint32_t *) 0x70000000;
	// REGMAP:
	// 	#	bits	in		out
	//	0	32		R		A
	//	1	32				B
	//	2	4				SHAMT
	//	3	3				ALUOp
	//	4	1		Zero
	//	5	1		Overflow
	int z, v, r;
	// add signed
	regmap[3] = 0b0100;
	regmap[0] = 0x000001BA;
	regmap[1] = 0xFFFFEE4B;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 1: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0xFFFFF005?"C":"E"));
	// add signed
	regmap[3] = 0b0101;
	regmap[0] = 0xF0000000;
	regmap[1] = 0x0000000F;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 2: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0xF000000F?"C":"E"));
	// bitwise and
	regmap[3] = 0b0000;
	regmap[0] = 0xFFFF0000;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 3: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0x00FF0000?"C":"E"));
	// bitwise nor
	regmap[3] = 0b0011;
	regmap[0] = 0xFFFF0000;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 4: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0x000000FF?"C":"E"));
	// bitwise nor
	regmap[3] = 0b0001;
	regmap[0] = 0xFFFF0000;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 5: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0xFFFFFF00?"C":"E"));
	// set on less than
	regmap[3] = 0b1010;
	regmap[0] = 0x005CF000;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 6: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0x00000001?"C":"E"));
	// SLTU
	regmap[3] = 0b1011;
	regmap[0] = 0xFFFF0000;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 7: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0x00000000?"C":"E"));
	// shift left logical
	regmap[3] = 0b1100;
	regmap[0] = 0x0000FFFF;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00010;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 8: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0x0003FFFC?"C":"E"));
	// shift right arithmetic
	regmap[3] = 0b1111;
	regmap[0] = 0xFEDCBA98;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00010;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 9: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0xFFB72EA6?"C":"E"));
	// shift right logical
	regmap[3] = 0b1110;
	regmap[0] = 0xFEDCBA98;
	regmap[1] = 0x00FFFF00;
	regmap[2] = 0b00010;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 10: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0x3FB72EA6?"C":"E"));
	// subtract signed
	regmap[3] = 0b0110;
	regmap[0] = 0xFFF348DE;
	regmap[1] = 0x00045583;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 11: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0xFFEEF35B?"C":"E"));
	// subtract unsigned
	regmap[3] = 0b0111;
	regmap[0] = 0x000FFFFF;
	regmap[1] = 0x000FFFFF;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 12: Z: %s, O: %s, R: %s\n", (z==1?"C":"E"),(v==0?"C":"E"),(r==0x00000000?"C":"E"));
	// bitwise xor
	regmap[3] = 0b0010;
	regmap[0] = 0xF0F0F0F0;
	regmap[1] = 0x0F0F0F0F;
	regmap[2] = 0b00000;
	z = regmap[4];
	v = regmap[5];
	r = regmap[0];
	printf("\nCase 13: Z: %s, O: %s, R: %s\n", (z==0?"C":"E"),(v==0?"C":"E"),(r==0xFFFFFFFF?"C":"E"));

	return 0;
}
