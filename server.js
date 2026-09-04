const express = require('express');
const app = express();
const PORT = 3000;
const pool = new Pool({
    host: rds endpoint
    user: postgres user
    password:
    database: schema.sql
    max: 20
})

app.use(express.json());
app.listen(3000, () => {
    console.log("Server is running on port 3000!");
});

const fetchPostgres()

app.post('/api/menu', async (req, res) => {
    try {
        const request = req.body.request
        const menuData = await fetchMenu(/*structure arguments*/);
        const orderStructure = await fetchOrderStructure();
        res.json({
            status: "success",
            menuData: menuData
            orderStructure: orderStructure
        })
    } catch (error) {
        
    }
});

app.post('/api/process', async (req, res) => {
    try {
        const userOrder = req.body.userOrder
        
    } catch (error) {
        
    }
});
