require('dotenv').config();
const express = require('express');
const apps = express();
const cors = require('cors')
const bodyParser = require('body-parser')
const port = process.env.PORT;
const path = require('path');
const cookieParser = require("cookie-parser");
const db = require('./db/query');
const peserta = require('./db/data_peserta.json');
const pembuka = require('./db/data_pembuka.json');
const prioritas = require('./db/data_prioritas.json');
const usia = require('./db/data_usia.json');
const negara = require('./db/data_negara.json');
const kbli = require('./db/data_kbli.json');
const gender = require('./db/data_gender.json');
const area = require('./db/data_area.json');

apps.use(cookieParser());
apps.use(bodyParser.json())
apps.use(
    bodyParser.urlencoded({
        extended: true,
    })
)
apps.use(cors());
apps.use(express.static('public'));

const multer = require('multer')
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let storage = multer.diskStorage(
    {
        destination: './public/uploads/hot_issue/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let hotissue_path = multer({
    storage: storage, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let storages = multer.diskStorage(
    {
        destination: './public/uploads/news/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let news_path = multer({
    storage: storages, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let disks = multer.diskStorage(
    {
        destination: './public/uploads/photo/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let photo_path = multer({
    storage: disks, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let drive = multer.diskStorage(
    {
        destination: './public/uploads/structure/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let structure_path = multer({
    storage: drive, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

let drives = multer.diskStorage(
    {
        destination: './public/uploads/filesupload/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let files_path = multer({ storage: drives });

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

let banner_page = multer.diskStorage(
    {
        destination: './public/uploads/banner/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let page_path = multer({
    storage: banner_page, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
// :::::::::::::::::::::::::::::::::: Slide Show Path ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

let directorat_images = multer.diskStorage(
    {
        destination: './public/uploads/directorat/images/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let directorats_images = multer({
    storage: directorat_images, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});

//:::::::::::::::::::::::::::::::::::::::::::::End Of Direktorat Images :::::::::::::::::::::::::::::::::::::::
let slideshow_page = multer.diskStorage(
    {
        destination: './public/uploads/slideshow/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let slide_path = multer({
    storage: slideshow_page, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});

// :::::::::::::::: Start Of Data Slide ::::::::::::::::::::::::::::::::::::::::::::::::::::::
let data_slide = multer.diskStorage(
    {
        destination: './public/uploads/data/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let data_slide_path = multer({
    storage: data_slide, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//:::::::::::::::::::::::::: Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let kdeks_logo = multer.diskStorage(
    {
        destination: './public/uploads/kdeks/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let kdeks_logo_province = multer({
    storage: kdeks_logo, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//::::::::::::::: Start Of Page ::::::::::::::::::::::::::::::::::
let profile_logo = multer.diskStorage(
    {
        destination: './public/uploads/profile/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let profile_path = multer({
    storage: profile_logo, fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
});
//::::::::::::::: Start Of Page ::::::::::::::::::::::::::::::::::
let i_logo = multer.diskStorage(
    {
        destination: './public/uploads/institusi/',
        filename: function (req, file, cb) {
            cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname));
        }
    }
);
let institutions_path = multer({ storage: i_logo });
//::::::::::::::: Config::::::::::::::::::::::::::::::::::
function checkFileType(file, cb) {
    // const filetypes = /jpeg|jpg|png|gif/;
    // const extname = filetypes.test(path.extname(file.originalname).toLowerCase());
    // const mimetype = filetypes.test(file.mimetype);
    // if (mimetype && extname) {
    
    if(file.mimetype === 'image/jpeg' || file.mimetype === 'image/png' || file.mimetype === 'image/gif' || file.mimetype === 'application/pdf' || file.mimetype === 'image/svg+xml'){    
        return cb(null, true);
    } else {
        // console.log(mimetype,extname)
        cb('Error: Images only! (jpeg, jpg, png, gif)');
    }
}
//::::::::::::::: Start Of Page ::::::::::::::::::::::::::::::::::

apps.get('/', (req, res) => {
    res.sendFile(path.resolve('./views/login.html'));
})

apps.get('/home', (req, res) => {
    res.sendFile(path.resolve('./views/home.html'));
})
//::::::::::::::: Start Of Banner ::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::::: Welcome Banners ::::::::::::::::::::::::::::::::::::
apps.get('/welcomebanner', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/welcome/update.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/welcomebanner_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/welcome/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/edit_welcome_page/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/welcome/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::: End Of Welcome Banners :::::::::::::::::::::::::::::
//::::::::::::::::::::::::: Start Of Login Banners :::::::::::::::::::::::::::::
apps.get('/login_banner', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/login_banner/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/login_banner_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/login_banner/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/login_banner_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/login_banner/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::: End Of Login Banners :::::::::::::::::::::::::::::
//::::::::::::::::::::::::: Start Of Slide Show Banners :::::::::::::::::::::::::::::
apps.get('/b', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/banner/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/b_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/banner/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/b_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/banners/banner/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::: End Of Slide Show Banners :::::::::::::::::::::::::::::
//::::::::::::::::::::::::: End Of Banners ::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::: Start Of Direktorat ::::::::::::::::::::::::::::::::::
apps.get('/directorats', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/directorat/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/directorats_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/directorat/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/directorats_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/directorat/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/directorats_detail/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/directorat/detail.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/devision', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/divisi/devisi.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/devision_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/divisi/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/devision_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/divisi/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::: End Of Direktorat ::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::: Start Of Struktur  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/s', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/struktur/pejabat/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/s_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/struktur/pejabat/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/s_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/struktur/pejabat/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/s_logo', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/struktur/struktur/s_logo.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/s_logo_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/struktur/struktur/add_s_logo.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/s_logo_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/struktur/struktur/edit_s_logo.html'));
    } else {
        res.redirect('/');
    }
})

//:::::::::::::::::::::::::::: End Of Struktur ::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::Start Of Berita ::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/n', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/news_management/news/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/n_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/news_management/news/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/n_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/news_management/news/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/nc', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/news_management/news_category/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/nc_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/news_management/news_category/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/nc_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/news_management/news_category/edit.html'));
    } else {
        res.redirect('/');
    }
})

//::::::::::::::::::::::::::::: End Of Berita :::::::::::::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::::::::::::::: Opini ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/opini', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6 || role_id_users == 7) { // kondisi.
        res.sendFile(path.resolve('./views/opini/opini.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/opini_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6 || role_id_users == 7) { // kondisi.
        res.sendFile(path.resolve('./views/opini/opini_add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/opini_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6 || role_id_users == 7) { // kondisi.
        res.sendFile(path.resolve('./views/opini/opini_edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::: End Of Opini :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::: Start Of Isu Terkini :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/hi', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hi_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hi_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hic', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hic_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hic_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hisc', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hisc_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/hisc_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::: End Of Isu Terkini :::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Photo :::::::::::::::::::::::::::::::::::::::::::

apps.get('/ph', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/photos/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/ph_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/photos/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/ph_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/photos/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::: End Of Photo ::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Video :::::::::::::::::::::::::::::::::::::::
apps.get('/v', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/videos/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/v_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/videos/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/v_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/videos/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::: End Of Video ::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::Start Of Agenda ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/a', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/agenda/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/a_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/agenda/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/a_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/agenda/edit.html'));
    } else {
        res.redirect('/');
    }
})
// ::::::::::::::::::::::::::::::::::: End Of Agenda :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::: Start Of E-Pustaka :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/f', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/one_data_center/files/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/f_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/one_data_center/files/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/f_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/one_data_center/files/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/fc', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/one_data_center/files_category/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/fc_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/one_data_center/files_category/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/fc_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/one_data_center/files_category/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::  End Of E-Pustaka ::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::: Start Of Data :::::::::::::::::::::::::::::::::::::
apps.get('/menu_data', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/data/menu/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/menudata_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/data/menu/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/menudata_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/data/menu/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/sliderdata', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/slider/data.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/sliderdata_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/slider/add_data.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/sliderdata_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/slider/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/dataset', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/dataset/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/dataset_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/dataset/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/dataset_detail/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/dataset/view.html'));
    } else {
        res.redirect('/');
    }
});

apps.get('/narations/:id/:name', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/data/dashboard/naration.html'));
    } else {
        res.redirect('/');
    }
});

apps.get('/dashboard', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 3 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/data/dashboard/list.html'));
    } else {
        res.redirect('/');
    }
});

apps.get('/dashboard_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/dashboard/add.html'));
    } else {
        res.redirect('/');
    }
});

apps.get('/submenu_data', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/submenu/list.html'));
    } else {
        res.redirect('/');
    }
});

