const _0x10fe=['95016FNjRyS','7azizSj','User','thumbnail_url','thumbnail','1499YqSmRg','Equipo','env','160275DgewOr','get','ObjectId','47226WJJkxu','212813QLJfZK','Types','Schema','API_URL','143OTwUvx','172904jXaKYa','exports','10394UsmpHD'];const _0x81f42c=_0x1c79;(function(_0x480261,_0x344e15){const _0x362427=_0x1c79;while(!![]){try{const _0x44c2cb=parseInt(_0x362427(0x194))+parseInt(_0x362427(0x191))+-parseInt(_0x362427(0x193))*-parseInt(_0x362427(0x195))+-parseInt(_0x362427(0x18b))+-parseInt(_0x362427(0x19c))+parseInt(_0x362427(0x18c))+-parseInt(_0x362427(0x199))*parseInt(_0x362427(0x190));if(_0x44c2cb===_0x344e15)break;else _0x480261['push'](_0x480261['shift']());}catch(_0x3e9121){_0x480261['push'](_0x480261['shift']());}}}(_0x10fe,0x20231));function _0x1c79(_0x2c34ed,_0x1c5c59){return _0x1c79=function(_0x10fe49,_0x1c791d){_0x10fe49=_0x10fe49-0x18b;let _0x2467b3=_0x10fe[_0x10fe49];return _0x2467b3;},_0x1c79(_0x2c34ed,_0x1c5c59);}const mongoose=require('mongoose'),EquipoSchema=new mongoose[(_0x81f42c(0x18e))]({'thumbnail':String,'name':String,'price':Number,'category':String,'user':{'type':mongoose[_0x81f42c(0x18e)][_0x81f42c(0x18d)][_0x81f42c(0x19e)],'ref':_0x81f42c(0x196)}},{'toJSON':{'virtuals':!![]}});EquipoSchema['virtual'](_0x81f42c(0x197))[_0x81f42c(0x19d)](function(){const _0xb11f85=_0x81f42c;return process[_0xb11f85(0x19b)][_0xb11f85(0x18f)]+'/files/'+this[_0xb11f85(0x198)];}),module[_0x81f42c(0x192)]=mongoose['model'](_0x81f42c(0x19a),EquipoSchema);