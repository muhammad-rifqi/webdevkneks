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
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let hotissue_path = multer({ storage: storage });
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let storages = multer.diskStorage(
    {
        destination: './public/uploads/news/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let news_path = multer({ storage: storages });
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let disks = multer.diskStorage(
    {
        destination: './public/uploads/photo/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let photo_path = multer({ storage: disks });
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let drive = multer.diskStorage(
    {
        destination: './public/uploads/structure/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let structure_path = multer({ storage: drive });
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

let drives = multer.diskStorage(
    {
        destination: './public/uploads/filesupload/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let files_path = multer({ storage: drives });

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

let custom_page = multer.diskStorage(
    {
        destination: './public/uploads/custompage/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let page_path = multer({ storage: custom_page });
// :::::::::::::::::::::::::::::::::: Slide Show Path ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

let directorat_images = multer.diskStorage(
    {
        destination: './public/uploads/directorat/images/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let directorats_images = multer({ storage: directorat_images });

//:::::::::::::::::::::::::::::::::::::::::::::End Of Direktorat Images :::::::::::::::::::::::::::::::::::::::


let slideshow_page = multer.diskStorage(
    {
        destination: './public/uploads/slideshow/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let slide_path = multer({ storage: slideshow_page });

//::::::::::::::: Start Of Routes :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/', (req, res) => {
    res.sendFile(path.resolve('./views/login.html'));
})

apps.get('/dashboard', (req, res) => {
    res.sendFile(path.resolve('./views/dashboard.html'));
})

//::::::::::::::: Hot Issue :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/hi', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/list.html'));
})

apps.get('/hi_add', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/add.html'));
})

apps.get('/hi_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue/edit.html'));
})

apps.get('/hic', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/list.html'));
})

apps.get('/hic_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/edit.html'));
})

apps.get('/hisc', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/list.html'));
})

apps.get('/hisc_add', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/add.html'));
})

apps.get('/hisc_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_sub_category/edit.html'));
})

//::::::::::::::: News :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/n', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news/list.html'));
})

apps.get('/n_add', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news/add.html'));
})

apps.get('/n_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news/edit.html'));
})

apps.get('/nc', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news_category/list.html'));
})

apps.get('/nc_add', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news_category/add.html'));
})

apps.get('/nc_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/news_category/edit.html'));
})

apps.get('/tg', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/tagging/list.html'));
})

apps.get('/tg_add', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/tagging/add.html'));
})

apps.get('/tg_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/news_management/tagging/edit.html'));
})

//::::::::::::::: Profile ::::::::::::::::::::::::::::

apps.get('/tk', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/list.html'));
})

apps.get('/tk_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/edit.html'));
})

apps.get('/s', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/list.html'));
})

apps.get('/s_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/add.html'));
})

apps.get('/s_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/edit.html'));
})

apps.get('/s_logo', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/s_logo.html'));
})

apps.get('/custom_add_s_logo', (req, res) => {
    res.sendFile(path.resolve('./views/profile/struktur/add_s_logo.html'));
})

apps.get('/v', (req, res) => {
    res.sendFile(path.resolve('./views/profile/videos/list.html'));
})

apps.get('/v_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/videos/add.html'));
})

apps.get('/v_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/videos/edit.html'));
})

apps.get('/ph', (req, res) => {
    res.sendFile(path.resolve('./views/profile/photos/list.html'));
})

apps.get('/ph_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/photos/add.html'));
})

apps.get('/ph_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/photos/edit.html'));
})

apps.get('/zk', (req, res) => {
    res.sendFile(path.resolve('./views/profile/zona_khas/list.html'));
})

apps.get('/zk_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/zona_khas/add.html'));
})

apps.get('/zk_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/zona_khas/edit.html'));
})

apps.get('/kdeks', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/kdeks.html'));
})

apps.get('/kdeks_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/kdeks_add.html'));
})

apps.get('/kdeks_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/kdeks_edit.html'));
})

apps.get('/master', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/master.html'));
})

apps.get('/master_add', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/master_add.html'));
})

apps.get('/master_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/master_edit.html'));
})

apps.get('/es', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/ekonomi_syariah.html'));
})

//::::::::::::::: Home Management :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/i', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/institution/list.html'));
})

apps.get('/i_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/institution/edit.html'));
})