apps.get('/submenudata_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/submenu/add.html'));
    } else {
        res.redirect('/');
    }
});

apps.get('/submenudata_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/data/submenu/edit.html'));
    } else {
        res.redirect('/');
    }
});
//:::::::::::::::::::::::::::::::::::::::: End Of Data :::::::::::::::::::::::::::::::::::::::::::::::::
// ::::::::::::::::::::::::::::::::::::::::::::::: Start Of Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/kdeks_form/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/kdeks/kdeks_form.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/kdeks', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/kdeks/kdeks.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/kdeks_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4 || role_id_users == 6) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/kdeks/kdeks_edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::::::::::::::::End Of Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::Start Of Master  Kdeks ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/master', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/master/master.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/master_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/master/master_add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/master_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/master/master_edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::::::::::::::::End Of Master Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::::::::::::::::Start Of Province Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/province', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/province/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/province_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/province/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/province_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/kdeks/province/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::::::::::::::::End Of Province Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::::::::::::::::::::::::::::::::::::::: Start Of Zona Khas :::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/zk', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/zona_khas/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/zk_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/zona_khas/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/zk_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/zona_khas/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::::::::::::::::::: End Of Zona Khas :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::::: Start Of Tagging :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/tg', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2 || role_id_users == 4) { // kondisi.
        res.sendFile(path.resolve('./views/tagging/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/tg_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/tagging/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/tg_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/tagging/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::: End Of Tagging ::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::: Start Of Users ::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/u', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/users/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/u_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/users/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/u_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/users/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/cp', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/change_password/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/new_user', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/new_user/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/whitelist', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/whitelist/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/ip_address', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/whitelist/ipaddress.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/ip_address_approve', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/approve/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/ip_address_rejects', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) { // kondisi.
        res.sendFile(path.resolve('./views/user_management/rejected/list.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::::::::::::: End Of  User Management ::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Profile :::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Tentang Kami :::::::::::::::::::::::::::::::::::::::::
apps.get('/tk_form/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/tentang_kami/tentang_kami_form.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/tk', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/tentang_kami/tentang_kami.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/tk_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/tentang_kami/tentang_kami_edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::: End Tentang Kami :::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::::: Start Of Ekonomi Syariah :::::::::::::::::::::::::::::::::::::::
apps.get('/es_form/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/ekonomi_syariah/ekonomi_syariah_form.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/es', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/ekonomi_syariah/ekonomi_syariah.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/es_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/ekonomi_syariah/edit.html'));
    } else {
        res.redirect('/');
    }
})
//:::::::::::::::::::::::::::::::::::::::::: End Of Ekonomi Syariah :::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Institusi ::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/i', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/institution/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/i_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/institution/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/i_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/institution/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::::::::: End Of Insitusi ::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Start Of Social Media ::::::::::::::::::::::::::::::::::::::::::::
apps.get('/sm', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/social_media/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/sm_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/social_media/edit.html'));
    } else {
        res.redirect('/');
    }
})

//::::::::::::::::::::::::::::::::::::::::::: End Of Social Media ::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Contact ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/c', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/contacts/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/c_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/contacts/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::::::::: End Contact ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Maps ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/m', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/maps/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/m_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/maps/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::::::::: End Of Maps ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Scope ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/scp', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/scope/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/scp_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/profile/scope/edit.html'));
    } else {
        res.redirect('/');
    }
})
//::::::::::::::::::::::::::::::::::::::::::: End Of Scope ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::End Of Profile ::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::;:::::::Start Of Pengaturan ::::::::::::::::::::::::::::
apps.get('/titleweb', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/title.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/web_title_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_title.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/logo', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/logo.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/web_logo_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_logo.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/header', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/header.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/web_header_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_header.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/color', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/color.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/web_color_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_color.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/menu', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/menu/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/menu_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/menu/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/menu_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/menu/edit.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/submenu', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/sub_menu/list.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/submenu_add', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/sub_menu/add.html'));
    } else {
        res.redirect('/');
    }
})

