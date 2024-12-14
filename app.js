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

apps.get('/pm', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_menu/list.html'));
})

apps.get('/pm_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_menu/edit.html'));
})

apps.get('/ps', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_submenu/list.html'));
})

apps.get('/ps_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_submenu/edit.html'));
})

apps.get('/po', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_overview/list.html'));
})

apps.get('/po_edit/:id', (req, res) => {
    res.sendFile(path.resolve('./views/one_data_center/pdes_overview/edit.html'));
})

apps.get('/customfront', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/custom_page/list.html'));
})

apps.get('/custom_add', (req, res) => {
    res.sendFile(path.resolve('./views/home_management/custom_page/add.html'));
})

//::::::::::::::: User Management ::::::::::::::::::::::::::::

apps.get('/u', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/list.html'));
})

apps.get('/u_add', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/add.html'));
})

apps.get('/u_edit', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/users/edit.html'));
})

apps.get('/cp', (req, res) => {
    res.sendFile(path.resolve('./views/user_management/change_password/list.html'));
})

//:::::::::::::::::::::::::::::::: Custom Page :::::::::::::::::::::::::::::::::::::


apps.get('/slidefront', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/slide/list.html'));
})

apps.get('/slide_add', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/slide/add.html'));
})

apps.get('/datafront', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/list.html'));
})

apps.get('/data_add', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/add.html'));
})

apps.get('/narationfront', (req, res) => {
    res.sendFile(path.resolve('./views/custom_page/data/edit.html'));
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

apps.get('/roles', db.userroles);

apps.post('/insertusers', db.insertusers);

apps.get('/deleteuser/:id', db.deleteuser);

apps.get('/updatepassword', db.updatepassword);

apps.post('/changespassword', db.changespassword);

//::::::::::::::: Api & Query DB ABOUTS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/abouts', db.abouts);

apps.get('/detailabouts/:id', db.detailabout);

apps.post('/updatetentangkami', db.updateabouts);

apps.get('/deleteabouts/:id', db.deleteabout);

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

apps.get('/direktorat', db.directorat);

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

apps.get('/deletebanners/:id', db.deletebanner);

apps.post('/updatebanner', db.updatebanners);
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

apps.get('/pdes', db.pdes);

apps.get('/pdes_detail/:id', db.pdes_detail);

apps.post('/updatepdes', db.updatepdes);

apps.get('/pdes_menu', db.pdes_menu);

apps.get('/pdes_menu_detail/:id', db.pdes_menu_detail);

apps.post('/updatepdesmenu', db.updatepdesmenu);

apps.get('/pdes_submenu', db.pdes_submenu);

apps.get('/pdes_submenu_detail/:id', db.pdes_submenu_detail);

apps.post('/updatepdessubmenu', db.updatepdessubmenu);

apps.get('/pdes_overview', db.pdes_overview);

apps.get('/pdes_overview_detail/:id', db.pdes_overview_detail);

apps.post('/updatepdesoverview', db.updatepdesoverview);

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

//::::::::::::::: Api & Query DB AUTH ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/custom_page', db.custom_page);

apps.get('/detail_custom_page/:id', db.detail_custom_page);

apps.post('/insertcustompage', page_path.single('files_image'), db.insertcustompage);

apps.get('/delete_custom_page/:id/:foto', db.delete_custom_page);

//::::::::::::::: Api & Query CUSTOM PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.get('/narations', db.naration);

apps.post('/updatenarations', db.updatenarations);

apps.get('/statistics', db.statistics);

apps.get('/delete_statistics/:id', db.deletestatistic);

apps.post('/insertstatistics', db.insertstatistic);

apps.get('/sourcesdata', db.sourcesdata);

apps.get('/deletesourcesdata/:id', db.deletesourcesdata);

apps.post('/insertsourcesdata', db.insertsourcesdata);

//::::::::::::::::::::::::::: APi Opini ::::::::::::::::::::::::::::::::::::

apps.get('/api_opini', db.opini);

apps.get('/api_opini_detail/:id', db.opini_detail);

apps.post('/insertopini', db.insertopini);

apps.post('/updateopini', db.updateopini);

apps.get('/deleteopini/:id', db.deleteopini);


//::::::::::::::: Api & Query CUSTOM DATA NARATION PAGE ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.post('/insertusers', db.user_register);

apps.post('/do_login', db.api_login);

apps.post('/act_login', db.do_login);

apps.get("/logout", db.do_logout);

//::::::::::::::: End Of Routes :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

apps.listen(3001);