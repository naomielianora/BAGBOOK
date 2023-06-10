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


app.use(sessions({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: true }
  }))

//PAGE PERTAMA YANG MUNCUL
app.get('/', (req, res)=>{
    res.render('log_in_public')
})

let username = '';
let password = '';
let logged_name = '';
let session;

app.post('/login', (req, res)=>{
    //mengambil username dan password yg diinput user
    username = req.body.username;
    password = req.body.password;
    //cek apakah username dan password tidak kosong
    if(username && password){
        //mengubah pass yg dikirimkan menjadi hash dengan algo sha256
        const hashed_pass = crypto.createHash('sha256').update(password).digest('base64');
        userLogin(username, password).then((data) => {
            //cek apakah username&pass benar
            let res_data = (JSON.parse(JSON.stringify(data))[0]);
            //jika username&pass benar
            if(res_data !== undefined){
                //console.log(res_data.name);
                //tambahkan session yg berisi nama
                session = req.session;
                session.username=res_data.name;
                //console.log(req.session.username);
                logged_name = req.session.username;
                //halaman berpindah ke halaman utama(users)
                res.redirect('/users');
            }
            //jika data yg didapatkan kosong = username dan/atau password salah
            else{
               console.log("Wrong username and/or password");
            }
            
        }
        )
    }
    else{
        console.log("Please input username dan password");
    }
    
    
})