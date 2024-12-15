const md5 = require('md5');
const { executeQuery } = require('./config');
const fs = require('fs');

// let fileswindows = 'D:/kneksbe/webdevkneks/public/uploads/';
let fileslinux = '/var/www/html/webdev.rifhandi.com/public_html/webdevkneks/public/uploads/';

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
        res.cookie("roles_id", sql[0]?.role_id);
        res.redirect("/dashboard");
    } else {
        res.redirect("/");
    }
}

const user_register = async (req, res) => {
    const passwords = md5(req?.body?.password);
    const sql = await executeQuery("insert into users(name,email,password) values(?,?,?)",
        [req.body.username, req.body.email, passwords]);
    if (sql) {
        res.redirect('/');
    } else {
        res.redirect('/');
    }
}

const do_logout = (req, res) => {
    res.clearCookie("islogin");
    res.clearCookie("name");
    res.clearCookie("id");
    res.clearCookie("roles_id");
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

//::::::::::::::::::::::::::::::Start Of Dashboard :::::::::::::::::::::::::::::::::::::::::::::::::::::

const dashboards = async (req, res) => {

    const news_mounts = await executeQuery('SELECT * FROM news');
    const jumlah1 = news_mounts.length;
    const videos_mounts = await executeQuery('SELECT * FROM news_videos');
    const jumlah2 = videos_mounts.length;
    const photos_mounts = await executeQuery('SELECT * FROM news_photos');
    const jumlah3 = photos_mounts.length;
    const files_mounts = await executeQuery('SELECT * FROM reports');
    const jumlah4 = files_mounts.length;

    const mounted = {
        "news": jumlah1,
        "videos": jumlah2,
        "photos": jumlah3,
        "files": jumlah4,
    }

    res.status(200).json(mounted)
}

//::::::::::::::::::::::::::::::End Of Dashboard :::::::::::::::::::::::::::::::::::::::::::::::::::::

//::::::::::::::::::::::::::::::Start Of Abouts :::::::::::::::::::::::::::::::::::::::::::::::::::::
const abouts = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM abouts');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const deleteabout = async (req, res) => {
    const id_abouts = req.params.id;
    const sql = await executeQuery('DELETE FROM  abouts where id=?', [id_abouts]);
    if (sql) {
        res.redirect('/tk');
    } else {
        console.log(sql)
        res.redirect('/tk');
    }
}

const detailabout = async (req, res) => {
    const id_abouts = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  abouts where id=?', [id_abouts]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updateabouts = async (req, res) => {
    const sql = await executeQuery('UPDATE abouts set title=? , title_en=?, tag=? , content=? , content_en=? where id=?', [req.body.title, req.body.title_en, req.body.tag, req.body.content, req.body.content_en, req.body.id]);
    if (sql) {
        res.redirect('/tk');
    } else {
        console.log(sql)
        res.redirect('/tk');
    }

}

//::::::::::::::::::::::::::::::End Of Abouts :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Structure :::::::::::::::::::::::::::::::::::::::::::::::::::::
const structure = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  structure_assets');
    if (sql?.length > 0) {
        const array = [];
        sql?.forEach((items, index) => {
            const bbb = {
                "id": items?.id,
                "name": items?.name,
                "position": items?.position,
                "photo": items?.photo,
                "pht": items?.photo?.split('/')[5],
                "tag": items?.tag,
                "description": items?.description,
                "created_at": items?.created_at,
                "updated_at": items?.updated_at,
                "deleted_at": items?.deleted_at,
            };
            array.push(bbb);
        })
        res.status(200).json(array)
    } else {
        res.status(200).json({ "success": false })
    }

}

const inserstructure = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const times = date + ' ' + time;
    const fileuploads = "https://webdev.rifhandi.com/uploads/structure/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into structure_assets(name,position,photo,tag,description=?,created_at,updated_at) values(?,?,?,?,?,?,?)",
        [req.body.name, req.body.position, fileuploads, req.body.tag, req.body.description, times, times]);
    if (sql) {
        res.redirect('/s');
    } else {
        console.log(sql);
        res.redirect('/s');
    }
}

const deletestructure = async (req, res) => {
    const id_abouts = req.params.id;
    const foto_abouts = req.params.foto;

    if (fs.existsSync(fileslinux + 'structure/' + foto_abouts)) {
        fs.unlink(fileslinux + 'structure/' + foto_abouts, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM  structure_assets where id=?', [id_abouts]);
            if (sql) {
                res.redirect('/s');
            } else {
                console.log(sql)
                res.redirect('/s');
            }
        });
    } else {
        const sql = await executeQuery('DELETE FROM  structure_assets where id=?', [id_abouts]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
        }
    }

}