apps.get('/submenu_edit/:id', (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1) { // kondisi.
        res.sendFile(path.resolve('./views/pengaturan/sub_menu/edit.html'));
    } else {
        res.redirect('/');
    }
})

//::::::::::::::: Api & Query DB :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/register', (req, res) => {
    res.sendFile(path.resolve('./views/register.html'));
})

// ::::::::::::::::::::::::::: Ekonomi Syariah :::::::::::::::::::::::::::::::::::::::::::::
apps.get('/es_abouts', db.es_abouts);

apps.get('/es_detailabouts/:id', db.es_detailabouts);

apps.post('/es_updateabout', profile_path.single('logo_philosophy'), db.es_updateabouts);

// :::::::::::::::::::::::::: Api Frontend ::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/api/newspaging', db.pagingnews);

apps.get('/abouts', db.abouts);

apps.get('/detailabouts/:id', db.detailabout);

apps.post('/updateabout', profile_path.single('logo_philosophy_images'), db.updateabouts);

apps.get('/deleteabouts/:id', db.deleteabout);

// :::::::::::::::::::::::::::::::::::::: KDEKS :::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/api_news_kdeks', db.news_kdeks);

apps.get('/api_news_detail_kdeks/:id', db.news_details_kdeks);

apps.get('/api_newscategory_kdeks', db.news_categories_kdeks);

