# Ez PDF

The flag has been divided into 3 parts. You can find them in metadata, behind TCP1P images, and then inside a JavaScript

## Intended PoC:

- Metadata

You can use `exiftool` command or https://exif.tools website to obtain the first part

- Behind TCP1P images

You can use PDF editor like adobe and then move the TCP1P logo so you can see the image behind it. Or you can use PDF to XML converter online and check the `<resource>` tag

- Custom JS

If you open the file using `peepdf` to analyze the PDF, the tool will detect unusual object

```js
/Type /Action
/S /JavaScript
/JS (var whutisthis = 1; if (whutisthis === 1) { this.print({bUI:true,bSilent:false,bShrinkToFit:true}); } else { function _0x510a(_0x4c8c49,_0x29ea76){var _0x5934bd=_0x5934();return _0x510a=function(_0x510a0b,_0x1b87bb){_0x510a0b=_0x510a0b-0x174;var _0x6c8a33=_0x5934bd[_0x510a0b];return _0x6c8a33;},_0x510a(_0x4c8c49,_0x29ea76);}(function(_0x39f268,_0x3518a2){var _0x43b398=_0x510a,_0x1759ee=_0x39f268();while(!![]){try{var _0x14396e=-parseInt(_0x43b398(0x175))/0x1*(-parseInt(_0x43b398(0x177))/0x2)+parseInt(_0x43b398(0x17e))/0x3+-parseInt(_0x43b398(0x17b))/0x4*(parseInt(_0x43b398(0x179))/0x5)+parseInt(_0x43b398(0x183))/0x6*(parseInt(_0x43b398(0x180))/0x7)+parseInt(_0x43b398(0x17f))/0x8+-parseInt(_0x43b398(0x17d))/0x9*(-parseInt(_0x43b398(0x17a))/0xa)+parseInt(_0x43b398(0x178))/0xb*(-parseInt(_0x43b398(0x182))/0xc);if(_0x14396e===_0x3518a2)break;else _0x1759ee['push'](_0x1759ee['shift']());}catch(_0x21db70){_0x1759ee['push'](_0x1759ee['shift']());}}}(_0x5934,0x1d736));function pdf(){var _0xcd7ad1=_0x510a;a=_0xcd7ad1(0x181),b=_0xcd7ad1(0x176),c=_0xcd7ad1(0x174),console[_0xcd7ad1(0x17c)](a+c+b);}pdf();function _0x5934(){var _0x3c1521=['_15N7_17','60PQFHXK','125706IwDCOY','_l3jaf9c','1aRbLpO','i293m1d}','52262iffCez','211310EDRVNg','913730rOiDAg','10xwGGOy','4mNGkXM','log','747855AiEFNc','333153VXlPoX','1265584ccEDtU','7BgPRoR'];_0x5934=function(){return _0x3c1521;};return _0x5934();} })
```

Reverse the code / you can run the function to obtain the last part

```js
function _0x510a(_0x4c8c49,_0x29ea76){var _0x5934bd=_0x5934();return _0x510a=function(_0x510a0b,_0x1b87bb){_0x510a0b=_0x510a0b-0x174;var _0x6c8a33=_0x5934bd[_0x510a0b];return _0x6c8a33;},_0x510a(_0x4c8c49,_0x29ea76);}(function(_0x39f268,_0x3518a2){var _0x43b398=_0x510a,_0x1759ee=_0x39f268();while(!![]){try{var _0x14396e=-parseInt(_0x43b398(0x175))/0x1*(-parseInt(_0x43b398(0x177))/0x2)+parseInt(_0x43b398(0x17e))/0x3+-parseInt(_0x43b398(0x17b))/0x4*(parseInt(_0x43b398(0x179))/0x5)+parseInt(_0x43b398(0x183))/0x6*(parseInt(_0x43b398(0x180))/0x7)+parseInt(_0x43b398(0x17f))/0x8+-parseInt(_0x43b398(0x17d))/0x9*(-parseInt(_0x43b398(0x17a))/0xa)+parseInt(_0x43b398(0x178))/0xb*(-parseInt(_0x43b398(0x182))/0xc);if(_0x14396e===_0x3518a2)break;else _0x1759ee['push'](_0x1759ee['shift']());}catch(_0x21db70){_0x1759ee['push'](_0x1759ee['shift']());}}}(_0x5934,0x1d736));function pdf(){var _0xcd7ad1=_0x510a;a=_0xcd7ad1(0x181),b=_0xcd7ad1(0x176),c=_0xcd7ad1(0x174),console[_0xcd7ad1(0x17c)](a+c+b);}pdf();function _0x5934(){var _0x3c1521=['_15N7_17','60PQFHXK','125706IwDCOY','_l3jaf9c','1aRbLpO','i293m1d}','52262iffCez','211310EDRVNg','913730rOiDAg','10xwGGOy','4mNGkXM','log','747855AiEFNc','333153VXlPoX','1265584ccEDtU','7BgPRoR'];_0x5934=function(){return _0x3c1521;};return _0x5934();}
```

And this is a oneliner from @Lunaroa (He helped me solved this chall)

```bash
» exiftool -Creator TCP1P-CTF.pdf | grep -oP '\w+$' | base64 -d
In this question, the flag has been divided into 3 parts. You have found the first part of the flag!! TCP1P{D01n9_F023n51C5

» pdf-parser.py -o 4 TCP1P-CTF.pdf | grep -oP '(?<=\().+(?=\))' | sed 's/= 1;/= 0;/g' > script.js
» node script.js
_15N7_17_l3jaf9ci293m1d}

» mutool extract TCP1P-CTF.pdf
» tesseract image-0010.png out
» cat out.txt
_ON_pdf_f1L35_15_345y
```