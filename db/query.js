const md5 = require('md5');
const { executeQuery } = require('./config');
const fs = require('fs');

//::::::::::::::::::::::::::::::Start Of LOGIN LOGOUT :::::::::::::::::::::::::::::::::::::::::::::::::::::

const do_login = async (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);
    const sql = await executeQuery('SELECT * FROM users where email = ? AND password = ? ', [email, password])
    if (sql?.length > 0) {
        const isLogin = true;
        res.cookie("islogin", isLogin);
        res.cookie("id", sql[0]?.id);
        res.cookie("name", sql[0]?.name);
        res.redirect("/dashboard");
    } else {
        res.redirect("/");
    }

}

const do_logout = (req, res) => {
    res.clearCookie("islogin");
    res.clearCookie("name");
    res.clearCookie("id");
    res.redirect("/");
}

const api_login = async (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);
    const sql = await executeQuery('SELECT * FROM users where email = ? AND password = ? ', [email, password])
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

//::::::::::::::::::::::::::::::End Of Login :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Abouts :::::::::::::::::::::::::::::::::::::::::::::::::::::
const abouts = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM abouts');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}
//::::::::::::::::::::::::::::::End Of Abouts :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Structure :::::::::::::::::::::::::::::::::::::::::::::::::::::
const structure = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  structure_assets');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}
//::::::::::::::::::::::::::::::End Of Structure :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of ISSUE :::::::::::::::::::::::::::::::::::::::::::::::::::::

const hotissue = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  hot_issues');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const hotissue_detail = async (req, res) => {
    const id_h = req.params.id;
    const sql = await executeQuery('SELECT * FROM  hot_issues where id=?', [id_h]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const hotissuecategory = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  hot_categories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const detailhotissuecategory = async (req, res) => {
    const ppp = req.params.id;
    const sql = await executeQuery('SELECT * FROM  hot_categories where id = ? ', [ppp]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletehotissuecategory = async (req, res) => {
    const idcat = req.params.id;
    const sql = await executeQuery('DELETE FROM  hot_categories where id=?', [idcat]);
    if (sql) {
        res.redirect('/hic');
    } else {
        console.log(sql)
        res.redirect('/hic');
    }
}

const deletehotissuesubcategory = async (req, res) => {
    const idsubcat = req.params.id;
    const sql = await executeQuery('DELETE FROM  hot_subcategories where id=?', [idsubcat]);
    if (sql) {
        res.redirect('/hisc');
    } else {
        console.log(sql)
        res.redirect('/hisc');
    }
}

const hotissuesubcategory = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  hot_subcategories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const detailhotissuesubcategory = async (req, res) => {
    const id_sub = req.params.id;
    const sql = await executeQuery('SELECT * FROM  hot_subcategories where id = ? ', [id_sub]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}

const inserthotissue = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const hot_issue_datetime = date + ' ' + time;
    const issue_datetime = req.body.issue_datetime.replace("T", " ");
    const fileupload = req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into hot_issues(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,hot_issue_datetime,created_at,updated_at,deleted_at,hot_subcategory_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id]);
    if (sql) {
        res.redirect('/hi');
    } else {
        console.log(sql);
    }
}

const inserthotissubcategory = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const hot_issue_datetime = date + ' ' + time;
    const sql = await executeQuery("insert into hot_subcategories(title,title_en,created_at,updated_at,hot_category_id) values(?,?,?,?,?)",
        [req.body.title, req.body.title_en, hot_issue_datetime, hot_issue_datetime, req.body.hot_category_id])
    if (sql) {
        res.redirect('/hisc');
    } else {
        console.log(sql);
    }

}

const updatehotissue = async (req, res) => {
    console.log("ok")
}

const deletehotissue = async (req, res) => {
    const id_issue = req.params.id;
    const foto_issue = req.params.foto;
    const fileswindows = 'D:/kneksbe/webdevkneks/public/uploads/hot_issue/' + foto_issue; //sesuaikan saja!
    // const fileslinux = '/var/www/html/webdev.rifhandi.com/public_html/webdevkneks/public/uploads/hot_issue/'+foto_users;

    if (fs.existsSync(fileswindows)) {
        fs.unlink(fileswindows, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM hot_issues where id = ? ', [id_issue]);
            if (sql) {
                res.redirect('/hi');
            } else {
                console.log(sql);
            }
        });
    } else {
        const sql = await executeQuery('DELETE FROM hot_issues where id = ? ', [id_issue]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
        }
    }
}