apps.get('/api_detailnewscategory_kdeks/:id', db.news_detailnewscategory_kdeks);

apps.get('/api_about_kdeks', db.abouts_kdeks);

apps.get('/api_history_kdeks', db.history_kdeks);

apps.get('/api_history_province_kdeks/:id', db.history_province_kdeks);

apps.get('/api_about_province_kdeks/:id', db.about_province_kdeks);

apps.get('/api_kdeks', db.kdeks);

apps.get('/detail_kdeks/:id', db.detailkdeks);

apps.post('/insertkdeks', kdeks_logo_province.fields([{ name: "photo", maxCount: 1 }, { name: "sk", maxCount: 1 }, { name: "structure", maxCount: 1 }]), db.insertkdeks);

apps.post('/updatekdeks', kdeks_logo_province.fields([{ name: "photo", maxCount: 1 }, { name: "sk", maxCount: 1 }, { name: "structure", maxCount: 1 }]), db.updatekdeks);

apps.get('/deletekdeks/:id/:foto', db.deletekdeks);

apps.get('/api_kdeks_list', db.abouts_kdeks_list);

apps.post('/updateaboutkdeks', db.updateaboutskdeks);

apps.get('/delete_about_kdeks/:id', db.deleteaboutkdeks);
//::::::::::::::::::::::::::: KDEKS :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/api_dashboard', db.data_dashboard);

apps.get('/api_dashboard_detail/:id', db.detail_data_dashboard);

apps.get('/api_dashboard_delete/:id', db.data_dashboard_delete);

apps.get('/api_opini', db.opini);

apps.get('/api_opini_detail/:id', db.opini_detail);

apps.get('/api_web_profile', db.web_profile);

