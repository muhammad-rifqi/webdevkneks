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

let banner_page = multer.diskStorage(
    {
        destination: './public/uploads/banner/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let page_path = multer({ storage: banner_page });
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

// :::::::::::::::: Start Of Data Slide ::::::::::::::::::::::::::::::::::::::::::::::::::::::
let data_slide = multer.diskStorage(
    {
        destination: './public/uploads/data/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let data_slide_path = multer({ storage: data_slide });
//:::::::::::::::::::::::::: Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
let kdeks_logo = multer.diskStorage(
    {
        destination: './public/uploads/kdeks/',
        filename: function (req, file, cb) {
            cb(null, file.originalname.replace(" ", ""));
        }
    }
);
let kdeks_logo_province = multer({ storage: kdeks_logo });
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
    res.sendFile(path.resolve('./views/banners/welcome/update.html'));
})

apps.get('/welcomebanner_add', (req, res) => {
    res.sendFile(path.resolve('./views/banners/welcome/add.html'));
})

apps.get('/edit_welcome_page/:id', (req, res) => {
    res.sendFile(path.resolve('./views/banners/welcome/edit.html'));
})
//::::::::::::::::::::::::: End Of Welcome Banners :::::::::::::::::::::::::::::
//::::::::::::::::::::::::: Start Of Login Banners :::::::::::::::::::::::::::::
apps.get('/login_banner', (req, res) => {
    res.sendFile(path.resolve('./views/banners/login_banner/list.html'));
})

apps.get('/login_banner_add', (req, res) => {
    res.sendFile(path.resolve('./views/banners/login_banner/add.html'));
})

apps.get('/login_banner_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/banners/login_banner/edit.html'));
})
//::::::::::::::::::::::::: End Of Login Banners :::::::::::::::::::::::::::::
//::::::::::::::::::::::::: Start Of Slide Show Banners :::::::::::::::::::::::::::::
apps.get('/b', (req, res) => {
    res.sendFile(path.resolve('./views/banners/banner/list.html'));
})

apps.get('/b_add', (req, res) => {
    res.sendFile(path.resolve('./views/banners/banner/add.html'));
})

apps.get('/b_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/banners/banner/edit.html'));
})
//::::::::::::::::::::::::: End Of Slide Show Banners :::::::::::::::::::::::::::::
//::::::::::::::::::::::::: End Of Banners ::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::: Start Of Direktorat ::::::::::::::::::::::::::::::::::
apps.get('/directorats', (req, res) => {
    res.sendFile(path.resolve('./views/directorat/list.html'));
})

apps.get('/directorats_add', (req, res) => {
    res.sendFile(path.resolve('./views/directorat/add.html'));
})

apps.get('/directorats_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/directorat/edit.html'));
})

apps.get('/directorats_detail/:id', (req, res) => {
    res.sendFile(path.resolve('./views/directorat/detail.html'));
})

apps.get('/directorats_devisi/:id', (req, res) => {
    res.sendFile(path.resolve('./views/directorat/devisi.html'));
})
//:::::::::::::::::::::::::: End Of Direktorat ::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::: Start Of Struktur  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/s', (req, res) => {
    res.sendFile(path.resolve('./views/struktur/pejabat/list.html'));
})

apps.get('/s_add', (req, res) => {
    res.sendFile(path.resolve('./views/struktur/pejabat/add.html'));
})

apps.get('/s_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/struktur/pejabat/edit.html'));
})

apps.get('/s_logo', (req, res) => {
    res.sendFile(path.resolve('./views/struktur/struktur/s_logo.html'));
})

apps.get('/s_logo_add', (req, res) => {
    res.sendFile(path.resolve('./views/struktur/struktur/add_s_logo.html'));
})

apps.get('/s_logo_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/struktur/struktur/edit_s_logo.html'));
})

//:::::::::::::::::::::::::::: End Of Struktur ::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::Start Of Berita ::::::::::::::::::::::::::::::::::::::::::::::
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

//::::::::::::::::::::::::::::: End Of Berita :::::::::::::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::::::::::::::: Opini ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/opini', (req, res) => {
    res.sendFile(path.resolve('./views/opini/opini.html'));
})

apps.get('/opini_add', (req, res) => {
    res.sendFile(path.resolve('./views/opini/opini_add.html'));
})

apps.get('/opini_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/opini/opini_edit.html'));
})
//::::::::::::::::::::::::::::::: End Of Opini :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::: Start Of Isu Terkini :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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