apps.get('/sm', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/social_media/list.html'));
})

apps.get('/sm_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/social_media/edit.html'));
})

apps.get('/c', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/contacts/list.html'));
})

apps.get('/c_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/contacts/edit.html'));
})

apps.get('/b', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/banner/list.html'));
})

apps.get('/b_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/banner/add.html'));
})

apps.get('/b_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/banner/edit.html'));
})

apps.get('/scp', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/scope/list.html'));
})

apps.get('/scp_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/scope/edit.html'));
})

apps.get('/m', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/maps/list.html'));
})

apps.get('/m_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/maps/edit.html'));
})

apps.get('/directorats', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/directorat/list.html'));
})

apps.get('/directorats_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/directorat/add.html'));
})

apps.get('/directorats_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/directorat/edit.html'));
})

apps.get('/directorats_detail/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/directorat/detail.html'));
})

apps.get('/directorats_devisi/:id', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/directorat/devisi.html'));
})

//::::::::::::::: One Data Center ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/f', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files/list.html'));
})

apps.get('/f_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files/edit.html'));
})

apps.get('/f_add', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files/add.html'));
})

apps.get('/fc', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files_category/list.html'));
})

apps.get('/fc_add', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files_category/add.html'));
})

apps.get('/fc_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/files_category/edit.html'));
})

apps.get('/a', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/list.html'));
})

apps.get('/a_add', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/add.html'));
})

apps.get('/a_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/edit.html'));
})

apps.get('/p', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes/list.html'));
})

apps.get('/p_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes/edit.html'));
})

apps.get('/customfront', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/custom_page/list.html'));
})

apps.get('/custom_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/custom_page/add.html'));
})

apps.get('/welcomebanner', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/welcome/update.html'));
})

apps.get('/custom_add_welcome', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/welcome/add.html'));
})

//::::::::::::::: User Management ::::::::::::::::::::::::::::

apps.get('/u', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/list.html'));
})

apps.get('/u_add', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/add.html'));
})

apps.get('/u_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/edit.html'));
})

apps.get('/cp', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/change_password/list.html'));
})

apps.get('/new_user', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/new_user/list.html'));
})

apps.get('/whitelist', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/whitelist/list.html'));
})

apps.get('/ip_address', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/whitelist/ipaddress.html'));
})
//:::::::::::::::::::::::::::::::: Custom Page :::::::::::::::::::::::::::::::::::::


apps.get('/slidefront', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/slide/list.html'));
})

apps.get('/slide_add', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/slide/add.html'));
})

apps.get('/slidedata', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/slide/data.html'));
})

apps.get('/datafront', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/list.html'));
})

apps.get('/data_add', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/add.html'));
})

apps.get('/data_detail/:id', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/view.html'));
});

apps.get('/narationfront/:id/:name', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/naration.html'));
});

apps.get('/metabase', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/metabase.html'));
});

apps.get('/metabaseadd', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/metabaseadd.html'));
});

apps.get('/slidefrontsubmenu', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/subdata/list.html'));
});

apps.get('/slidefrontsubmenuadd', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/subdata/add.html'));
});

// :::::::::::::::::::::::::::: Opini ::::::::::::::::::::::::::::::::::::::::

apps.get('/opini', (req, res) => {
    res.sendFile(path.resolve('./views/opini/opini.html'));
})

apps.get('/opini_add', (req, res) => {
    res.sendFile(path.resolve('./views/opini/opini_add.html'));
})

apps.get('/opini_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/opini/opini_edit.html'));
})

//::::::::::::::: Pengaturan :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/titleweb', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/title.html'));
})

apps.get('/web_title_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_title.html'));
})

apps.get('/logo', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/logo.html'));
})

apps.get('/web_logo_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_logo.html'));
})

apps.get('/header', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/header.html'));
})

apps.get('/web_header_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_header.html'));
})

apps.get('/color', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/color.html'));
})

apps.get('/web_color_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/identitas_web/edit_color.html'));
})

apps.get('/menu', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/menu/list.html'));
})

apps.get('/menu_add', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/menu/add.html'));
})

apps.get('/menu_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/menu/edit.html'));
})

apps.get('/submenu', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/sub_menu/list.html'));
})

apps.get('/submenu_add', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/sub_menu/add.html'));
})