apps.get('/api_detail_webprofile/:id', db.web_profile_detail);

apps.get('/api_menu', db.menu);

apps.get('/api_menu_detail/:id', db.menu_detail);

apps.get('/api_submenu', db.submenu);

apps.get('/api_submenu_detail/:id', db.submenu_detail);

apps.get('/kneks/api', db.api_kneks);

//::::::::::::::::::::::::::::: Start Of Query ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.post('/insertreg', db.user_register);

apps.post('/do_login', db.do_login);

apps.post('/act_login', db.do_login);

apps.get("/logout", db.do_logout);

apps.get("/analitics", db.analitics);

//::::::::::::::: Api & Query DB BANNERS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/slideshow', db.slideshows);

apps.get('/detailslideshow/:id', db.detailslideshow);

apps.post('/insertslideshow', slide_path.single('images'), db.insertslideshow);

apps.get('/deleteslideshow/:id', db.deleteslideshow);

apps.post('/updateslideshow', slide_path.single('images'), db.updateslideshow);

//::::::::::::::: Api & Query DB NEWS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/posts', db.posts);

apps.get('/search_posts', db.seacrh_posts);

apps.post('/insertnews', news_path.single('photo'), db.insertnews);

apps.post('/updatenews', news_path.single('photo'), db.updatenews);

apps.get('/newsdetail/:id', db.newsdetail);

apps.get('/deletenews/:id/:foto', db.deletenews);

apps.post('/insertnewscategory', db.insertnewscategory);

apps.post('/updatenewscategory', db.updatenewscategory);

apps.get('/posts/type/:name', db.categories);

apps.get('/categories', db.news_categories);

apps.get('/news_category/cat/:id', db.news_categories_menu);

apps.get('/news/search/:date', db.news_categories_date);

apps.get('/detailnewscategory/:id', db.detailnewscategory);

apps.get('/deletenewscategory/:id', db.deletenewscategory);

//::::::::::::::: Api & Query DB PHOTOS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/photodetail/:id', db.photodetail);

apps.get('/deletephoto/:id/:foto', db.deletephoto);

apps.post('/insertphoto', photo_path.single('photo'), db.insertphoto);

apps.post('/updatephoto', photo_path.single('photo'), db.updatephoto);

//::::::::::::::: Api & Query DB VIDEOS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.post('/insertvideo', db.insertvideo);

apps.post('/updatevideo', db.updatevideos);

apps.get('/videodetail/:id', db.videodetail);

apps.get('/deletevideo/:id', db.deletevideo);

//::::::::::::::: Api & Query DB USERS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/users', db.users);

apps.get('/users_detail/:id', db.users_detail);

apps.get('/users_new', db.users_new);

apps.get('/users_whitelist', db.users_whitelist);

apps.get('/ip_address_approved', db.ip_address_approve);

apps.get('/ip_address_rejected', db.ip_address_reject);

apps.get('/users_ipaddress', db.users_ipaddress);

apps.get('/roles', db.userroles);

apps.get('/approveusers/:id', db.approveusers);

apps.get('/approveipaddress/:id', db.approveipaddress);

apps.get('/users_ipaddress', db.users_ipaddress);

apps.get('/deleteipaddress/:id', db.deleteipaddress);

apps.get('/deleteapproveip/:id', db.deleteapproveip);

apps.get('/deleterejectedip/:id', db.deleterejectedip);

apps.post('/insertusers', db.insertusers);

apps.post('/updateusers', db.updateusers);

apps.get('/deleteuser/:id', db.deleteuser);

apps.get('/updatepassword', db.updatepassword);

apps.post('/changespassword', db.changespassword);

//::::::::::::::: Api & Query DB ABOUTS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::: Api & Query DB STRUCTURE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/structure', db.structure);

apps.get('/detailstructure/:id', db.detailstructure);

apps.get('/deletestructure/:id/:foto', db.deletestructure);

apps.post('/insertstructure', structure_path.single('photo'), db.inserstructure);

