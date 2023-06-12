import express from 'express';
import bodyParser from 'body-parser'
import sessions from 'express-session'
import crypto from 'crypto'

const PORT = 8080;
const app = express();

app.listen(PORT, () => {
    console.log(`Server is ready, listening on port ${PORT}`);
});


app.set('view engine', 'ejs');
app.use(express.static('public'))
app.use(express.static('images'))     
app.use(bodyParser.urlencoded({ extended: true }));


app.use(sessions({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: true }
  }))

let session;
let username;
let password;

//FOR AUTHENTICATION
const auth = (req, res, next) => {    
    if (session.username) {
        next();
    } else {
        res.redirect('/');
    }
}

let showAlert = false;
//PAGE PERTAMA YANG MUNCUL
app.get('/', (req, res)=>{
    res.render('log_in_public',{
        showAlert
    }) 
})


app.post('/log_in_public', (req, res)=>{
    //mengambil username dan password yg diinput user
    username = req.body.username;
    password = req.body.password;
    //cek apakah username dan password tidak kosong
    if(username && password){
        userLogin(username, password).then((data) => {
            //cek apakah username&pass benar
            let res_data = (JSON.parse(JSON.stringify(data))[0]);
            //jika username&pass benar
            if(res_data !== undefined){
                showAlert = false
                //tambahkan session
                session = req.session;
                //tambahkan data" user ke session
                session.username=res_data.username;
                //mengubah pass yg dikirimkan menjadi hash dengan algo sha256
                session.password = crypto.createHash('sha256').update(res_data.password).digest('base64');
                session.photo = res_data.fotoU;
                session.name = res_data.nama_lengkap;
                session.email = res_data.email;
                //status = 1 (publik), 0(admin)
                session.status = res_data.status;
                console.log(session.username);
                //jika yg log in adalah user publik
                if(session.status === 1){
                    //halaman berpindah ke halaman utama(users)
                    res.redirect('/dashboard_public');
                }
                else{
                    //halaman berpindah ke dashboard admin
                    res.redirect('/dashboard_admin');
                }
                
            }
            //jika data yg didapatkan kosong = username dan/atau password salah
            else{
                showAlert = true;
                res.redirect('/');
                }
            }
        )
    }
    else{
        showAlert = false
    }
})

let full_name;
let email;
let username_sign_up;
let password_sign_up;

app.post('/verify_email', (req, res)=>{
    //mengambil full_name, email, username, dan password yg diregister oleh user
    full_name = req.body.full_name;
    email = req.body.email_address;
    username_sign_up = req.body.username_sign_up;
    password_sign_up = req.body.password_sign_up;
    
})

app.get('/dashboard_public',auth, (req, res)=>{
    const base64Image = Buffer.from(session.photo).toString('base64');
    res.render('dashboard_public',{
        username: session.username,
        photo: base64Image
    }) 
})

app.get('/dashboard_admin',auth, (req, res)=>{
    res.render('dashboard_admin',{
        username: session.username
    }) 
})

app.get('/sign_up_public', (req, res)=>{
    res.render('sign_up_public')
})

app.get('/check_username', (req, res) => {
    const inputed_username = req.query.inputed_username;
    let isTaken = true;
    usernameChecker(inputed_username).then((data) => {
        isTaken = (JSON.parse(JSON.stringify(data))[0]) !==undefined;
        const response = {
            taken: isTaken
          };
          
          res.json(response);
    });

    
})

app.get('/log_out',auth, (req, res)=>{
    res.render('log_out') 
})

app.get('/log_out_conf',auth, (req, res)=>{
    res.render('log_out_conf',{
        username: session.username
    }) 
})

//DATABASE CONNECTION
import mysql from 'mysql'

const pool = mysql.createPool({
    user: 'root',
    password: '',
    database: 'bagbook',
    host: 'localhost'

});

const dbConnect = () => {
    return new Promise((resolve, reject) => {
        pool.getConnection((err, conn) => {
            if(err){
                reject (err);
            }
            else{
                resolve(conn);
            }
        }
        )
    })
};

const userLogin = (username, pass) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM user WHERE username = ? AND password = ?', [username, pass], (err, result) => {
            if(err){
                reject (err);
            }
            else{
                resolve(result);
            }
        }
        )
    })
};

const usernameChecker = (username_sign_up) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT idU FROM user WHERE username = ?', [username_sign_up], (err, result) => {
            if(err){
                reject (err);
            }
            else{
                resolve(result);
            }
        }
        )
    })
};

const userRegister = (full_name, email, username_sign_up, password_sign_up) => {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM user WHERE username = ? AND password = ?', [username, pass], (err, result) => {
            if(err){
                reject (err);
            }
            else{
                resolve(result);
            }
        }
        )
    })
};