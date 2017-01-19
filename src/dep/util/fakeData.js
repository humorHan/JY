/**
 * Created by humorHan on 16/12/7.
 */
var Mock = require("mock");

module.exports = {
    caseList: Mock.mock({
        'groups|2-5': [{
            'id|+1': 1,  //分组id
            'name|1': ['分组名称1', '分组名称2', '分组名称3'],     //分组名称
            'examples|5-6': [{
                'id|+1': 10,    //案例id
                'title|1': ['案例标题1', '案例标题2', '案例标题3'],   //案例标题
                'subtitle|1': ['案例副标题案例副标题1', '案例副标题案例副标题2', '案例副标题案例副标题3'],
                'image_key': 'temp-doll.png'
            }]
        }]
    }),
    caseDetail: Mock.mock({
        'id': 1,
        'title|1': ['案例标题1', '案例标题2', '案例标题3'],   //案例标题
        'description|1': ['案例描述描述描述描述描述1', '案例描述描述描述描述描述2', '案例描述描述描述描述描述3'],
        'background_key': 'temp-case-detail-bg.png',    //详情页背景地址
        'content': Mock.Random.sentence(50, 100),
        'products|3-5': [{
            'name|1': ['物料1', '物料2', '物料3'],
            'image_key': 'floor_product_s_tejiamenxingzhanjia.png',
            'url': '/product?id=10'
        }],
        'designs|3-5': [{
            'name|1': ['设计1', '设计2', '设计3'],
            'image_key': 'floor_product_s_tejiamenxingzhanjia.png',
            'url': ''
        }],
        'custom': {
            'name': '乐纯酸奶公司名称',
            'logo_key': 'floor_product_s_tejiamenxingzhanjia.png',
            'description': '北京兜子科技有限公司成立于2014年7月，旗下酱印网是新一代互联网印刷品牌。酱印网将以互联网的方式重构传统商务印刷领域，致力于打造中国最大的互联网印刷和设计服务平台。团队核心成员来自腾讯、阿里等知名企业'+
                            '公司在2014年获得北软、厚德和百度前高管蔡虎的百万级天使轮融资，在2015年获得近千万preA轮融资，目前逐步发展成为集线上活动及票务平台、宣传品印制、活动周边相关物料购销、活动品牌传播整合服务为一体的综合型企业。',
            'background_key': 'temp-case-detail-bg.png'
        }
    })
};