apps.post('/updatestructure', structure_path.single('photo'), db.updatestructure);

//::::::::::::::: Api & Query DB HOT ISSUE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/directorat', db.directorat);

apps.get('/directorat_fe', db.directorats_fe);

apps.get('/directorats_fe_news/:id', db.directorats_fe_news);

apps.get('/directorats_fe_photos/:id', db.directorats_fe_photos);

apps.get('/directorats_fe_videos/:id', db.directorats_fe_videos);

apps.get('/directorats_fe_opini/:id', db.directorats_fe_opini);

apps.get('/directorats_fe_files/:id', db.directorats_fe_files);

apps.get('/kdeks_fe_news/:id', db.kdeks_fe_news);

apps.get('/kdeks_fe_photos/:id', db.kdeks_fe_photos);

apps.get('/kdeks_fe_files/:id', db.kdeks_fe_files);

apps.get('/kdeks_fe_opini/:id', db.kdeks_fe_opini);

apps.get('/directorat_path/:id', db.directorat_path);

apps.post('/insertdirectorats', directorats_images.fields([{ name: "images", maxCount: 1 }, { name: "banners", maxCount: 1 }]), db.insertdirectorats);

apps.post('/directorats_update', directorats_images.fields([{ name: "images", maxCount: 1 }, { name: "banners", maxCount: 1 }]), db.update_directorats);

apps.get('/directorats_delete/:id/:dir/:banner', db.delete_direactorats);

apps.get('/directorat_detail/:id', db.directorat_details);

//::::::::::::::::::::::::::::: DIVISI ::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/directorat_devisi', db.directorat_devisi);

apps.post('/directorats_devisi_add', db.directorat_devisi_add);

apps.get('/directorats_devisi_detail/:id', db.directorat_devisi_detail);

apps.get('/division_delete/:id', db.directorats_devisi_delete);

apps.post('/directorats_devisi_edit', db.directorat_devisi_update);

//:::::::::::::::::::::::::::: Hot Issue ::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/hotissue', db.hotissue);

apps.get('/hotissuedetail/:id', db.hotissue_detail);

apps.post('/inserthotissue', hotissue_path.single('photo'), db.inserthotissue);

apps.get('/deletehotissue/:id/:foto', db.deletehotissue);

apps.post('/updatehotissue', hotissue_path.single('photo'), db.updatehotissue);

//:::::::::::::::::::::::::::: Hot Issue Category ::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/hotissuecategory', db.hotissuecategory);

apps.get('/detailhotissuecategory/:id', db.detailhotissuecategory);

apps.post('/inserthotissuecategory', db.inserthotissuecategory);

apps.post('/updatehotissuecategory', db.updatehotissuecategory);

apps.get('/deletehotissuecategory/:id', db.deletehotissuecategory);

//::::::::::::::::::::::::::::::: Sub Category Issue :::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/hotissuesubcategory', db.hotissuesubcategory);

apps.get('/detailhotissuesubcategory/:id', db.detailhotissuesubcategory);

apps.post('/inserthotissubcategory', db.inserthotissubcategory);

apps.post('/updatehotissuesubcategory', db.updatehotissuesubcategory);

apps.get('/deletehotissuesubcategory/:id', db.deletehotissuesubcategory);
//::::::::::::::: Api & Query DB INSTITUTION ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/institutions', db.institutions);

apps.get('/detailinstitutions/:id', db.detailinstitutions);

apps.get('/deleteinstitutions/:id', db.deleteinstitution);

apps.post('/updateinstitution', institutions_path.single('logo_member'), db.updateinstitution);

apps.post('/insertinstitution', institutions_path.single('logo_member'), db.insertinstitution);
//::::::::::::::: Api & Query DB SOSMED ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/sosmed', db.sosmed);

apps.get('/detailsosmed/:id', db.detailsosmed);

apps.get('/deletesosmed/:id', db.deletesosmed);

apps.post('/updatesosmed', db.updatesosmed);