apps.get('/submenu_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/pengaturan/sub_menu/edit.html'));
})

//::::::::::::::: Api & Query DB :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/dashboards', db.dashboards);

apps.get('/register', (req, res) => {
    res.sendFile(path.resolve('./views/register.html'));
})


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

apps.get('/api/newspaging', db.pagingnews);

apps.get('/api_news', db.news_kdeks);

apps.get('/api_news_detail/:id', db.news_details_kdeks);

apps.get('/api_newscategory', db.news_categories_kdeks);

apps.get('/api_detailnewscategory/:id', db.news_detailnewscategory_kdeks);


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

apps.get('/users_ipaddress', db.users_ipaddress);

apps.get('/roles', db.userroles);

apps.get('/approveusers/:id', db.approveusers);

apps.get('/approveipaddress/:id', db.approveipaddress);

apps.post('/insertusers', db.insertusers);

apps.post('/updateusers', db.updateusers);

apps.get('/deleteuser/:id', db.deleteuser);

apps.get('/updatepassword', db.updatepassword);

apps.post('/changespassword', db.changespassword);

//::::::::::::::: Api & Query DB ABOUTS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/abouts', db.abouts);

apps.get('/api_about', db.abouts_kdeks);

apps.get('/api_history', db.history_kdeks);

apps.get('/detailabouts/:id', db.detailabout);

apps.get('/api_sejarah_province/:id', db.history_province);

apps.get('/api_about_province/:id', db.about_province);

apps.post('/updatetentangkami', db.updateabouts);

apps.get('/deleteabouts/:id', db.deleteabout);

apps.post('/insertkdeks', db.insertkdeks);

apps.post('/updatekdeks', db.updatekdeks);

//::::::::::::::: Api & Query DB STRUCTURE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/structure', db.structure);

apps.get('/detailstructure/:id', db.detailstructure);

apps.get('/deletestructure/:id/:foto', db.deletestructure);

apps.post('/insertstructure', structure_path.single('photo'), db.inserstructure);

apps.post('/updatestructure', structure_path.single('photo'), db.updatestructure);

//::::::::::::::: Api & Query DB HOT ISSUE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/hotissue', db.hotissue);

apps.get('/directorat', db.directorat);

apps.get('/directorat_path/:id', db.directorat_path);

apps.post('/insertdirectorats', db.insertdirectorats);

apps.post('/directorats_update', db.update_directorats);

apps.post('/directorats_upload', directorats_images.fields([{ name: "images", maxCount: 1 }, { name: "banners", maxCount: 1 },]), db.directorats_uploads);

apps.get('/directorats_delete/:id', db.delete_direactorats);

apps.get('/images_direactorat_delete/:id/:foto', db.delete_images_direactorats);

apps.get('/banners_direactorat_delete/:id/:foto', db.delete_banners_direactorats);

apps.get('/directorat_devisi/:id', db.directorat_devisi);

apps.post('/directorats_devisi_add', db.directorat_devisi_add);

apps.get('/directorat_devisi_delete/:id', db.directorats_devisi_delete);

apps.get('/hotissuedetail/:id', db.hotissue_detail);

apps.post('/inserthotissue', hotissue_path.single('photo'), db.inserthotissue);

apps.get('/deletehotissue/:id/:foto', db.deletehotissue);

apps.post('/updatehotissue', hotissue_path.single('photo'), db.updatehotissue);

apps.get('/hotissuecategory', db.hotissuecategory);

apps.post('/updatehotissuecategory', db.updatehotissuecategory);

apps.get('/deletehotissuecategory/:id', db.deletehotissuecategory);

apps.get('/deletehotissuesubcategory/:id', db.deletehotissuesubcategory);

apps.get('/hotissuesubcategory', db.hotissuesubcategory);

apps.get('/detailhotissuesubcategory/:id', db.detailhotissuesubcategory);

apps.get('/detailhotissuecategory/:id', db.detailhotissuecategory);

apps.post('/inserthotissubcategory', db.inserthotissubcategory);

apps.post('/updatehotissuesubcategory', db.updatehotissuesubcategory);

//::::::::::::::: Api & Query DB INSTITUTION ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/institutions', db.institutions);

apps.get('/detailinstitutions/:id', db.detailinstitutions);

apps.get('/deleteinstitutions/:id', db.deleteinstitution);