const detailstructure = async (req, res) => {
    const id_abouts = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  structure_assets where id=?', [id_abouts]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updatestructure = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const times = date + ' ' + time;
    if (!req.file || req.file == "" || req.file == undefined) {
        const sql = await executeQuery("update structure_assets set name=?,position=?,tag=?,description=?,created_at=?,updated_at=? where id = ?",
            [req.body.name, req.body.position, req.body.tag, req.body.description, times, times, req.body.id]);
        if (sql) {
            res.redirect('/s');
            console.log(sql);
        } else {
            console.log(sql);
            res.redirect('/s');
        }
    } else {
        const fileuploads = "https://webdev.rifhandi.com/uploads/structure/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("update structure_assets set name=?,position=?,photo=?,tag=?, description=?, created_at=?,updated_at=? where id=?",
            [req.body.name, req.body.position, fileuploads, req.body.tag, req.body.description, times, times, req.body.id]);
        if (sql) {
            res.redirect('/s');
            console.log(sql);
        } else {
            console.log(sql);
            res.redirect('/s');
        }
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


const directorat = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM `hot_issues` LEFT JOIN `hot_subcategories`on hot_issues.hot_subcategory_id = hot_subcategories.id LEFT JOIN hot_categories on hot_subcategories.hot_category_id = hot_categories.id GROUP BY hot_categories.id');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const directorat_path = async (req, res) => {
    const id_hot_cat = req.params.id;
    const sql = await executeQuery('SELECT * FROM `hot_issues` where hot_issue_category = ? ', [id_hot_cat]);
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

const updatehotissuecategory = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const datetimes = date + ' ' + time;

    const sql = await executeQuery("update hot_categories set title=?,title_en=?,description=?,description_en=?,created_at=?,updated_at=?,deleted_at=? where id = ?",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, datetimes, datetimes, datetimes, req.body.id]);

    if (sql) {
        res.redirect('/hic');
    } else {
        console.log(sql)
        res.redirect('/hic');
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


const updatehotissuesubcategory = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const datetimes = date + ' ' + time;

    const sql = await executeQuery("update hot_subcategories set title=?,title_en=?,description=?,description_en=?,created_at=?,updated_at=?,deleted_at=? where id = ?",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, datetimes, datetimes, datetimes, req.body.id]);

    if (sql) {
        res.redirect('/hic');
    } else {
        console.log(sql)
        res.redirect('/hic');
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
    const sql = await executeQuery("insert into hot_issues(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,hot_issue_datetime,created_at,updated_at,deleted_at,hot_subcategory_id,hot_issue_category) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id, req.body.hot_category_id]);
    if (sql) {
        res.redirect('/hi');
    } else {
        console.log(sql);
        res.redirect('/hi');
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
        res.redirect('/hisc');
    }

}

const updatehotissue = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const hot_issue_datetime = date + ' ' + time;
    const issue_datetime = req.body.issue_datetime.replace("T", " ");
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("update hot_issues set title=?,title_en=?,excerpt=?,excerpt_en=?,content=?,content_en=?,is_publish=?,hot_issue_datetime=?,created_at=?,updated_at=?,deleted_at=?,hot_subcategory_id=?,hot_issue_category=? where id = ?",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id, req.body.hot_category_id, req.body.id]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
            res.redirect('/hi');
        }
    } else {
        const fileupload = req.file.originalname.replace(" ", "");
        const sql = await executeQuery("update hot_issues  set title=?,title_en=?,excerpt=?,excerpt_en=?,content=?,content_en=?,image=?,is_publish=?,hot_issue_datetime=?,created_at=?,updated_at=?,deleted_at=?,hot_subcategory_id=?,hot_issue_category=? where id = ?",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id, req.body.hot_category_id, req.body.id]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
            res.redirect('/hi');
        }
    }

}

