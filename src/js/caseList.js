/**
 * Created by humorHan on 16/12/6.
 */
require("caseList.scss");
require("template-helper.js");
var ajax = require("util/ajax.js");
var config = require("config/config.js");
//var fakeData = require("util/fakeData.js");
var caseListTpl = require("case/caseList.tpl");

var cases = {
    init: function(){
        $(".caseListBg").css("background-image", 'url('+config.SOURCE+'case_list_bg.png)');
        this.requestCases();
    },
    requestCases: function(){
        ajax({
            url: '/api/v2/others/example-groups',
            success: function (data) {
                $(".cases").html(caseListTpl(data.groups[0].examples));
            }
        });
    }
};

$(function(){
    cases.init();
});