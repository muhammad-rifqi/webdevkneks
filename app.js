require('dotenv').config();
const express = require('express');
const apps = express();
const cors = require('cors')
const bodyParser = require('body-parser')
const port = process.env.PORT;
const path = require('path');
const cookieParser = require("cookie-parser");
const db = require('./db/query');

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
let storage = multer.diskStorage(
    {
        destination: './public/uploads/hot_issue/',
        filename: function (req, file, cb) {
            cb(null, file.originalname);
        }
    }
);
let hotissue_path = multer({ storage: storage });

let storages = multer.diskStorage(
    {
        destination: './public/uploads/news/',
        filename: function (req, file, cb) {
            cb(null, file.originalname);
        }
    }
);
let news_path = multer({ storage: storages });


//::::::::::::::: Start Of Routes ::::::::::::::::::::::::::::

apps.get('/', (req, res) => {
    res.sendFile(path.resolve('./views/login.html'));
})

apps.get('/dashboard', (req, res) => {
    res.sendFile(path.resolve('./views/dashboard.html'));
})

//::::::::::::::: Hot Issue ::::::::::::::::::::::::::::

apps.get('/hi', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/list.html'));
})

apps.get('/hi_add', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/add.html'));
})

apps.get('/hi_edit', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/edit.html'));
})

apps.get('/hic', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/list.html'));
})

apps.get('/hic_add', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/add.html'));
})

apps.get('/hic_edit', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/edit.html'));
})

apps.get('/hisc', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/list.html'));
})

apps.get('/hisc_add', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/add.html'));
})

apps.get('/hisc_edit', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/edit.html'));
})

//::::::::::::::: News ::::::::::::::::::::::::::::

apps.get('/n', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news/list.html'));
})

apps.get('/n_add', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news/add.html'));
})

apps.get('/n_edit', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news/edit.html'));
})

apps.get('/nc', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news_category/list.html'));
})

apps.get('/nc_add', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news_category/add.html'));
})

apps.get('/nc_edit', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news_category/edit.html'));
})

//::::::::::::::: Profile ::::::::::::::::::::::::::::

apps.get('/tk', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/list.html'));
})

apps.get('/tk_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/add.html'));
})

apps.get('/tk_edit', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/edit.html'));
})

apps.get('/s', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/list.html'));
})

apps.get('/s_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/add.html'));
})

apps.get('/s_edit', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/edit.html'));
})

apps.get('/v', (req, res) => {
    res.sendFile(path.resolve('./views/profile/videos/list.html'));
})

apps.get('/v_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/videos/add.html'));
})

apps.get('/v_edit', (req, res) => {
    res.sendFile(path.resolve('./views/profile/videos/edit.html'));
})

apps.get('/ph', (req, res) => {
    res.sendFile(path.resolve('./views/profile/photos/list.html'));
})

apps.get('/ph_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/photos/add.html'));
})

apps.get('/ph_edit', (req, res) => {
    res.sendFile(path.resolve('./views/profile/photos/edit.html'));
})

//::::::::::::::: Home Management ::::::::::::::::::::::::::::

apps.get('/i', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/institution/list.html'));
})

apps.get('/i_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/institution/add.html'));
})

apps.get('/i_edit', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/institution/edit.html'));
})

apps.get('/sm', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/social_media/list.html'));
})

apps.get('/sm_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/social_media/add.html'));
})

apps.get('/sm_edit', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/social_media/edit.html'));
})

apps.get('/c', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/contacts/list.html'));
})

apps.get('/c_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/contacts/add.html'));
})

apps.get('/c_edit', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/contacts/edit.html'));
})

apps.get('/b', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/banner/list.html'));
})

apps.get('/b_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/banner/add.html'));
})

apps.get('/b_edit', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/banner/edit.html'));
})

apps.get('/scp', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/scope/list.html'));
})

apps.get('/scp_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/scope/add.html'));
})

apps.get('/scp_edit', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/scope/edit.html'));
})

apps.get('/m', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/maps/list.html'));
})

apps.get('/m_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/maps/add.html'));
})

apps.get('/m_edit', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/maps/edit.html'));
})

//::::::::::::::: One Data Center ::::::::::::::::::::::::::::

apps.get('/f', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files/list.html'));
})

apps.get('/fc', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files_category/list.html'));
})

apps.get('/a', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/list.html'));
})

apps.get('/p', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes/list.html'));
})

apps.get('/pm', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_menu/list.html'));
})

apps.get('/ps', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_submenu/list.html'));
})

apps.get('/po', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_overview/list.html'));
})

//::::::::::::::: User Management ::::::::::::::::::::::::::::

apps.get('/u', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/list.html'));
})

apps.get('/cp', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/change_password/list.html'));
})

//::::::::::::::: Api & Query DB ::::::::::::::::::::::::::::

apps.get('/posts', db.posts);

apps.post('/insertnews', news_path.single('photo'), db.insertnews);

apps.post('/insertnewscategory', db.insertnewscategory);

apps.get('/posts/type/:name', db.categories);

apps.get('/categories', db.news_categories);

apps.get('/users', db.users);

apps.get('/abouts', db.abouts);

apps.get('/structure', db.structure);

apps.get('/hotissue', db.hotissue);

apps.post('/inserthotissue', hotissue_path.single('photo'), db.inserthotissue);

apps.get('/hotissuecategory', db.hotissuecategory);

apps.get('/hotissuesubcategory', db.hotissuesubcategory);

apps.post('/inserthotissubcategory', db.inserthotissubcategory);

apps.get('/institutions', db.institutions);

apps.get('/sosmed', db.sosmed);

apps.get('/scopes', db.scopes);

apps.get('/maps', db.maps);

apps.get('/contacts', db.contacts);

apps.get('/banners', db.banners);

apps.get('/files', db.files);

apps.get('/files_category', db.files_category);

apps.get('/agenda', db.agendas);

apps.get('/pdes', db.pdes);

apps.get('/pdes_menu', db.pdes_menu);

apps.get('/pdes_submenu', db.pdes_submenu);

apps.get('/pdes_overview', db.pdes_overview);

apps.post('/do_login', db.api_login);

apps.post('/act_login', db.do_login);

apps.get("/logout", db.do_logout);

//::::::::::::::: End Of Routes ::::::::::::::::::::::::::::

apps.listen(3001);