const deletehotissue = async (req, res) => {
    const id_issue = req.params.id;
    const foto_issue = req.params.foto;

    if (fs.existsSync(fileslinux + 'hot_issue/' + foto_issue)) {
        fs.unlink(fileslinux + 'hot_issue/' + foto_issue, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM hot_issues where id = ? ', [id_issue]);
            if (sql) {
                res.redirect('/hi');
            } else {
                console.log(sql);
                res.redirect('/hi');
            }
        });
    } else {
        const sql = await executeQuery('DELETE FROM hot_issues where id = ? ', [id_issue]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
            res.redirect('/hi');
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

const detailinstitutions = async (req, res) => {
    const id_inst = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  institutions where id=?', [id_inst]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deleteinstitution = async (req, res) => {
    const id_inst = req.params.id;
    const sql = await executeQuery('DELETE FROM  institutions where id = ? ', [id_inst]);
    if (sql) {
        res.redirect('/i');
    } else {
        console.log(sql);
        res.redirect('/i');
    }
}

const updateinstitution = async (req, res) => {

    if (req.body.logo != "" || req.body.logo == undefined || !req.body.logo) {
        const sql = await executeQuery('UPDATE institutions set tag=?, name=?, logo=?, link=?, `order`=? where id = ? ', [req.body.tag, req.body.name, req.body.logo, req.body.link, req.body.order, req.body.id]);
        if (sql) {
            res.redirect('/i');
        } else {
            console.log(sql);
            res.redirect('/i');
        }
    } else {
        const sql = await executeQuery('UPDATE institutions set tag=?, name=?, link=?, `order`=? where id = ? ', [req.body.tag, req.body.name, req.body.link, req.body.order, req.body.id]);
        if (sql) {
            res.redirect('/i');
        } else {
            console.log(sql);
            res.redirect('/i');
        }
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

const detailsosmed = async (req, res) => {
    const id_sosmed = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  social_medias where id=?', [id_sosmed]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletesosmed = async (req, res) => {
    const id_sosmed = req.params.id;
    const sql = await executeQuery('DELETE FROM  social_medias where id = ? ', [id_sosmed]);
    if (sql) {
        res.redirect('/sm');
    } else {
        console.log(sql);
        res.redirect('/sm');
    }
}

const updatesosmed = async (req, res) => {
    const id_sosmed = req.body.id;
    const sql = await executeQuery('UPDATE social_medias set name=? , logo=?, link=? where id = ? ', [req.body.name, req.body.logo, req.body.link, id_sosmed]);
    if (sql) {
        res.redirect('/sm');
    } else {
        console.log(sql);
        res.redirect('/sm');
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

const detailscopes = async (req, res) => {
    const id_scopes = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  scopes where id=?', [id_scopes]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletescopes = async (req, res) => {
    const id_scopes = req.params.id;
    const sql = await executeQuery('DELETE FROM  scopes where id = ? ', [id_scopes]);
    if (sql) {
        res.redirect('/scp');
    } else {
        console.log(sql);
        res.redirect('/scp');
    }
}

const updatescopes = async (req, res) => {
    const id_scopes = req.body.id;

    if (req.body.images != "" || req.body.images != undefined || !req.body.images) {
        const sql = await executeQuery('UPDATE scopes set title=?, icon=?, title_en=?, description=?, description_en=?, image=? where  id = ? ', [req.body.title, req.body.images, req.body.title_en, req.body.description, req.body.description_en, req.body.images, id_scopes]);
        if (sql) {
            res.redirect('/scp');
        } else {
            console.log(sql);
            res.redirect('/scp');
        }
    } else {
        const sql = await executeQuery('UPDATE scopes set title=?, title_en=?, description=?, description_en=? where  id = ? ', [req.body.title, req.body.title_en, req.body.description, req.body.description_en, id_scopes]);
        if (sql) {
            res.redirect('/scp');
        } else {
            console.log(sql);
            res.redirect('/scp');
        }
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

const updatemaps = async (req, res) => {
    const sql = await executeQuery('UPDATE map set embed=? where id=?', [req.body.embed, req.body.id]);
    if (sql) {
        res.redirect('/m');
    } else {
        console.log(sql);
        res.redirect('/m');
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

const updatecontacts = async (req, res) => {
    const sql = await executeQuery('UPDATE contacts set address_building=?, address=?, phone_number=?, fax_number=?, email=? where id=?', [req.body.address_building, req.body.address, req.body.phone_number, req.body.fax_number, req.body.email, req.body.id]);
    if (sql) {
        res.redirect('/c');
    } else {
        console.log(sql);
        res.redirect('/c');
    }
}

const questbook = async (req, res) => {
    const sql = await executeQuery('INSERT into questbook (name,email,phone_number,subjek,pesan) values(?,?,?,?,?)', [req.body.name, req.body.email, req.body.phone_number, req.body.subjek, req.body.pesan]);
    if (sql) {
        res.status(200).json({ "success": true })
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

const detailbanner = async (req, res) => {
    const id_banners = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  banners where id=?', [id_banners]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletebanner = async (req, res) => {
    const id_banners = req.params.id;
    const sql = await executeQuery('DELETE FROM  banners where id = ? ', [id_banners]);
    if (sql) {
        res.redirect('/b');
    } else {
        console.log(sql);
        res.redirect('/b');
    }
}

const updatebanners = async (req, res) => {
    const id_banners = req.body.id;

    if (req.body.images != "" || req.body.images != undefined || !req.body.images) {
        const sql = await executeQuery('UPDATE banners set title=?, title_en=?, content=?, content_en=?, image=? where  id = ? ', [req.body.title, req.body.title_en, req.body.description, req.body.description_en, req.body.images, id_banners]);
        if (sql) {
            res.redirect('/b');
        } else {
            console.log(sql);
            res.redirect('/b');
        }
    } else {
        const sql = await executeQuery('UPDATE banners set title=?, title_en=?, content=?, content_en=? where  id = ? ', [req.body.title, req.body.title_en, req.body.description, req.body.description_en, id_banners]);
        if (sql) {
            res.redirect('/b');
        } else {
            console.log(sql);
            res.redirect('/b');
        }
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


const agenda_graph = async (req, res) => {
    const result = await executeQuery("SELECT * FROM db_event ORDER BY id DESC ");
    let promises = result.map(async (item) => {
        return new Promise(async (resolve, reject) => {
            let wil = await executeQuery("SELECT count(province) as wilayah FROM agendas WHERE organizer LIKE '%" + item?.name + "%'");
            let particip = await executeQuery("SELECT count(participants) as participants FROM agendas WHERE organizer LIKE '%" + item?.name + "%'");
            let kegt = await executeQuery("SELECT count(organizer) as kegiatan FROM agendas WHERE organizer LIKE '%" + item?.name + "%'");
            let detail1 = wil[0];
            let detail2 = particip[0];
            let detail3 = kegt[0];
            let row = {
                "key": item?.name,
                "data": {
                    "totalKegiatan": detail1?.wilayah,
                    "totalPeserta": detail2?.participants,
                    "totalWilayah": detail3?.kegiatan
                }
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

const search_agenda = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM  agendas where organizer LIKE '%" + req.query.cari + "%'");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const agendadetails = async (req, res) => {
    const id_agenda = req.params.id;
    const sql = await executeQuery('SELECT * FROM  agendas where id = ? ', [id_agenda]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertagenda = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const agenda_datetime = req.body.agenda_datetime.replace("T", " ");
    const sql = await executeQuery("insert into agendas(title,title_en,url, agenda_datetime ,place,organizer, link, project , description, agenda_endtime, manager, contributor, indicator, impact, opening, participants, area, loc,priority_participants,kbli, age, gender, province, created_at, updated_at) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.url, agenda_datetime, req.body.place, req.body.organizer, req.body.link, req.body.project, req.body.description, req.body.agenda_endtime, req.body.manager, req.body.contributor, req.body.indicator, req.body.impact, req.body.opening, req.body.participants, req.body.area, req.body.loc, req.body.priority_participants, req.body.kbli, req.body.age, req.body.gender, req.body.province, time_datetime, time_datetime]);
    if (sql) {
        res.redirect('/a');
    } else {
        console.log(sql)
        res.redirect('/a');
    }
}

const deleteagenda = async (req, res) => {
    const id_agenda = req.params.id;
    const sql = await executeQuery('DELETE FROM agendas where id = ? ', [id_agenda]);
    if (sql) {
        res.redirect('/a');
    } else {
        console.log(sql);
        res.redirect('/a');
    }
}

const updateagenda = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const agendadatetime = date + ' ' + time;

    const sql = await executeQuery("update agendas set title=?, title_en=?, url=?, agenda_datetime=?, place=?, organizer=?, link=?, project=? , description=?, agenda_endtime=?, manager=?, contributor=?, indicator=?, impact=?, opening=?, participants=?, area=?, loc=?,priority_participants=?,kbli=?, age=?, gender=?, province=?, created_at=?, updated_at=? where id = ?",
        [req.body.title, req.body.title_en, req.body.url, req.body.agenda_datetime, req.body.place, req.body.organizer, req.body.link, req.body.project, req.body.description, req.body.agenda_endtime, req.body.manager, req.body.contributor, req.body.indicator, req.body.impact, req.body.opening, req.body.participants, req.body.area, req.body.loc, req.body.priority_participants, req.body.kbli, req.body.age, req.body.gender, req.body.province, agendadatetime, agendadatetime, req.body.id]);
    if (sql) {
        res.redirect('/a');
    } else {
        console.log(sql);
        res.redirect('/a');
    }
}

//::::::::::::::::::::::::::::::End Of Agenda :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of FILES :::::::::::::::::::::::::::::::::::::::::::::::::::::
const files = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  reports');
    if (sql?.length > 0) {
        const array = [];
        sql?.forEach((items, index) => {
            const bbb = {
                "id": items?.id,
                "title": items?.title,
                "date": items?.date,
                "file": items?.file,
                "content": items?.content,
                "is_publish": items?.is_publish,
                "created_at": items?.created_at,
                "updated_at": items?.updated_at,
                "deleted_at": items?.deleted_at,
                "report_category_id": items?.report_category_id,
                "title_en": items?.title_en,
                "content_en": items?.content_en,
                "fl": items?.file?.split('/')[5]
            };
            array.push(bbb);
        })
        res.status(200).json(array)
    } else {
        res.status(200).json({ "success": false })
    }
}

const filesdetails = async (req, res) => {
    const id_files = req.params.id;
    const sql = await executeQuery('SELECT * FROM  reports where id = ? ', [id_files]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertfileupload = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const file_date = req.body.date;
    const fileuploads = "https://webdev.rifhandi.com/uploads/filesupload/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into reports(title,title_en,content,content_en,file,is_publish,date,created_at,updated_at,report_category_id) values(?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, fileuploads, req.body.is_publish, file_date, timeupdate, timeupdate, req.body.file_category_id]);
    if (sql) {
        res.redirect('/f');
    } else {
        console.log(sql);
        res.redirect('/f');
    }
}

const updatefileupload = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const file_date = req.body.date;
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("update reports set title=?,title_en=?,content=?,content_en=?,is_publish=?,date=?,created_at=?,updated_at=?,report_category_id=? where id = ?",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.is_publish, file_date, timeupdate, timeupdate, req.body.file_category_id, req.body.id]);
        if (sql) {
            res.redirect('/f');
        } else {
            console.log(sql);
            res.redirect('/f');
        }
    } else {
        const fileuploads = "https://webdev.rifhandi.com/uploads/filesupload/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("update reports set title=?,title_en=?,content=?,content_en=?,file=?,is_publish=?,date=?,created_at=?,updated_at=?,report_category_id=? where id = ?",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, fileuploads, req.body.is_publish, file_date, timeupdate, timeupdate, req.body.file_category_id, req.body.id]);
        if (sql) {
            res.redirect('/f');
        } else {
            console.log(sql);
            res.redirect('/f');
        }
    }
}

const deletefileupload = async (req, res) => {

    const id_files = req.params.id;
    const file_upload = req.params.file;
    if (fs.existsSync(fileslinux + 'filesupload/' + file_upload)) {
        fs.unlink(fileslinux + 'filesupload/' + file_upload, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM reports where id = ? ', [id_files]);
            if (sql) {
                res.redirect('/f');
            } else {
                console.log(sql);
                res.redirect('/f');
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM reports where id = ? ', [id_files]);
        if (sql) {
            res.redirect('/f');
        } else {
            console.log(sql);
            res.redirect('/f');
        }
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

const files_category_details = async (req, res) => {
    const id_files_category = req.params.id;
    const sql = await executeQuery('SELECT * FROM  report_categories where id = ? ', [id_files_category]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertfilecategorydetails = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const sql = await executeQuery("insert into report_categories(title,title_en,report_categories.orders,created_at,updated_at) values(?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.order, time_datetime, time_datetime]);
    if (sql) {
        res.redirect('/fc');
    } else {
        console.log(sql)
        res.redirect('/fc');
    }
}

const deletefilecategorydetail = async (req, res) => {
    const id_files_category = req.params.id;
    const sql = await executeQuery('DELETE FROM report_categories where id = ? ', [id_files_category]);
    if (sql) {
        res.redirect('/fc');
    } else {
        console.log(sql);
        res.redirect('/fc');
    }
}

const updatefilescategory = async (req, res) => {
    const id_files_category = req.body.id;
    const sql = await executeQuery('UPDATE report_categories set title=?, title_en=?, orders=? where id = ? ', [req.body.title, req.body.title_en, req.body.orders, id_files_category]);
    if (sql) {
        res.redirect('/fc');
    } else {
        console.log(sql);
        res.redirect('/fc');
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


const pdes_detail = async (req, res) => {
    const id_pdes = req.params.id;
    const listdata = await executeQuery('SELECT * FROM  syariah where id = ? ', [id_pdes]);
    if (listdata?.length > 0) {
        res.status(200).json(listdata)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updatepdes = async (req, res) => {
    const sql = await executeQuery("update syariah set name = ? , link =? where id = ?",
        [req.body.name, req.body.link, req.body.id]);
    if (sql) {
        res.redirect('/p');
    } else {
        console.log(sql)
        res.redirect('/p');
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

const pdes_menu_detail = async (req, res) => {
    const id_pdes_menu = req.params.id;
    const listdata = await executeQuery('SELECT * FROM  syariah_menu where id = ? ', [id_pdes_menu]);
    if (listdata?.length > 0) {
        res.status(200).json(listdata)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updatepdesmenu = async (req, res) => {
    const sql = await executeQuery("update syariah_menu set name = ? where id = ?",
        [req.body.name, req.body.id]);
    if (sql) {
        res.redirect('/pm');
    } else {
        console.log(sql)
        res.redirect('/pm');
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

const pdes_submenu_detail = async (req, res) => {
    const id_pdes_submenu = req.params.id;
    const listdata = await executeQuery('SELECT * FROM  syariah_submenu where id = ? ', [id_pdes_submenu]);
    if (listdata?.length > 0) {
        res.status(200).json(listdata)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updatepdessubmenu = async (req, res) => {
    const sql = await executeQuery("update syariah_submenu set name = ? where id = ?",
        [req.body.name, req.body.id]);
    if (sql) {
        res.redirect('/ps');
    } else {
        console.log(sql)
        res.redirect('/ps');
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

const pdes_overview_detail = async (req, res) => {
    const id_pdes_overview = req.params.id;
    const sql = await executeQuery('SELECT * FROM  syariah_overview where id = ? ', [id_pdes_overview]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updatepdesoverview = async (req, res) => {
    const sql = await executeQuery("update syariah_overview set title = ? , link = ? where id = ?",
        [req.body.title, req.body.link, req.body.id]);
    if (sql) {
        res.redirect('/po');
    } else {
        console.log(sql)
        res.redirect('/po');
    }
}

//::::::::::::::::::::::::::::::End Of PDES :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of News:::::::::::::::::::::::::::::::::::::::::::::::::::::
const posts = async (req, res) => {
    const result = await executeQuery("SELECT * FROM news ORDER BY id DESC ");
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
                "img": item?.image?.split('/')[5],
                "category_id": item?.category_id,
                "tagging": item?.tag,
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

const seacrh_posts = async (req, res) => {
    const result = await executeQuery("SELECT * FROM news where title LIKE '%" + req.query.cari + "%' or title_en LIKE '%" + req.query.cari + "%' ORDER BY id ASC limit 5 ");
    const photos = await executeQuery("SELECT * FROM news_photos where title LIKE '%" + req.query.cari + "%' or title_en LIKE '%" + req.query.cari + "%' ORDER BY id ASC limit 5");
    const videos = await executeQuery("SELECT * FROM news_videos where title LIKE '%" + req.query.cari + "%' or title_en LIKE '%" + req.query.cari + "%' ORDER BY id ASC limit 5 ");
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
                "tagging": item?.tag,
                "detail": detail
            };
            resolve(row);
        });
    });
    Promise.all(promises)
        .then((rows) => {
            res.status(200).json({
                "news": rows,
                "photos": photos,
                "videos": videos,
            });
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


const news_categories_menu = async (req, res) => {
    const id_cnm = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news where category_id=?', [id_cnm]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const news_categories_date = async (req, res) => {
    const date_search = req.params.date;
    const sql = await executeQuery('SELECT * FROM  news where news_datetime LIKE ?', ['%' + date_search + '%']);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pagingnews = async (req, res) => {

    var numPerPage = 10;
    var skip = (req.query.page - 1) * numPerPage;

    const rows = await executeQuery('SELECT * FROM news LIMIT ?, ?', [skip, numPerPage])
    if (rows?.length > 0) {
        res.status(200).json(rows)
    } else {
        res.status(200).json({ "success": false })
    }

    // const rows = await executeQuery('SELECT count(*) as numRows FROM news');
    // var numRows = rows[0].numRows;
    // var numPages = Math.ceil(numRows / numPerPage);

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
    const fileupload = "https://webdev.rifhandi.com/uploads/news/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into news(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,news_datetime,created_at,updated_at,deleted_at,category_id,tag) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, news_datetime, timeupdate, timeupdate, null, req.body.category_id, req.body.taggings]);
    if (sql) {
        res.redirect('/n');
    } else {
        console.log(sql);
        res.redirect('/n');
    }
}

const updatenews = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const news_datetime = req.body.news_datetime.replace("T", " ");
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("UPDATE news set  title=?,title_en=?,excerpt=?,excerpt_en=?,content=?,content_en=?,is_publish=?,news_datetime=?,created_at=?,updated_at=?,deleted_at=?,category_id=?,tag=? where id = ?",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, req.body.is_publish, news_datetime, timeupdate, timeupdate, null, req.body.news_category_id, req.body.taggings, req.body.id]);
        if (sql) {
            res.redirect('/n');
        } else {
            console.log(sql);
            res.redirect('/n');
        }
    } else {
        const fileupload = "https://webdev.rifhandi.com/uploads/news/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE news set  title=?,title_en=?,excerpt=?,excerpt_en=?,content=?,content_en=?,image=?,is_publish=?,news_datetime=?,created_at=?,updated_at=?,deleted_at=?,category_id=?, tag=? where id = ?",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, news_datetime, timeupdate, timeupdate, null, req.body.news_category_id, req.body.taggings, req.body.id]);
        if (sql) {
            res.redirect('/n');
        } else {
            console.log(sql);
            res.redirect('/n');
        }
    }

}

const deletenews = async (req, res) => {
    const id_news = req.params.id;
    const foto_news = req.params.foto;
    if (fs.existsSync(fileslinux + 'news/' + foto_news)) {
        fs.unlink(fileslinux + 'news/' + foto_news, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM news where id = ? ', [id_news]);
            if (sql) {
                res.redirect('/n');
            } else {
                console.log(sql);
                res.redirect('/n');
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM news where id = ? ', [id_news]);
        if (sql) {
            res.redirect('/n');
        } else {
            console.log(sql);
            res.redirect('/n');
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
    const sql = await executeQuery("insert into news_categories(title,title_en,description,description_en,created_at,updated_at) values(?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, cat_datetime, cat_datetime]);
    if (sql) {
        res.redirect('/nc');
    } else {
        console.log(sql)
        res.redirect('/nc');
    }
}

const updatenewscategory = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const sql = await executeQuery("update news_categories set title=?,title_en=?,description=?,description_en=?,created_at=?,updated_at=? where id = ?",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, time_datetime, time_datetime, req.body.id]);
    if (sql) {
        res.redirect('/nc');
    } else {
        console.log(sql)
        res.redirect('/nc');
    }
}

const deletenewscategory = async (req, res) => {
    const id_news_cat = req.params.id;
    const sql = await executeQuery('DELETE FROM news_categories where id = ? ', [id_news_cat]);
    if (sql) {
        res.redirect('/nc');
    } else {
        console.log(sql);
        res.redirect('/nc');
    }

}

//::::::::::::::::::::::::::::::End Of News:::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Photos:::::::::::::::::::::::::::::::::::::::::::::::::::::
const categories = async (req, res) => {
    const names = req.params.name;
    const sql = await executeQuery('SELECT * FROM news_' + names + '')
    if (sql?.length > 0) {
        if (names == 'photos') {
            const array = [];
            sql?.forEach((items, index) => {
                const bbb = {
                    "id": items?.id,
                    "title": items?.title,
                    "photo": items?.photo,
                    "content": items?.content,
                    "created_at": items?.created_at,
                    "updated_at": items?.updated_at,
                    "deleted_at": items?.deleted_at,
                    "news_datetime": items?.news_datetime,
                    "title_en": items?.title_en,
                    "content_en": items?.content_en,
                    "ph": items?.photo?.split('/')[5]
                };
                array.push(bbb);
            })
            res.status(200).json(array)
        } else {
            const array = [];
            sql?.forEach((items, index) => {
                const bbb = {
                    "id": items?.id,
                    "title": items?.title,
                    "video": items?.video,
                    "duration": items?.duration,
                    "content": items?.content,
                    "created_at": items?.created_at,
                    "updated_at": items?.updated_at,
                    "deleted_at": items?.news_datetime,
                    "news_datetime": items?.news_datetime,
                    "title_en": items?.title_en,
                    "content_en": items?.content_en
                };
                array.push(bbb);
            })
            res.status(200).json(array)
        }

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
    const photos_datetime = "https://webdev.rifhandi.com/uploads/photo/" + req.body.photo_datetime.replace("T", " ");
    const photoupload = req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into news_photos(title,title_en,content,content_en,photo,news_datetime,created_at,updated_at,deleted_at) values(?,?,?,?,?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, photoupload, photos_datetime, time_datetime, time_datetime, null])
    if (sql) {
        res.redirect('/ph');
    } else {
        console.log(sql)
        res.redirect('/ph');
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
    if (fs.existsSync(fileslinux + 'photo/' + foto_photo)) {
        fs.unlink(fileslinux + 'photo/' + foto_photo, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM news_photos where id = ? ', [id_photo]);
            if (sql) {
                res.redirect('/ph');
            } else {
                res.redirect('/ph');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM news_photos where id = ? ', [id_photo]);
        if (sql) {
            res.redirect('/ph');
        } else {
            res.redirect('/ph');
            console.log(sql);
        }
    }
}

const updatephoto = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const news_datetime = req.body.news_datetime.replace("T", " ");
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("UPDATE news_photos set  title=?,title_en=?,content=?,content_en=?,news_datetime=?,created_at=?,updated_at=?,deleted_at=? where id = ?",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, news_datetime, timeupdate, timeupdate, null, req.body.id]);
        if (sql) {
            res.redirect('/ph');
        } else {
            console.log(sql);
            res.redirect('/ph');
        }
    } else {
        const fileuploads = "https://webdev.rifhandi.com/uploads/photo/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE news_photos set  title=?,title_en=?,content=?,content_en=?,photo=?, news_datetime=?,created_at=?,updated_at=?,deleted_at=? where id = ?",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, fileuploads, news_datetime, timeupdate, timeupdate, null, req.body.id]);
        if (sql) {
            res.redirect('/ph');
        } else {
            console.log(sql);
            res.redirect('/ph');
        }
    }

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
        res.redirect('/v');
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

const deletevideo = async (req, res) => {
    const id_video = req.params.id;
    const sql = await executeQuery('DELETE FROM  news_videos where id=?', [id_video]);
    if (sql) {
        res.redirect('/v');
    } else {
        console.log(sql)
        res.redirect('/v');
    }
}

const updatevideos = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;
    const videos_datetime = req.body.video_datetime.replace("T", " ");
    const sql = await executeQuery("update news_videos set title=?,title_en=?,content=?,content_en=?,video=?,duration=?,news_datetime=?,created_at=?,updated_at=? where id = ?",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.video, req.body.duration, videos_datetime, time_datetime, time_datetime, req.body.id]);
    if (sql) {
        res.redirect('/v');
    } else {
        console.log(sql)
        res.redirect('/v');
    }
}

//::::::::::::::::::::::::::::::End Of Videos:::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Users:::::::::::::::::::::::::::::::::::::::::::::::::::::
const users = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users where approve = "Y"');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const users_new = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 MONTH) AND approve = "Y" ORDER BY created_at DESC');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
};

const users_whitelist = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users WHERE approve = "N" ORDER BY created_at DESC');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
};

const approveusers = async (req, res) => {
    const id_params_user = req.params.id;
    const sql = await executeQuery("UPDATE users SET approve=? WHERE id=? ", ['Y', id_params_user]);
    if (sql) {
        res.redirect('/whitelist');
    } else {
        res.redirect('/whitelist')
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

//:::::::::::::::::::::::::::::: Zona Khas  :::::::::::::::::::::::::::::::::::::::::::::::::::::::



const khas_zone = async (req, res) => {
    const result = await executeQuery("SELECT * FROM province ORDER BY id DESC ");
    let promises = result.map(async (item) => {
        return new Promise(async (resolve, reject) => {
            let zone = await executeQuery("SELECT * FROM khas_zone WHERE province = ?", [item?.id]);
            const aar = [];
            zone.forEach((elem) => {
                const ppp = {
                    "id": elem?.id,
                    "khas_zone": elem?.khas_zone,
                    "city": elem?.city,
                    "province": elem?.province,
                    "province_names": item?.province_name,
                    "inauguration": elem?.inauguration,
                    "tenant": elem?.tenant,
                    "inaugurated": elem?.inaugurated
                }
                aar.push(ppp);
            })

            let detail = aar;
            let row = {
                "id": item?.id,
                "province_name": item?.province_name,
                "zonakhas": detail,
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

const zona_peta = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM khas_zone');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const provinces = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM province');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const detail_khas_zone = async (req, res) => {
    const id_khas_zone = req.params.id;
    const sql = await executeQuery('SELECT * FROM khas_zone where id = ?', [id_khas_zone]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertzonakhas = async (req, res) => {
    const sql = await executeQuery("insert into khas_zone(khas_zone,city,province,inauguration,tenant,inaugurated) values(?,?,?,?,?,?)",
        [req.body.khas_zone, req.body.city, req.body.province, req.body.inauguration, req.body.tenant, req.body.inaugurated]);
    if (sql) {
        res.redirect('/zk');
    } else {
        console.log(sql)
        res.redirect('/zk');
    }
}

const updatezonakhas = async (req, res) => {
    const sql = await executeQuery("update khas_zone set khas_zone=?, city=?,province=?,inauguration=?,tenant=?,inaugurated=? where id = ?",
        [req.body.khas_zone, req.body.city, req.body.province, req.body.inauguration, req.body.tenant, req.body.inaugurated, req.body.id]);
    if (sql) {
        res.redirect('/zk');
    } else {
        console.log(sql)
        res.redirect('/zk');
    }
}

const deletezonakhas = async (req, res) => {
    const id_zona_khas = req.params.id;
    const sql = await executeQuery("delete from khas_zone where id = ?",
        [id_zona_khas]);
    if (sql) {
        res.redirect('/zk');
    } else {
        console.log(sql)
        res.redirect('/zk');
    }
}

const tagging = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM tagging');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const detailtagging = async (req, res) => {
    const id_tagging = req.params.id;
    const sql = await executeQuery('SELECT * FROM tagging where id = ? ', [id_tagging]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const inserttagging = async (req, res) => {
    const sql = await executeQuery("insert into tagging(tagging) values(?)",
        [req.body.tagging]);
    if (sql) {
        res.redirect('/tg');
    } else {
        console.log(sql)
        res.redirect('/tg');
    }
}

const updatetagging = async (req, res) => {
    const sql = await executeQuery("update tagging set tagging=? where id = ?",
        [req.body.tagging, req.body.id]);
    if (sql) {
        res.redirect('/tg');
    } else {
        console.log(sql)
        res.redirect('/tg');
    }
}

const deletetagging = async (req, res) => {
    const id_tagging = req.params.id;
    const sql = await executeQuery("delete from tagging where id = ?",
        [id_tagging]);
    if (sql) {
        res.redirect('/tg');
    } else {
        console.log(sql)
        res.redirect('/tg');
    }
}

const custom_page = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM custom_page');
    const array = [];
    sql.forEach((element, index) => {
        const rrr = {
            "id": element?.id,
            "name": element?.name,
            "path": element?.path,
            "imgs": element?.path?.split('/')[5],
        }
        array.push(rrr);
    })

    if (array?.length > 0) {
        res.status(200).json(array)
    } else {
        res.status(200).json({ "success": false })
    }
}

const detail_custom_page = async (req, res) => {
    const id_custom = req.params.id;
    const sql = await executeQuery('SELECT * FROM custom_page where id = ? ', [id_custom]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertcustompage = async (req, res) => {
    const filesimage = "https://webdev.rifhandi.com/uploads/custompage/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery('insert into custom_page(name,path) values (?,?)', [req.body.names, filesimage]);
    if (sql?.length > 0) {
        res.redirect('/customfront');
    } else {
        res.redirect('/customfront');
    }
}

const delete_custom_page = async (req, res) => {
    const id_custom = req.params.id;
    const image = req.params.foto;
    if (fs.existsSync(fileslinux + 'custompage/' + image)) {
        fs.unlink(fileslinux + 'custompage/' + image, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM custom_page where id = ? ', [id_custom]);
            if (sql) {
                res.redirect('/customfront');
            } else {
                res.redirect('/customfront');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM custom_page where id = ? ', [id_custom]);
        if (sql?.length > 0) {
            res.redirect('/customfront');
        } else {
            res.redirect('/customfront');
        }
    }
}

//:::::::::::::::::::::::::::::: End Zona Khas  :::::::::::::::::::::::::::::::::::::::::::::::::::::::

const naration = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM naration where id = 1');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updatenarations = async (req, res) => {
    const sql = await executeQuery("UPDATE naration set description = ?, description_en = ? where id = ?",
        [req.body.description, req.body.description_en, req.body.id]);
    if (sql) {
        res.redirect('/narationfront');
    } else {
        res.redirect('/narationfront');
    }
}

const statistics = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM statistic');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertstatistic = async (req, res) => {
    const sql = await executeQuery("insert into statistic(title,title_en,amount,date_created) values(?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.amount, req.body.date_created]);
    if (sql) {
        res.redirect('/slidefront');
    } else {
        console.log(sql)
        res.redirect('/slidefront');
    }
}

const deletestatistic = async (req, res) => {
    const id_stat = req.params.id;
    const sql = await executeQuery('DELETE FROM statistic where id = ? ', [id_stat]);
    if (sql) {
        res.redirect('/slidefront');
    } else {
        res.redirect('/slidefront');
    }
}


const sourcesdata = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM sourcedata');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertsourcesdata = async (req, res) => {
    const sql = await executeQuery("insert into sourcedata(dataset,source,date_created) values(?,?,?)",
        [req.body.dataset, req.body.source, req.body.date_created]);
    if (sql) {
        res.redirect('/datafront');
    } else {
        console.log(sql)
        res.redirect('/datafront');
    }
}

const deletesourcesdata = async (req, res) => {
    const id_stat = req.params.id;
    const sql = await executeQuery('DELETE FROM sourcedata where id = ? ', [id_stat]);
    if (sql) {
        res.redirect('/datafront');
    } else {
        res.redirect('/datafront');
    }
}

//:::::::::::::::::::::::::::::::::::::Start Of OPINI :::::::::::::::::::::::::::::::::::::::::::::::::


const opini = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM opini where web_identity = 'kneks'")
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const opini_detail = async (req, res) => {
    const id_opini = req.params.id;
    const sql = await executeQuery("SELECT * FROM opini where id = ? ", [id_opini]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertopini = async (req, res) => {
    const sql = await executeQuery("insert into opini(title,title_en,content,content_en,web_identity) values(?,?,?,?,?)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, 'kneks']);
    if (sql) {
        res.redirect('/opini');
    } else {
        console.log(sql)
        res.redirect('/opini');
    }
}

const deleteopini = async (req, res) => {
    const id_opini = req.params.id;
    const sql = await executeQuery('DELETE FROM  opini where id = ?', [id_opini]);
    if (sql) {
        res.redirect('/opini');
    } else {
        console.log(sql)
        res.redirect('/opini');
    }
}


const updateopini = async (req, res) => {
    const sql = await executeQuery("UPDATE opini SET title=?,title_en=?,content=?,content_en=? where id = ?",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.id]);
    if (sql) {
        res.redirect('/opini');
    } else {
        console.log(sql)
        res.redirect('/opini');
    }
}
//::::::::::::::::::::::::::::::::::: END OF CUSTOM DATA NARATION PAGE
//::::::::::::::::::::::::::::::Start Of Modules:::::::::::::::::::::::::::::::::::::::::::::::::::::
module.exports = {
    do_login,
    do_logout,
    api_login,
    user_register,
    dashboards,
    categories,
    photodetail,
    deletephoto,
    updatephoto,
    posts,
    seacrh_posts,
    newsdetail,
    news_categories,
    news_categories_menu,
    news_categories_date,
    pagingnews,
    deletenews,
    updatenews,
    insertnews,
    insertnewscategory,
    detailnewscategory,
    updatenewscategory,
    deletenewscategory,
    insertphoto,
    insertvideo,
    updatevideos,
    videodetail,
    deletevideo,
    abouts,
    deleteabout,
    detailabout,
    updateabouts,
    structure,
    deletestructure,
    detailstructure,
    inserstructure,
    updatestructure,
    hotissue,
    hotissue_detail,
    hotissuecategory,
    updatehotissuecategory,
    detailhotissuecategory,
    hotissuesubcategory,
    deletehotissuecategory,
    deletehotissuesubcategory,
    detailhotissuesubcategory,
    updatehotissue,
    deletehotissue,
    inserthotissue,
    inserthotissubcategory,
    updatehotissuesubcategory,
    directorat,
    directorat_path,
    institutions,
    detailinstitutions,
    deleteinstitution,
    updateinstitution,
    sosmed,
    detailsosmed,
    deletesosmed,
    updatesosmed,
    scopes,
    detailscopes,
    deletescopes,
    updatescopes,
    maps,
    updatemaps,
    contacts,
    updatecontacts,
    questbook,
    banners,
    deletebanner,
    detailbanner,
    updatebanners,
    agendas,
    agenda_graph,
    agendadetails,
    insertagenda,
    deleteagenda,
    updateagenda,
    search_agenda,
    files,
    filesdetails,
    insertfileupload,
    updatefileupload,
    deletefileupload,
    files_category,
    files_category_details,
    updatefilescategory,
    insertfilecategorydetails,
    deletefilecategorydetail,
    pdes,
    pdes_detail,
    updatepdes,
    pdes_menu,
    updatepdesmenu,
    pdes_menu_detail,
    pdes_submenu,
    updatepdessubmenu,
    pdes_submenu_detail,
    pdes_overview,
    pdes_overview_detail,
    updatepdesoverview,
    users,
    users_new,
    users_whitelist,
    approveusers,
    userroles,
    insertusers,
    updatepassword,
    changespassword,
    deleteuser,
    khas_zone,
    zona_peta,
    deletezonakhas,
    updatezonakhas,
    insertzonakhas,
    provinces,
    detail_khas_zone,
    tagging,
    inserttagging,
    detailtagging,
    deletetagging,
    updatetagging,
    custom_page,
    detail_custom_page,
    insertcustompage,
    delete_custom_page,
    naration,
    updatenarations,
    statistics,
    deletestatistic,
    insertstatistic,
    sourcesdata,
    deletesourcesdata,
    insertsourcesdata,
    opini,
    opini_detail,
    insertopini,
    updateopini,
    deleteopini
}
//::::::::::::::::::::::::::::::End Of Module:::::::::::::::::::::::::::::::::::::::::::::::::::::