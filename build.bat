set PAKPACK="path\to\PAKPack.exe"
set COMPILER="path\to\AtlusScriptCompiler.exe"
set OUTPUT_PATH=path\to\modcompendiumoutput\Data

if not exist "%OUTPUT_PATH%" mkdir "%OUTPUT_PATH%"
if not exist "%OUTPUT_PATH%\data\field2d\bg" mkdir "%OUTPUT_PATH%\data\field2d\bg"

for %%f in (".\original\abin\*.abin") do copy "%%f" "%OUTPUT_PATH%\data\field2d\bg"

for %%f in (.\hook\*.flow) do %COMPILER% "%%f" -Compile -OutFormat V1 -Library P3P -Encoding P3 -Out "%OUTPUT_PATH%\data\field2d\bg\%%~nf.bf" -Hook

	goto:replacing
:deletebfs
for %%f in ("%OUTPUT_PATH%\data\field2d\bg\*.bf") do del "%%f"
PAUSE
	goto:eof


:replacing
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_01.abin" h06_01.bf "%OUTPUT_PATH%\data\field2d\bg\h06_01.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_01.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_02.abin" h06_02.bf "%OUTPUT_PATH%\data\field2d\bg\h06_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_02.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_03.abin" h06_03.bf "%OUTPUT_PATH%\data\field2d\bg\h06_03.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_03.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_04.abin" h06_04.bf "%OUTPUT_PATH%\data\field2d\bg\h06_04.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_04.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_05.abin" h06_05.bf "%OUTPUT_PATH%\data\field2d\bg\h06_05.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_05.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_07.abin" h06_07.bf "%OUTPUT_PATH%\data\field2d\bg\h06_07.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_07.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_11.abin" h06_11.bf "%OUTPUT_PATH%\data\field2d\bg\h06_11.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_11.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_16.abin" h06_16.bf "%OUTPUT_PATH%\data\field2d\bg\h06_16.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_16.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b06_20.abin" h06_20.bf "%OUTPUT_PATH%\data\field2d\bg\h06_20.bf" "%OUTPUT_PATH%\data\field2d\bg\b06_20.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_01.abin" h07_01.bf "%OUTPUT_PATH%\data\field2d\bg\h07_01.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_01.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_02.abin" h07_02.bf "%OUTPUT_PATH%\data\field2d\bg\h07_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_02.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_03.abin" h07_03.bf "%OUTPUT_PATH%\data\field2d\bg\h07_03.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_03.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_04.abin" h07_04.bf "%OUTPUT_PATH%\data\field2d\bg\h07_04.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_04.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_05.abin" h07_05.bf "%OUTPUT_PATH%\data\field2d\bg\h07_05.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_05.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_06.abin" h07_06.bf "%OUTPUT_PATH%\data\field2d\bg\h07_06.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_06.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_09.abin" h07_09.bf "%OUTPUT_PATH%\data\field2d\bg\h07_09.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_09.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_19.abin" h07_19.bf "%OUTPUT_PATH%\data\field2d\bg\h07_19.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_19.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b07_20.abin" h07_20.bf "%OUTPUT_PATH%\data\field2d\bg\h07_20.bf" "%OUTPUT_PATH%\data\field2d\bg\b07_20.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b08_01.abin" h08_01.bf "%OUTPUT_PATH%\data\field2d\bg\h08_01.bf" "%OUTPUT_PATH%\data\field2d\bg\b08_01.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b08_02.abin" h08_02.bf "%OUTPUT_PATH%\data\field2d\bg\h08_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b08_02.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b08_09.abin" h08_09.bf "%OUTPUT_PATH%\data\field2d\bg\h08_09.bf" "%OUTPUT_PATH%\data\field2d\bg\b08_09.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b08_10.abin" h08_10.bf "%OUTPUT_PATH%\data\field2d\bg\h08_10.bf" "%OUTPUT_PATH%\data\field2d\bg\b08_10.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b09_01.abin" h09_01.bf "%OUTPUT_PATH%\data\field2d\bg\h09_01.bf" "%OUTPUT_PATH%\data\field2d\bg\b09_01.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b09_02.abin" h09_02.bf "%OUTPUT_PATH%\data\field2d\bg\h09_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b09_02.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b09_08.abin" h09_08.bf "%OUTPUT_PATH%\data\field2d\bg\h09_08.bf" "%OUTPUT_PATH%\data\field2d\bg\b09_08.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b09_09.abin" h09_09.bf "%OUTPUT_PATH%\data\field2d\bg\h09_09.bf" "%OUTPUT_PATH%\data\field2d\bg\b09_09.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b10_01.abin" h10_01.bf "%OUTPUT_PATH%\data\field2d\bg\h10_01.bf" "%OUTPUT_PATH%\data\field2d\bg\b10_01.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b10_02.abin" h10_02.bf "%OUTPUT_PATH%\data\field2d\bg\h10_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b10_02.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b12_01.abin" h12_01.bf "%OUTPUT_PATH%\data\field2d\bg\h12_01.bf" "%OUTPUT_PATH%\data\field2d\bg\b12_01.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_02.abin" h14_02.bf "%OUTPUT_PATH%\data\field2d\bg\h14_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_02.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_03.abin" h14_03.bf "%OUTPUT_PATH%\data\field2d\bg\h14_03.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_03.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_06.abin" h14_06.bf "%OUTPUT_PATH%\data\field2d\bg\h14_06.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_06.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_07.abin" h14_07.bf "%OUTPUT_PATH%\data\field2d\bg\h14_07.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_07.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_08.abin" h14_08.bf "%OUTPUT_PATH%\data\field2d\bg\h14_08.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_08.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_09.abin" h14_09.bf "%OUTPUT_PATH%\data\field2d\bg\h14_09.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_09.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_10.abin" h14_10.bf "%OUTPUT_PATH%\data\field2d\bg\h14_10.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_10.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_11.abin" h14_11.bf "%OUTPUT_PATH%\data\field2d\bg\h14_11.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_11.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_12.abin" h14_12.bf "%OUTPUT_PATH%\data\field2d\bg\h14_12.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_12.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_13.abin" h14_13.bf "%OUTPUT_PATH%\data\field2d\bg\h14_13.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_13.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_14.abin" h14_14.bf "%OUTPUT_PATH%\data\field2d\bg\h14_14.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_14.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_15.abin" h14_15.bf "%OUTPUT_PATH%\data\field2d\bg\h14_15.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_15.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b14_16.abin" h14_16.bf "%OUTPUT_PATH%\data\field2d\bg\h14_16.bf" "%OUTPUT_PATH%\data\field2d\bg\b14_16.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b15_18.abin" h15_18.bf "%OUTPUT_PATH%\data\field2d\bg\h15_18.bf" "%OUTPUT_PATH%\data\field2d\bg\b15_18.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b35_03.abin" h35_03.bf "%OUTPUT_PATH%\data\field2d\bg\h35_03.bf" "%OUTPUT_PATH%\data\field2d\bg\b35_03.abin"
%PAKPACK% replace "%OUTPUT_PATH%\data\field2d\bg\b37_02.abin" h37_02.bf "%OUTPUT_PATH%\data\field2d\bg\h37_02.bf" "%OUTPUT_PATH%\data\field2d\bg\b37_02.abin"
	goto:deletebfs