apps.post('/updateinstitution', db.updateinstitution);

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
//::::::::::::::: Api & Query DB BANNERS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/banners', db.banners);

apps.get('/detailbanners/:id', db.detailbanner);

apps.post('/insertbanners', slide_path.single('images'), db.insertbanners);

apps.get('/deletebanners/:id', db.deletebanner);

apps.post('/updatebanner', slide_path.single('images'), db.updatebanners);
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

//::::::::::::::: Api & Query DB AUTH ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/custom_page', db.custom_page);

apps.get('/detail_custom_page/:id', db.detail_custom_page);

apps.post('/insertcustompage', page_path.single('files_image'), db.insertcustompage);

apps.get('/custom_page_slogo', db.custom_page_slogo);

apps.post('/insertcustompage_slogo', page_path.single('files_image'), db.insertcustompage_slogo);

apps.get('/custom_page_welcome', db.custom_page_welcome);

apps.post('/insertcustompage_welcome', page_path.single('files_image'), db.insertcustompage_welcome);

apps.get('/delete_custom_page/:id/:foto', db.delete_custom_page);

apps.get('/delete_custom_page_slogo/:id/:foto', db.delete_custom_page_slogo);

apps.get('/delete_custom_page_welcome/:id/:foto', db.delete_custom_page_welcome);

//::::::::::::::: Api & Query CUSTOM PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/sub_statistic', db.sub_statistic);

apps.post('/insert_substatistic', db.insert_substatistic);

apps.get('/delete_substatistic/:id', db.delete_substatistic);

apps.get('/detail_substatistic/:id', db.detailsub_substatistic);

apps.get('/api_metabase', db.metabase);

apps.get('/api_metabase_detail/:id', db.detail_metabase);

apps.get('/api_metabase_delete/:id', db.metabase_delete);

apps.post('/insertapimeta', db.insertapimeta);

apps.get('/statistics', db.statistics);

apps.get('/delete_statistics/:id', db.deletestatistic);

apps.post('/insertstatistics', db.insertstatistic);

apps.get('/sourcesdata', db.sourcesdata);

apps.get('/sourcesdatadetail/:id', db.sourcesdatadetail);

apps.get('/deletesourcesdata/:id', db.deletesourcesdata);

apps.post('/insertsourcesdata', db.insertsourcesdata);

apps.get('/sourcesdatadetaillist/:id', db.sourcesdatadetaillist);
//::::::::::::::::::::::::::: APi Opini ::::::::::::::::::::::::::::::::::::

apps.get('/api_opini', db.opini);

apps.get('/api_opini_detail/:id', db.opini_detail);

apps.post('/insertopini', db.insertopini);

apps.post('/updateopini', db.updateopini);

apps.get('/deleteopini/:id', db.deleteopini);

//:::::::::::::::::::::::::::::::::::::::::::::::::::::: Api & Setting ::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/api_web_profile', db.web_profile);

apps.get('/api_detail_webprofile/:id', db.web_profile_detail);

apps.post('/updatewebtitle', db.updatewebtitle);

apps.post('/updateweblogo', db.updateweblogo);

apps.post('/updatewebheader', db.updatewebheader);

apps.post('/updatewebcolor', db.updatewebcolor);

apps.get('/api_menu', db.menu);

apps.post('/insertmenu', db.insertmenu);

apps.post('/updatemenu', db.updatemenu);

apps.get('/api_menu_detail/:id', db.menu_detail);

apps.get('/api_submenu', db.submenu);

apps.post('/insertsubmenu', db.insertsubmenu);

apps.post('/updatesubmenu', db.updatesubmenu);

apps.get('/api_submenu_detail/:id', db.submenu_detail);
//::::::::::::::: Api & Query CUSTOM DATA NARATION PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/api_kdeks', db.kdeks);

apps.post('/insertmaster', db.insertmaster);

apps.post('/updatemaster', db.updatemaster);

apps.get('/master_delete/:id', db.deletemaster);

//::::::::::::::::: End Of KDEKS ::::::::::::::::::::::::::

apps.post('/insertreg', db.user_register);

apps.post('/do_login', db.do_login);

apps.post('/act_login', db.do_login);

apps.get("/logout", db.do_logout);

//::::::::::::::: End Of Routes :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/kneks/api', db.api_kneks);

apps.listen(3001);