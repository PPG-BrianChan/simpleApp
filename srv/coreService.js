const cds = require('@sap/cds/lib')

module.exports = async function (srv) {

    srv.before("CREATE", "Orders", async (req) => {
        console.log(`start of hook`);
        const { Orders } = srv.entities;
        const query_get_orderNo = SELECT.one
            .from(Orders)
            .columns("max(orderNo) as orderNo");
        const result = await cds.run(query_get_orderNo);
        const jsonobj = JSON.parse(JSON.stringify(result));
        var orderNo = `${jsonobj.orderNo} + 1`;
        req.data.orderNo = JSON.stringify(eval(orderNo));
    })
}