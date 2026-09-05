const express = require('express');
const app = express();
const PORT = 3000;
const { Pool } = require('pg')
const pool = new Pool({
    host: locahost
    user: postgres
    password:
    database: schema.sql
    port 5432
    max: 20
})

module.exports = pool;

app.use(express.json());
app.listen(3000, () => {
    console.log("Server is running on port 3000!");
});

const fetchPostgres()

app.post('/api/menu', async (req, res) => {
    try {
        const request = req.body.request
        const menuData = await pool.query(
            SELECT
                m.menu_id,
                m.name,
                mi.menu_id,
                mi.pantry_id
            FROM menu m
            JOIN menu_ingredients mi ON m.menu_id = m.pantry_id;

        );
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
