const express = require('express');
const app = express();
const PORT = 3000;
const { Pool } = require('pg')
const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    password: 'make-password-safe',
    database: 'pizzafarm',
    port: 5432,
    max: 20
})

app.use(express.json());
app.listen(PORT, () => {
    console.log("Server is running on port 3000!");
});

/* const fetchIngredients => {
    SELECT category_id, name FROM categories
    SELECT
} */ /* finish building custom pizza generation */

app.get('/api/menu', async (req, res) => {
    const string = 'SELECT menu_id FROM menu;'
    try {
        const response = await pool.query(string)
        if (response.rows.length > 0) {
            return res.json({success: true, data: response.rows});
        } else {
            return res.status(404).json({ success: false, message: "No records found" })
        }
    } catch (error) {
        console.error(error);
        res.json({success: false, error: "There was an error in app.get /api/menu"})
    }
});

app.get('/api/ingredients', async (req, res) => {
    const string = 'SELECT pantry_id, category_id FROM ingredients;'
    try {
        const response = await pool.query(string)
        if (response.rows.length > 0) {
            return res.json({success: true, data: response.rows});
        } else {
            return res.status(404).json({ success: false, message: "No records found" })
        }
    } catch (error) {
        console.error(error);
        res.json({success: false, error: "There was an error in app.get /api/menu"})
    }
});

/* app.post('/api/processOrder', async (req, res) => {
    try {
        const userOrder = req.body.userOrder
        
    } catch (error) {
        
    }
}); */
