USES_LIST={
	bismuth=20,
	pig_iron=30,
	wrought_iron=30,
	steel=35,
	gold=10,
	nickel=25,
	platinum=25,
	tin=15,
	silver=25,
	lead=20,
	copper=25,
	zinc=25,
	brass=25,
	sterling_silver=25,
	rose_gold=20,
	black_bronze=35,
	bismuth_bronze=25,
	bronze=30,
	black_steel=40,
}

PICKS_CRACKY_LIST={
	--stone {times={[1]=3.00, [2]=1.20, [3]=0.80}, uses=20, maxlevel=1}
	--steel {times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2}
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.bismuth, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.pig_iron, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.wrought_iron, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.steel, maxlevel=3},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.gold, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.nickel, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.platinum, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.tin, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.silver, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.lead, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.copper, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.zinc, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.brass, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.sterling_silver, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.rose_gold, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.black_bronze, maxlevel=3},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.bismuth_bronze, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.bronze, maxlevel=2},
	{times={[1]=4.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.black_steel, maxlevel=3},
}

SHOVELS_CRUMBLY_LIST={
	--stone {times={[1]=1.50, [2]=0.50, [3]=0.30}, uses=20, maxlevel=1}
	--steel {times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=30, maxlevel=2}
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.bismuth, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.pig_iron, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.wrought_iron, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.steel, maxlevel=3},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.gold, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.nickel, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.platinum, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.tin, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.silver, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.lead, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.copper, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.zinc, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.brass, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.sterling_silver, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.rose_gold, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.black_bronze, maxlevel=3},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.bismuth_bronze, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.bronze, maxlevel=2},
	{times={[1]=1.50, [2]=0.70, [3]=0.60}, uses=USES_LIST.black_steel, maxlevel=3},
}

AXE_GROUPCAPS={
	--[[ stone 
	{choppy={times={[1]=3.00, [2]=1.00, [3]=0.60}, uses=20, maxlevel=1},
	 fleshy={times={[2]=1.30, [3]=0.70}, uses=20, maxlevel=1},},]]
	
	--{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=30, maxlevel=2},
	-- fleshy={times={[2]=1.10, [3]=0.60}, uses=40, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.bismuth, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.bismuth+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.pig_iron, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.pig_iron+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.wrought_iron, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.wrought_iron+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.steel, maxlevel=3},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.steel+10, maxlevel=2},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.gold, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.gold+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.nickel, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.nickel+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.platinum, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.platinum+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.tin, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.tin+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.silver, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.silver+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.lead, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.lead+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.copper, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.copper+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.zinc, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.zinc+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.brass, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.brass+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.sterling_silver, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.sterling_silver+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.rose_gold, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.rose_gold+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.black_bronze, maxlevel=3},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.black_bronze+10, maxlevel=2},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.bismuth_bronze, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.bismuth_bronze+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.bronze, maxlevel=2},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.bronze+10, maxlevel=1},},
	{choppy={times={[1]=3.00, [2]=1.60, [3]=1.00}, uses=USES_LIST.black_steel, maxlevel=3},
	 fleshy={times={[2]=1.10, [3]=0.60},           uses=USES_LIST.black_steel+10, maxlevel=2},},
}

SWORD_GROUPCAPS={
	--[[{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	     snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
	     choppy={times={[3]=0.70}, uses=40, maxlevel=0},},]]
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.bismuth, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.bismuth, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.pig_iron, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.pig_iron, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.wrought_iron, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.wrought_iron, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=3},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.steel, maxlevel=2},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.steel, maxlevel=1},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.gold, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.gold, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.nickel, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.nickel, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.platinum, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.platinum, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.tin, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.tin, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.silver, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.silver, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.lead, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.lead, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.copper, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.copper, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.zinc, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.zinc, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.brass, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.brass, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.sterling_silver, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.sterling_silver, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.rose_gold, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.rose_gold, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=3},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.black_bronze, maxlevel=2},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.black_bronze, maxlevel=1},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.bismuth_bronze, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.bismuth_bronze, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.bronze, maxlevel=1},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.bronze, maxlevel=0},},
	{fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=3},
	 snappy={times={[2]=0.70, [3]=0.30},           uses=USES_LIST.black_steel, maxlevel=2},
	 choppy={times={[3]=0.70},                     uses=USES_LIST.black_steel, maxlevel=1},},
} 
