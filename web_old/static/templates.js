/**@preserve  GeneXus C# 10_3_6-98450 on 3/11/2016 19:0:5.64
*/
gx.evt.autoSkip=!1;gx.define("templates",!1,function(){this.ServerClass="templates";this.PackageName="GeneXus.Programs";this.setObjectType("trn");this.hasEnterEvent=!0;this.skipOnEnter=!1;this.fullAjax=!0;this.supportAjaxEvents=!0;this.ajaxSecurityToken=!0;this.SetStandaloneVars=function(){this.Gx_mode=gx.fn.getControlValue("vMODE")};this.Valid_Templateid=function(){return gx.ajax.validSrvEvt("dyncall","Valid_Templateid",["gx.O.A5TemplateId","gx.O.A6TemplateNombre","gx.O.A7TemplateDescripcion","gx.O.A8TemplatePath"],["A6TemplateNombre","A7TemplateDescripcion","A8TemplatePath","Gx_mode","Z5TemplateId","Z6TemplateNombre","Z7TemplateDescripcion","Z8TemplatePath",["BTN_DELETE2","Enabled"],["BTN_ENTER2","Enabled"]]),!0};this.e11022_client=function(){this.executeServerEvent("ENTER",!0)};this.e12022_client=function(){this.executeServerEvent("CANCEL",!0)};this.GXValidFnc=[];var n=this.GXValidFnc;this.GXCtrlIds=[2,5,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,27,28,34,37,39,42,44,47,49,52,54];this.GXLastCtrlId=54;n[2]={fld:"TABLEMAIN",grid:0};n[5]={fld:"TABLETOOLBAR",grid:0};n[8]={fld:"SECTIONTOOLBAR",grid:0};n[9]={fld:"BTN_FIRST",grid:0};n[10]={fld:"BTN_FIRST_SEPARATOR",grid:0};n[11]={fld:"BTN_PREVIOUS",grid:0};n[12]={fld:"BTN_PREVIOUS_SEPARATOR",grid:0};n[13]={fld:"BTN_NEXT",grid:0};n[14]={fld:"BTN_NEXT_SEPARATOR",grid:0};n[15]={fld:"BTN_LAST",grid:0};n[16]={fld:"BTN_LAST_SEPARATOR",grid:0};n[17]={fld:"BTN_SELECT",grid:0};n[18]={fld:"BTN_SELECT_SEPARATOR",grid:0};n[19]={fld:"BTN_ENTER2",grid:0};n[20]={fld:"BTN_ENTER2_SEPARATOR",grid:0};n[21]={fld:"BTN_CANCEL2",grid:0};n[22]={fld:"BTN_CANCEL2_SEPARATOR",grid:0};n[23]={fld:"BTN_DELETE2",grid:0};n[24]={fld:"BTN_DELETE2_SEPARATOR",grid:0};n[27]={fld:"GROUPDATA",grid:0};n[28]={fld:"TABLE1",grid:0};n[34]={fld:"TABLE2",grid:0};n[37]={fld:"TEXTBLOCKTEMPLATEID",format:0,grid:0};n[39]={lvl:0,type:"int",len:4,dec:0,sign:!1,pic:"ZZZ9",ro:0,grid:0,gxgrid:null,fnc:this.Valid_Templateid,isvalid:null,rgrid:[],fld:"TEMPLATEID",gxz:"Z5TemplateId",gxold:"O5TemplateId",gxvar:"A5TemplateId",ucs:[],op:[54,49,44],ip:[54,49,44,39],nacdep:[],ctrltype:"edit",v2v:function(n){gx.O.A5TemplateId=gx.num.intval(n)},v2z:function(n){gx.O.Z5TemplateId=gx.num.intval(n)},v2c:function(){gx.fn.setControlValue("TEMPLATEID",gx.O.A5TemplateId,0)},c2v:function(){gx.O.A5TemplateId=gx.num.intval(this.val())},val:function(){return gx.fn.getIntegerValue("TEMPLATEID",".")},nac:gx.falseFn};n[42]={fld:"TEXTBLOCKTEMPLATENOMBRE",format:0,grid:0};n[44]={lvl:0,type:"char",len:40,dec:0,sign:!1,ro:0,grid:0,gxgrid:null,fnc:null,isvalid:null,rgrid:[],fld:"TEMPLATENOMBRE",gxz:"Z6TemplateNombre",gxold:"O6TemplateNombre",gxvar:"A6TemplateNombre",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",v2v:function(n){gx.O.A6TemplateNombre=n},v2z:function(n){gx.O.Z6TemplateNombre=n},v2c:function(){gx.fn.setControlValue("TEMPLATENOMBRE",gx.O.A6TemplateNombre,0)},c2v:function(){gx.O.A6TemplateNombre=this.val()},val:function(){return gx.fn.getControlValue("TEMPLATENOMBRE")},nac:gx.falseFn};n[47]={fld:"TEXTBLOCKTEMPLATEDESCRIPCION",format:0,grid:0};n[49]={lvl:0,type:"char",len:100,dec:0,sign:!1,ro:0,grid:0,gxgrid:null,fnc:null,isvalid:null,rgrid:[],fld:"TEMPLATEDESCRIPCION",gxz:"Z7TemplateDescripcion",gxold:"O7TemplateDescripcion",gxvar:"A7TemplateDescripcion",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",v2v:function(n){gx.O.A7TemplateDescripcion=n},v2z:function(n){gx.O.Z7TemplateDescripcion=n},v2c:function(){gx.fn.setControlValue("TEMPLATEDESCRIPCION",gx.O.A7TemplateDescripcion,0)},c2v:function(){gx.O.A7TemplateDescripcion=this.val()},val:function(){return gx.fn.getControlValue("TEMPLATEDESCRIPCION")},nac:gx.falseFn};n[52]={fld:"TEXTBLOCKTEMPLATEPATH",format:0,grid:0};n[54]={lvl:0,type:"char",len:256,dec:0,sign:!1,ro:0,multiline:!0,grid:0,gxgrid:null,fnc:null,isvalid:null,rgrid:[],fld:"TEMPLATEPATH",gxz:"Z8TemplatePath",gxold:"O8TemplatePath",gxvar:"A8TemplatePath",ucs:[],op:[],ip:[],nacdep:[],ctrltype:"edit",v2v:function(n){gx.O.A8TemplatePath=n},v2z:function(n){gx.O.Z8TemplatePath=n},v2c:function(){gx.fn.setControlValue("TEMPLATEPATH",gx.O.A8TemplatePath,0)},c2v:function(){gx.O.A8TemplatePath=this.val()},val:function(){return gx.fn.getControlValue("TEMPLATEPATH")},nac:gx.falseFn};this.A5TemplateId=0;this.Z5TemplateId=0;this.O5TemplateId=0;this.A6TemplateNombre="";this.Z6TemplateNombre="";this.O6TemplateNombre="";this.A7TemplateDescripcion="";this.Z7TemplateDescripcion="";this.O7TemplateDescripcion="";this.A8TemplatePath="";this.Z8TemplatePath="";this.O8TemplatePath="";this.A5TemplateId=0;this.A6TemplateNombre="";this.A7TemplateDescripcion="";this.A8TemplatePath="";this.Events={e11022_client:["ENTER",!0],e12022_client:["CANCEL",!0]};this.EvtParms.ENTER=[[{postForm:!0}],[]];this.EvtParms.REFRESH=[[],[]];this.EnterCtrl=["BTN_ENTER2","BTN_ENTER2_SEPARATOR","BTN_ENTER"];this.setVCMap("Gx_mode","vMODE",0,"char");this.InitStandaloneVars()});gx.createParentObj(templates)