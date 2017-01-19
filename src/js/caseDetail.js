/**
 * Created by humorHan on 16/12/7.
 */
require("caseDetail.scss");
var ajax = require("util/ajax.js");
var util = require("util/util.js");
var config = require('config/config.js');
var fakeData = require("util/fakeData.js");
var caseIntroduceTpl = require("case/caseIntroduce.tpl");
require("template-helper.js");

var detail = {
    init: function(){
        this.requestDetail();
    },
    requestDetail: function(){
        ajax({
            url: '/api/v2/others/example-detail',
            data: {
                id: util.getParams("id")
            },
            success: function (data) {
                var data = fakeData.caseDetail;
                //$(".content").html(caseIntroduceTpl(data));
            }
        });
    }
};

$(function(){
    detail.init();
});