apps.get('/hic_add', (req, res) => {
    res.sendFile(path.resolve('./views/hot_issue_management/hot_issue_category/add.html'));
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
//:::::::::::::::::::::::::::::::::::::::: End Of Isu Terkini :::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Photo :::::::::::::::::::::::::::::::::::::::::::

apps.get('/ph', (req, res) => {
    res.sendFile(path.resolve('./views/photos/list.html'));
})

apps.get('/ph_add', (req, res) => {
    res.sendFile(path.resolve('./views/photos/add.html'));
})

apps.get('/ph_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/photos/edit.html'));
})
//:::::::::::::::::::::::::::::::::::::::: End Of Photo ::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Video :::::::::::::::::::::::::::::::::::::::
apps.get('/v', (req, res) => {
    res.sendFile(path.resolve('./views/videos/list.html'));
})

apps.get('/v_add', (req, res) => {
    res.sendFile(path.resolve('./views/videos/add.html'));
})

apps.get('/v_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/videos/edit.html'));
})
//:::::::::::::::::::::::::::::::::::::::: End Of Video ::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::Start Of Agenda ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/a', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/list.html'));
})

apps.get('/a_add', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/add.html'));
})

apps.get('/a_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/agenda/edit.html'));
})
// ::::::::::::::::::::::::::::::::::: End Of Agenda :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::: Start Of E-Pustaka :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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
//:::::::::::::::::::::::::::::::::::::::  End Of E-Pustaka ::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::: Start Of Data :::::::::::::::::::::::::::::::::::::
apps.get('/menu_data', (req, res) => {
    res.sendFile(path.resolve('./views/data/menu/list.html'));
})

apps.get('/menudata_add', (req, res) => {
    res.sendFile(path.resolve('./views/data/menu/add.html'));
})

apps.get('/menudata_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/data/menu/edit.html'));
})

apps.get('/sliderdata', (req, res) => {
    res.sendFile(path.resolve('./views/data/slider/data.html'));
})

apps.get('/sliderdata_add', (req, res) => {
    res.sendFile(path.resolve('./views/data/slider/add_data.html'));
})

apps.get('/sliderdata_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/data/slider/edit.html'));
})

apps.get('/dataset', (req, res) => {
    res.sendFile(path.resolve('./views/data/dataset/list.html'));
})

apps.get('/dataset_add', (req, res) => {
    res.sendFile(path.resolve('./views/data/dataset/add.html'));
})

apps.get('/dataset_detail/:id', (req, res) => {
    res.sendFile(path.resolve('./views/data/dataset/view.html'));
});

apps.get('/narations/:id/:name', (req, res) => {
    res.sendFile(path.resolve('./views/data/dashboard/naration.html'));
});

apps.get('/dashboard', (req, res) => {
    res.sendFile(path.resolve('./views/data/dashboard/list.html'));
});

apps.get('/dashboard_add', (req, res) => {
    res.sendFile(path.resolve('./views/data/dashboard/add.html'));
});

apps.get('/submenu_data', (req, res) => {
    res.sendFile(path.resolve('./views/data/submenu/list.html'));
});

apps.get('/submenudata_add', (req, res) => {
    res.sendFile(path.resolve('./views/data/submenu/add.html'));
});

apps.get('/submenudata_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/data/submenu/edit.html'));
});
//:::::::::::::::::::::::::::::::::::::::: End Of Data :::::::::::::::::::::::::::::::::::::::::::::::::
// ::::::::::::::::::::::::::::::::::::::::::::::: Start Of Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/kdeks', (req, res) => {
    res.sendFile(path.resolve('./views/kdeks/kdeks/kdeks.html'));
})

apps.get('/kdeks_add', (req, res) => {
    res.sendFile(path.resolve('./views/kdeks/kdeks/kdeks_add.html'));
})

apps.get('/kdeks_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/kdeks/kdeks/kdeks_edit.html'));
})

//::::::::::::::::::::::::::::::::::::::::::::::::::End Of Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::Start Of Master  Kdeks ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/master', (req, res) => {
    res.sendFile(path.resolve('./views/kdeks/master/master.html'));
})

apps.get('/master_add', (req, res) => {
    res.sendFile(path.resolve('./views/kdeks/master/master_add.html'));
})

apps.get('/master_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/kdeks/master/master_edit.html'));
})
//:::::::::::::::::::::::::::::::::::::::::::::::::::::End Of Master Kdeks :::::::::::::::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::::::::::::::::::::::::::::::::::::::: Start Of Zona Khas :::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/zk', (req, res) => {
    res.sendFile(path.resolve('./views/zona_khas/list.html'));
})

apps.get('/zk_add', (req, res) => {
    res.sendFile(path.resolve('./views/zona_khas/add.html'));
})

apps.get('/zk_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/zona_khas/edit.html'));
})
//::::::::::::::::::::::::::::::::::::::::::::::::::::: End Of Zona Khas :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::::: Start Of Tagging :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/tg', (req, res) => {
    res.sendFile(path.resolve('./views/tagging/list.html'));
})

apps.get('/tg_add', (req, res) => {
    res.sendFile(path.resolve('./views/tagging/add.html'));
})