//::::::::::::::: Api & Query DB SCOPES ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/scopes', db.scopes);

apps.get('/detailscopes/:id', db.detailscopes);

apps.get('/deletescopes/:id', db.deletescopes);

apps.post('/updatescopes', db.updatescopes);
//::::::::::::::: Api & Query DB MAPS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/maps', db.maps);

apps.post('/updatemaps', db.updatemaps);
//::::::::::::::: Api & Query DB CONTACTS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/contacts', db.contacts);

apps.post('/updatecontacts', db.updatecontacts);

apps.post('/questbook', db.questbook);

//::::::::::::::: Api & Query DB FILES ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/files', db.files);

apps.post('/insertfiles', files_path.single('file_data'), db.insertfileupload);

apps.post('/updatefileupload', files_path.single('file_data'), db.updatefileupload);

apps.get('/deletefilesupload/:id/:file', db.deletefileupload);

apps.get('/files_category', db.files_category);

apps.get('/files_category_detail/:id', db.files_category_details);

apps.post('/updatefilescategory', db.updatefilescategory);

apps.get('/filesdetails/:id', db.filesdetails);

apps.post('/insertfilescategory', db.insertfilecategorydetails);

apps.get('/deletefilecategory/:id', db.deletefilecategorydetail);

//::::::::::::::: Api & Query DB AGENDA ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/agenda', db.agendas);

apps.get('/agenda_graph', db.agenda_graph);

apps.post('/insertagenda', db.insertagenda);

apps.get('/deleteagenda/:id', db.deleteagenda);

apps.get('/agendadetails/:id', db.agendadetails);

apps.post('/updateagenda', db.updateagenda);

apps.get('/search_agenda', db.search_agenda);

//::::::::::::::: Api & Query DB PDES ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/zona_khas', db.khas_zone);

apps.get('/zona_peta', db.zona_peta);

apps.get('/detail_zona_khas/:id', db.detail_khas_zone);

apps.post('/insertzonakhas', db.insertzonakhas);

apps.post('/updatezonakhas', db.updatezonakhas);

apps.get('/deletezonakhas/:id', db.deletezonakhas);

apps.get('/tagging', db.tagging);

apps.get('/detailtagging/:id', db.detailtagging);

apps.post('/inserttagging', db.inserttagging);

apps.get('/deletetagging/:id', db.deletetagging);

apps.post('/updatetagging', db.updatetagging);

//::::::::::::::: Api & Query DB DAERAH ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/provinces', db.provinces);

apps.get('/provinces_detail/:id', db.provinces_detail);

apps.get('/kbli', async (req, res) => {
    return res.status(200).json(kbli);
});

apps.get('/peserta', async (req, res) => {
    return res.status(200).json(peserta);
});

apps.get('/area', async (req, res) => {
    return res.status(200).json(area);
});

apps.get('/gender', async (req, res) => {
    return res.status(200).json(gender);
});

apps.get('/negara', async (req, res) => {
    return res.status(200).json(negara);
});

apps.get('/pembuka', async (req, res) => {
    return res.status(200).json(pembuka);
});

apps.get('/prioritas', async (req, res) => {
    return res.status(200).json(prioritas);
});

apps.get('/usia', async (req, res) => {
    return res.status(200).json(usia);
});

//::::::::::::::: Api & Query DB BANNERS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/login_banners', db.login_banners);

apps.get('/detail_login_banner/:id', db.detail_login_banners);

apps.post('/insertloginbanners', page_path.single('files_image'), db.insertloginbanner);

apps.post('/updateloginbanners', page_path.single('files_image'), db.updateloginbanners);

apps.get('/delete_login_banner/:id/:foto', db.delete_login_banner);

apps.get('/s_logos', db.slogo);

apps.post('/insert_slogo', page_path.single('files_image'), db.inserts_slogo);

apps.get('/detail_s_logos/:id', db.detail_slogo);

apps.post('/updateslogo', page_path.single('files_image'), db.updates_slogo);