//::::::::::::::::::::::::::::::End Of ISSUE :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of institutions :::::::::::::::::::::::::::::::::::::::::::::::::::::
const institutions = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  institutions');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//::::::::::::::::::::::::::::::End Of institutions :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Sosmed :::::::::::::::::::::::::::::::::::::::::::::::::::::
const sosmed = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  social_medias');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}
//::::::::::::::::::::::::::::::End Of Sosmed :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Scope :::::::::::::::::::::::::::::::::::::::::::::::::::::
const scopes = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  scopes');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//::::::::::::::::::::::::::::::End Of Scope :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Maps :::::::::::::::::::::::::::::::::::::::::::::::::::::
const maps = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  map')
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}
//::::::::::::::::::::::::::::::End Of Maps :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Contacts :::::::::::::::::::::::::::::::::::::::::::::::::::::
const contacts = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  contacts');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }

}
//::::::::::::::::::::::::::::::End Of Contacts :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Banner :::::::::::::::::::::::::::::::::::::::::::::::::::::
const banners = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  banners');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//::::::::::::::::::::::::::::::End Of Banner :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Agenda :::::::::::::::::::::::::::::::::::::::::::::::::::::
const agendas = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  agendas');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//::::::::::::::::::::::::::::::End Of Agenda :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of FILES :::::::::::::::::::::::::::::::::::::::::::::::::::::
const files = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  reports');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const files_category = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  report_categories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

//::::::::::::::::::::::::::::::End Of Files :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of PDES :::::::::::::::::::::::::::::::::::::::::::::::::::::

const pdes = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah')
    const array = [];
    sql?.forEach((listdata) => {
        const ddd = {
            "id": listdata?.id,
            "name": listdata?.name,
            "link": listdata?.link,
            "menu_id": listdata?.menu_id,
            "submenu_id": listdata?.submenu_id,
            "order": listdata?.order,
        }
        array.push(ddd)
    });
    if (array?.length > 0) {
        res.status(200).json(array)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes_menu = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah_menu');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes_submenu = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah_submenu');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pdes_overview = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  syariah_overview');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//::::::::::::::::::::::::::::::End Of PDES :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of News:::::::::::::::::::::::::::::::::::::::::::::::::::::
const posts = async (req, res) => {
    const result = await executeQuery("SELECT * FROM news ORDER BY id ASC limit 100");
    let promises = result.map(async (item) => {
        return new Promise(async (resolve, reject) => {
            let r = await executeQuery("SELECT * FROM news_categories WHERE id = ?", [item.category_id]);
            let detail = r[0];
            let row = {
                "id": item?.id,
                "title": item?.title,
                "title_en": item?.title_en,
                "news_datetime": item?.news_datetime,
                "content": item?.content,
                "content_en": item?.content_en,
                "excerpt": item?.excerpt,
                "excerpt_en": item?.excerpt_en,
                "is_publish": item?.is_publish,
                "image": item?.image,
                "category_id": item?.category_id,
                "detail": detail
            };
            resolve(row);
        });
    });
    Promise.all(promises)
        .then((rows) => {
            res.status(200).json(rows);
        })
        .catch((error) => {
            res.status(500).json({ error: error.message });
        });
}

const newsdetail = async (req, res) => {
    const id_n = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news where id=?', [id_n]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const news_categories = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM news_categories');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const detailnewscategory = async (req, res) => {
    const id_cat = req.params.id;
    const sql = await executeQuery('SELECT * FROM news_categories where id = ? ', [id_cat]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
const insertnews = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const news_datetime = req.body.news_datetime.replace("T", " ");
    const fileupload = req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into news(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,news_datetime,created_at,updated_at,deleted_at,category_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, news_datetime, timeupdate, timeupdate, null, req.body.category_id]);
    if (sql) {
        res.redirect('/n');
    } else {
        console.log(sql);
    }
}

const updatenews = async (req, res) => {
    console.log("ok")
}

const deletenews = async (req, res) => {
    const id_news = req.params.id;
    const foto_news = req.params.foto;
    const fileswindow = 'D:/kneksbe/webdevkneks/public/uploads/news/' + foto_news; //sesuaikan saja!
    // const fileslinux = '/var/www/html/webdev.rifhandi.com/public_html/webdevkneks/public/uploads/news/'+foto_news;
    if (fs.existsSync(fileswindow)) {
        fs.unlink(fileswindow, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM news where id = ? ', [id_news]);
            if (sql) {
                res.redirect('/n');
            } else {
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM news where id = ? ', [id_news]);
        if (sql) {
            res.redirect('/n');
        } else {
            console.log(sql);
        }
    }
}

const insertnewscategory = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const cat_datetime = date + ' ' + time;
    const sql = await executeQuery("insert into news_categories(title,title_en,created_at,updated_at) values(?,?,?,?)",
        [req.body.title, req.body.title_en, cat_datetime, cat_datetime]);
    if (sql) {
        res.redirect('/nc');
    } else {
        console.log(sql)
    }
}
//::::::::::::::::::::::::::::::End Of News:::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Photos:::::::::::::::::::::::::::::::::::::::::::::::::::::
const categories = async (req, res) => {
    const names = req.params.name;
    const sql = await executeQuery('SELECT * FROM news_' + names + '')
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertphoto = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const photos_datetime = req.body.photo_datetime.replace("T", " ");
    const photoupload = req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into news_photos(title,title_en,content,content_en,photo,news_datetime,created_at,updated_at,deleted_at) values(?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, photoupload, photos_datetime, time_datetime, time_datetime, null])
    if (sql) {
        res.redirect('/ph');
    } else {
        console.log(sql)
    }
}

