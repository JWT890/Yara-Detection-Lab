rule deathstar
{
	meta:
		author = "jon"
		date = "2024"
		description = "Simple YARA Lab"
		reference = "deathstar.txt"
		md5sum4 = "046d58458878c1cbafa660dfa497e86c"
		sha1sum4 = "269eca6ebd424c44bd2f84631876bfcc5e00ff81"
		sha256sum4 = "572dc75a02ede10754a1eae0c171bca5b71077811e047d4a7cf6b87f827f827fc044"

	strings:
		$s1 = "VGhpcybpcyBub3QgdGhlIGryb2lkIHlvdSBgcnYgbG9va2kyZtBnb3Iu 066. DV. LS. #%%%^storm#tropper"
	condition:
		uint16(0) == 0x4756 and filesize < 1KB and
		all of them
}
