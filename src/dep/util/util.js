/**
 * Created by humorHan on 16/11/3.
 */
module.exports = {
    //获取地址栏参数
    getParams: function(key){
        var reg = new RegExp("(^|&)"+ key +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        return (r != null ? unescape(r[2]) : null);
    }
};