const photodetail = async (req, res) => {
    const id_ph = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news_photos where id=?', [id_ph]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletephoto = async (req, res) => {
    const id_photo = req.params.id;
    const foto_photo = req.params.foto;
    const fileswindow = 'D:/kneksbe/webdevkneks/public/uploads/photo/' + foto_photo; //sesuaikan saja!
    // const fileslinux = '/var/www/html/webdev.rifhandi.com/public_html/webdevkneks/public/uploads/photo/'+foto_photo;
    if (fs.existsSync(fileswindow)) {
        fs.unlink(fileswindow, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM news_photos where id = ? ', [id_photo]);
            if (sql) {
                res.redirect('/ph');
            } else {
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM news_photos where id = ? ', [id_photo]);
        if (sql) {
            res.redirect('/ph');
        } else {
            console.log(sql);
        }
    }
}

const updatephoto = async (req, res) => {
    console.log("ok")
}
//::::::::::::::::::::::::::::::End Of Photos :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Videos:::::::::::::::::::::::::::::::::::::::::::::::::::::
const insertvideo = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const videos_datetime = req.body.video_datetime.replace("T", " ");
    const sql = await executeQuery("insert into news_videos(title,title_en,content,content_en,video,duration,news_datetime,created_at,updated_at,deleted_at) values(?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.video, req.body.duration, videos_datetime, time_datetime, time_datetime, null]);
    if (sql) {
        res.redirect('/v');
    } else {
        console.log(sql)
    }
}

const videodetail = async (req, res) => {
    const id_vid = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news_videos where id=?', [id_vid]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

//::::::::::::::::::::::::::::::End Of Videos:::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Users:::::::::::::::::::::::::::::::::::::::::::::::::::::
const users = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const userroles = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  roles');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertusers = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const pw = md5(req.body.password);
    const sql = await executeQuery("insert into users(name,email,password,role_id,created_at,updated_at) values(?,?,?,?,?,?)",
        [req.body.name, req.body.email, pw, req.body.role_id, time_datetime, time_datetime]);
    if (sql) {
        res.redirect('/u');
    } else {
        console.log(sql)
    }
}

const updatepassword = async (req, res) => {
    const id_users = req.cookies.id;
    const sql = await executeQuery('SELECT * FROM users where id = ? ', [id_users])
    if (sql.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const changespassword = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users where id = ? ', [req.body.id_user]);
    if (md5(req.body.old_password) == sql[0]?.password) {
        if (req.body.new_password == req.body.verify_password) {
            await executeQuery("UPDATE users SET name=? , password=? WHERE id=? ", [req.body.names, md5(req.body.new_password), req.body.id_user]);
            console.log('success');
            res.redirect('/logout');
        } else {
            console.log('new password and password confirm not match !');
        }
    } else {
        console.log('password not match in database!');
    }
}

const deleteuser = async (req, res) => {
    const id_users = req.params.id;
    const sql = await executeQuery('DELETE FROM users where id = ? ', [id_users]);
    if (sql) {
        res.redirect('/u');
    } else {
        console.log(sql);
    }
}
//::::::::::::::::::::::::::::::End Of Users:::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Modules:::::::::::::::::::::::::::::::::::::::::::::::::::::
module.exports = {
    do_login,
    do_logout,
    api_login,
    categories,
    photodetail,
    deletephoto,
    updatephoto,
    posts,
    newsdetail,
    news_categories,
    deletenews,
    updatenews,
    insertnews,
    insertnewscategory,
    detailnewscategory,
    insertphoto,
    insertvideo,
    videodetail,
    abouts,
    structure,
    hotissue,
    hotissue_detail,
    hotissuecategory,
    detailhotissuecategory,
    hotissuesubcategory,
    deletehotissuecategory,
    deletehotissuesubcategory,
    detailhotissuesubcategory,
    updatehotissue,
    deletehotissue,
    inserthotissue,
    inserthotissubcategory,
    institutions,
    sosmed,
    scopes,
    maps,
    contacts,
    banners,
    agendas,
    files,
    files_category,
    pdes,
    pdes_menu,
    pdes_submenu,
    pdes_overview,
    users,
    userroles,
    insertusers,
    updatepassword,
    changespassword,
    deleteuser,
}
//::::::::::::::::::::::::::::::End Of Module:::::::::::::::::::::::::::::::::::::::::::::::::::::