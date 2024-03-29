const menu = {
    list() {
        return [{ "backMenu": 
        [{ "child": [{ "buttons": ["新增", "查看", "修改", "删除"], "menu": "用户", "menuJump": "列表", "tableName": "yonghu" }], "menu": "用户管理" }, 
        { "child": [{ "buttons": ["新增", "查看", "修改", "删除", "查看评论"], "menu": "酒店信息", "menuJump": "列表", "tableName": "jiudianxinxi" }], "menu": "酒店信息管理" }, 
        { "child": [{ "buttons": ["新增", "查看", "修改", "删除", "查看评论"], "menu": "客房信息", "menuJump": "列表", "tableName": "kefangxinxi" }], "menu": "客房信息管理" }, 
        { "child": [{ "buttons": ["查看", "修改", "删除", "审核", "报表"], "menu": "客房预订", "menuJump": "列表", "tableName": "kefangyuding" }], "menu": "客房预订管理" },
        { "child": [{ "buttons": ["查看", "修改", "回复", "删除"], "menu": "留言板管理", "tableName": "messages" }], "menu": "留言板管理" }, 
        { "child": [{ "buttons": ["查看", "修改"], "menu": "轮播图管理", "tableName": "config" }], "menu": "系统管理" }],
        "frontMenu":
        [
        { "child": [{ "buttons": ["查看"], "menu": "酒店信息列表", "menuJump": "列表", "tableName": "jiudianxinxi" }], "menu": "酒店信息模块" },
        { "child": [{ "buttons": ["查看", "客房预订"], "menu": "客房信息列表", "menuJump": "列表", "tableName": "kefangxinxi" }], "menu": "客房信息模块" },
        ],
        "hasBackLogin": "是", "hasBackRegister": "否", "hasFrontLogin": "否", "hasFrontRegister": "否", "roleName": "管理员", "tableName": "users" },

        { "backMenu":
        [
        { "child": [{ "buttons": ["查看", "支付"], "menu": "客房预订", "menuJump": "列表", "tableName": "kefangyuding" }], "menu": "客房预订管理" },
        { "child": [{ "buttons": ["查看", "删除"], "menu": "我的收藏管理", "tableName": "storeup" }], "menu": "我的收藏管理" }],
        "frontMenu":
        [
        { "child": [{ "buttons": ["查看"], "menu": "酒店信息列表", "menuJump": "列表", "tableName": "jiudianxinxi" }], "menu": "酒店信息模块" },
        { "child": [{ "buttons": ["查看", "客房预订"], "menu": "客房信息列表", "menuJump": "列表", "tableName": "kefangxinxi" }], "menu": "客房信息模块" },
        ],
        "hasBackLogin": "否", "hasBackRegister": "否", "hasFrontLogin": "是", "hasFrontRegister": "是", "roleName": "用户", "tableName": "yonghu" }]
    }
}
export default menu;
