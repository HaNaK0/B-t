<?xml version="1.0" encoding="UTF-8"?>
<tileset version="1.4" tiledversion="1.4.2" name="pirate_enviroment" tilewidth="64" tileheight="64" tilecount="96" columns="16">
 <editorsettings>
  <export target="pirate_enviroment.lua" format="lua"/>
 </editorsettings>
 <image source="../../Assets/SpriteSheets/pirate_tiles_sheet.png" width="1024" height="384"/>
 <terraintypes>
  <terrain name="Sand island" tile="0"/>
  <terrain name="Water" tile="72"/>
  <terrain name="Grass Island" tile="23"/>
  <terrain name="Shallows" tile="26"/>
 </terraintypes>
 <tile id="0" terrain=",,,0"/>
 <tile id="1" terrain=",,0,0"/>
 <tile id="2" terrain=",,0,"/>
 <tile id="3" terrain="0,0,0,"/>
 <tile id="4" terrain="0,0,,0"/>
 <tile id="9" terrain=",,,3"/>
 <tile id="10" terrain=",,3,3"/>
 <tile id="11" terrain=",,3,"/>
 <tile id="16" terrain=",0,,0"/>
 <tile id="17" terrain="0,0,0,0"/>
 <tile id="18" terrain="0,,0,"/>
 <tile id="19" terrain="0,,0,0"/>
 <tile id="20" terrain=",0,0,0"/>
 <tile id="25" terrain=",3,,3"/>
 <tile id="26" terrain="3,3,3,3"/>
 <tile id="27" terrain="3,,3,"/>
 <tile id="32" terrain=",0,,"/>
 <tile id="33" terrain="0,0,,"/>
 <tile id="34" terrain="0,,,"/>
 <tile id="35" terrain="2,2,2,"/>
 <tile id="36" terrain="2,2,,2"/>
 <tile id="41" terrain=",3,,"/>
 <tile id="42" terrain="3,3,,"/>
 <tile id="43" terrain="3,,,"/>
 <tile id="51" terrain="2,,2,2"/>
 <tile id="52" terrain=",2,2,2"/>
 <tile id="57" terrain="3,3,3,"/>
 <tile id="58" terrain="3,3,,3"/>
 <tile id="72" terrain="1,1,1,1"/>
 <tile id="73" terrain="3,,3,3"/>
 <tile id="74" terrain=",3,3,3"/>
 <wangsets>
  <wangset name="Fort Wall" tile="-1">
   <wangedgecolor name="" color="#ff0000" tile="-1" probability="1"/>
   <wangedgecolor name="" color="#00ff00" tile="-1" probability="1"/>
   <wangtile tileid="12" wangid="0x1010101"/>
   <wangtile tileid="13" wangid="0x1010101"/>
   <wangtile tileid="14" wangid="0x1020102"/>
   <wangtile tileid="15" wangid="0x2010201"/>
   <wangtile tileid="28" wangid="0x1020102"/>
   <wangtile tileid="29" wangid="0x2010201"/>
   <wangtile tileid="30" wangid="0x1020102"/>
   <wangtile tileid="31" wangid="0x1020102"/>
   <wangtile tileid="44" wangid="0x1020101"/>
   <wangtile tileid="45" wangid="0x1010201"/>
   <wangtile tileid="46" wangid="0x2010201"/>
   <wangtile tileid="47" wangid="0x2010201"/>
   <wangtile tileid="59" wangid="0x1020102"/>
   <wangtile tileid="60" wangid="0x1010102"/>
   <wangtile tileid="61" wangid="0x2010101"/>
   <wangtile tileid="62" wangid="0x1020101"/>
   <wangtile tileid="63" wangid="0x1010201"/>
   <wangtile tileid="75" wangid="0x2010201"/>
   <wangtile tileid="76" wangid="0x1020201"/>
   <wangtile tileid="77" wangid="0x2020101"/>
   <wangtile tileid="78" wangid="0x1010102"/>
   <wangtile tileid="79" wangid="0x2010101"/>
   <wangtile tileid="88" wangid="0x1020102"/>
   <wangtile tileid="89" wangid="0x2010201"/>
   <wangtile tileid="90" wangid="0x1020102"/>
   <wangtile tileid="91" wangid="0x2010201"/>
   <wangtile tileid="92" wangid="0x1010202"/>
   <wangtile tileid="93" wangid="0x2010102"/>
   <wangtile tileid="94" wangid="0x1020102"/>
   <wangtile tileid="95" wangid="0x2010201"/>
  </wangset>
 </wangsets>
</tileset>