apps.get('/delete_slogo/:id/:foto', db.delete_slogos);

apps.get('/welcome_pages', db.welcome_pages);

apps.get('/detail_welcome_pages/:id', db.detail_welcome_pages);

apps.post('/insert_welcome_pages', page_path.single('files_image'), db.insert_welcome_pages);

apps.post('/update_welcome_pages', page_path.single('files_image'), db.update_welcome_pages);

apps.get('/delete_welcome_page/:id/:foto', db.delete_welcome_page);

//::::::::::::::: Api & Query CUSTOM PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/data_submenu', db.data_submenus);

apps.post('/insert_submenu', db.insert_submenus);

apps.post('/update_submenu', db.update_submenus);

apps.get('/delete_submenu/:id', db.delete_submenus);

apps.get('/detail_submenu/:id', db.detail_submenus);

apps.get('/detail_submenus_edit/:id', db.detail_submenus_edit);

apps.post('/insertapidashboard', db.insertapidashboards);

apps.post('/emptyapidashboards', db.emptyapidashboard);

apps.post('/updateapidashboards', db.updateapidashboard);

apps.get('/data_menu', db.data_menus);

apps.get('/data_menu_fe', db.data_menu_fe);

apps.get('/menu_fe', db.dropdown_menu);

apps.get('/detail_data_menus/:id', db.detail_data_menus);

apps.get('/delete_data_menu/:id', db.deletedatamenus);

apps.post('/insert_data_menu', db.insertdatamenus);

apps.post('/update_data_menu', db.updatedatamenus);

apps.get('/slider_data', db.sliders_data);

apps.get('/slider_data_fe', db.sliders_data_fe);

apps.post('/insertsliderdata', data_slide_path.single('image'), db.insertsliderdata);

apps.get('/detail_slider_data/:id', db.detail_sliders_data);

apps.post('/updatesliderdata', data_slide_path.single('image'), db.updateslidersdata);

apps.get('/delete_slider_data/:id/:photo', db.delete_slider_data);

apps.get('/sourcesdata', db.sourcesdata);

apps.get('/sourcesdatadetail/:id', db.sourcesdatadetail);

apps.get('/deletesourcesdata/:id', db.deletesourcesdata);

apps.post('/insertsourcesdata', db.insertsourcesdata);

apps.post('/updatesourcedata', db.updatesourcedata);

apps.get('/sourcesdatadetaillist/:id', db.sourcesdatadetail);
//::::::::::::::::::::::::::: APi Opini ::::::::::::::::::::::::::::::::::::

apps.post('/insertopini', db.insertopini);

apps.post('/updateopini', db.updateopini);

apps.get('/deleteopini/:id', db.deleteopini);

//:::::::::::::::::::::::::::::::::::::::::::::::::::::: Api & Setting ::::::::::::::::::::::::::::::::::::::::::::::::

apps.post('/updatewebtitle', db.updatewebtitle);

apps.post('/updateweblogo', db.updateweblogo);

apps.post('/updatewebheader', db.updatewebheader);

apps.post('/updatewebcolor', db.updatewebcolor);

apps.post('/insertmenu', db.insertmenu);

apps.post('/updatemenu', db.updatemenu);

apps.post('/insertsubmenu', db.insertsubmenu);

apps.post('/updatesubmenu', db.updatesubmenu);

apps.post('/post_puppeteer',db.download_image_base64);

//::::::::::::::: Api & Query CUSTOM DATA NARATION PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/dashboard_naration/:id', db.dashboard_naration);

apps.post('/insertprovince', db.insertprovinces);

apps.post('/updateprovince', db.updateprovinces);

apps.get('/province_delete/:id', db.deleteprovinces);

apps.post('/acts_login', db.api_login);

apps.get("/acts_logout", db.api_logout);

//::::::::::::::::: End Of KDEKS ::::::::::::::::::::::::::
//28789 dev
//50567 stag
apps.listen(50567);