apps.get('/tg_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/tagging/edit.html'));
})
//::::::::::::::::::::::::::::::::::::: End Of Tagging ::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::: Start Of Users ::::::::::::::::::::::::::::::::::::::::::::::::::::
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
//:::::::::::::::::::::::::::::::::::::::::::::::::: End Of  User Management ::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Profile :::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Tentang Kami :::::::::::::::::::::::::::::::::::::::::
apps.get('/tk', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/tentang_kami.html'));
})

apps.get('/tk_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/tentang_kami/tentang_kami_edit.html'));
})
//:::::::::::::::::::::::::::::::::::::::: End Tentang Kami :::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::::: Start Of Ekonomi Syariah :::::::::::::::::::::::::::::::::::::::
apps.get('/es', (req, res) => {
    res.sendFile(path.resolve('./views/profile/ekonomi_syariah/ekonomi_syariah.html'));
})
//:::::::::::::::::::::::::::::::::::::::::: End Of Ekonomi Syariah :::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::: Start Of Institusi ::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/i', (req, res) => {
    res.sendFile(path.resolve('./views/profile/institution/list.html'));
})

apps.get('/i_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/institution/edit.html'));
})
//::::::::::::::::::::::::::::::::::::::::::: End Of Insitusi ::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Start Of Social Media ::::::::::::::::::::::::::::::::::::::::::::
apps.get('/sm', (req, res) => {
    res.sendFile(path.resolve('./views/profile/social_media/list.html'));
})

apps.get('/sm_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/social_media/edit.html'));
})

//::::::::::::::::::::::::::::::::::::::::::: End Of Social Media ::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Contact ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/c', (req, res) => {
    res.sendFile(path.resolve('./views/profile/contacts/list.html'));
})

apps.get('/c_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/contacts/edit.html'));
})
//::::::::::::::::::::::::::::::::::::::::::: End Contact ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Maps ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/m', (req, res) => {
    res.sendFile(path.resolve('./views/profile/maps/list.html'));
})

apps.get('/m_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/maps/edit.html'));
})
//::::::::::::::::::::::::::::::::::::::::::: End Of Maps ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::: Scope ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
apps.get('/scp', (req, res) => {
    res.sendFile(path.resolve('./views/profile/scope/list.html'));
})

apps.get('/scp_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/profile/scope/edit.html'));
})
//::::::::::::::::::::::::::::::::::::::::::: End Of Scope ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::End Of Profile ::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::;:::::::Start Of Pengaturan ::::::::::::::::::::::::::::
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
apps.get('/register', (req, res) => {
    res.sendFile(path.resolve('./views/register.html'));
})

// :::::::::::::::::::::::::: Api Frontend ::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/api/newspaging', db.pagingnews);

apps.get('/api_news_kdeks', db.news_kdeks);

apps.get('/api_news_detail_kdeks/:id', db.news_details_kdeks);

apps.get('/api_newscategory_kdeks', db.news_categories_kdeks);

apps.get('/api_detailnewscategory_kdeks/:id', db.news_detailnewscategory_kdeks);

apps.get('/abouts', db.abouts);

apps.get('/api_about_kdeks', db.abouts_kdeks);

apps.get('/api_history_kdeks', db.history_kdeks);

apps.get('/detailabouts/:id', db.detailabout);

apps.get('/api_sejarah_province/:id', db.history_province);

apps.get('/api_about_province/:id', db.about_province);

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

apps.post('/updatetentangkami', db.updateabouts);

apps.get('/deleteabouts/:id', db.deleteabout);

apps.get('/api_kdeks', db.kdeks);

apps.get('/detail_kdeks/:id', db.detailkdeks);

apps.post('/insertkdeks', kdeks_logo_province.single('photo'), db.insertkdeks);

apps.post('/updatekdeks' , kdeks_logo_province.single('photo') , db.updatekdeks);

apps.get('/kdeks_delete/:id/:foto', db.deletekdeks);

//::::::::::::::: Api & Query DB STRUCTURE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/structure', db.structure);

apps.get('/detailstructure/:id', db.detailstructure);

apps.get('/deletestructure/:id/:foto', db.deletestructure);

apps.post('/insertstructure', structure_path.single('photo'), db.inserstructure);

apps.post('/updatestructure', structure_path.single('photo'), db.updatestructure);

//::::::::::::::: Api & Query DB HOT ISSUE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/directorat', db.directorat);

apps.get('/directorat_fe', db.directorats_fe);

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

apps.get('/directorat_detail/:id', db.directorat_details);

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

apps.get('/sourcesdatadetaillist/:id', db.sourcesdatadetaillist);
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

//::::::::::::::: Api & Query CUSTOM DATA NARATION PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.post('/insertmaster', db.insertmaster);

apps.post('/updatemaster', db.updatemaster);

apps.get('/master_delete/:id', db.deletemaster);

//::::::::::::::::: End Of KDEKS ::::::::::::::::::::::::::

apps.listen(3001);