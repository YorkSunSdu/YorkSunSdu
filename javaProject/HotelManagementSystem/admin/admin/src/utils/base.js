const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootlvtr5/",
            name: "springbootlvtr5",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootlvtr5/front/pages/login/login.html'
        };
    },
    getProjectName(){
        return {
            projectName: "泉城酒店网后台管理系统"
        } 
    }
}
export default base
