rule star_wars
{
	meta:
		author =  "jon"
		date = "2024"
		description = "Simple YARA rule for lab"
		reference = "Blank"
		md5hash = "f1bc52b1c4da8b1d9dbe44bf41697d9d"
		sha1sum = "acf20e2e687005925149527e979220d21ded5695"
		sha256sum = "a6592f3b045c0bd897899a25b3b0b10a4c8444e28764cfcf2717dee1b67d3ecb"
		md5hash2 = "e10edced67b747f31ce544a5ec39b4eb"
		sha1sum2 = "d6a51843f65d032abfb2ec500ce11f32ea72e39d"
		sha256sum2 = "0833077daa6d59e306178a61efde6063cbe45eb2d107d4c28649ce579b70826f"
		md5hash3 = "17879abd086b7494b0d40f5aa6a712fe"
		sha1sum3 = "6fd8ba400fffdbc3c214cc13804e2acab3e9bf39"
		sha256sum3 = "2b15dbc85887bed44ff3317572aa5a54c343cc19c22435119d948bcb5f972a87"
	strings:
		$s1 = "Hello there!"
		$s2 = /star\{warz\}/
		$s3 = "General Kenobi"
		$s4 = /order\{66\}/
		$s5 = "Do, or do not."
		$s6 = "There is no try."
	condition:
		(1 of them) and filesize < 20KB

}
