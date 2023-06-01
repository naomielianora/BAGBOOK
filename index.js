import express from 'express';
import bodyParser from 'body-parser'
//import sessions from 'express-session'

const PORT = 8080;
const app = express();

app.listen(PORT, () => {
    console.log(`Server is ready, listening on port ${PORT}`);
});


app.set('view engine', 'ejs');
app.use(express.static('public'))   
app.use(bodyParser.urlencoded({ extended: true }));

//page pertama yg akan muncul
app.get('/', (req, res)=>{
    res.render('dashboard_public')
})