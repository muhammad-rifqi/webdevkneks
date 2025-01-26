const md5 = require('md5');
const { executeQuery } = require('./postgres');
const fs = require('fs');
const axios = require('axios');


// let fileswindows = 'D:/kneksbe/webdevkneks/public/uploads/';
let fileslinux = '/var/www/html/webdev.rifhandi.com/public_html/webdevkneks/public/uploads/';
let site_url = "https://webdev.rifhandi.com";
//::::::::::::::::::::::::::::::Start Of LOGIN LOGOUT :::::::::::::::::::::::::::::::::::::::::::::::::::::
const do_login = async (req, res) => {
    const email = req?.body?.email;
    const password = md5(req?.body?.password);
    const ip = req.body.ip_address;
    if (email == 'admin@kneks.go.id' || email == 'admin2@kneks.go.id') {
        const sql = await executeQuery("SELECT * FROM users where  email = $1 AND password = $2  AND approve = 'Y'", [email, password]);
        if (sql?.length > 0) {
            u_id = sql[0]?.id;
            const isLogin = true;
            res.cookie("islogin", isLogin, {
                maxAge: 900000,
                domain: '.rifhandi.com',
                secure: true,
                httpOnly: false,
                sameSite: 'None',
                overwrite: true,
            });
            res.cookie("id", sql[0]?.id, {
                maxAge: 900000,
                domain: '.rifhandi.com',
                secure: true,
                httpOnly: false,
                sameSite: 'None',
                overwrite: true,
            });
            res.cookie("name", sql[0]?.name, {
                maxAge: 900000,
                domain: '.rifhandi.com',
                secure: true,
                httpOnly: false,
                sameSite: 'None',
                overwrite: true,
            });
            res.cookie("roles_id", sql[0]?.role_id, {
                maxAge: 900000,
                domain: '.rifhandi.com',
                secure: true,
                httpOnly: false,
                sameSite: 'None',
                overwrite: true,
            });
            res.cookie("id_province", sql[0]?.id_province, {
                maxAge: 900000,
                domain: '.rifhandi.com',
                secure: true,
                httpOnly: false,
                sameSite: 'None',
                overwrite: true,
            });
            res.cookie("directorat_id", sql[0]?.directorat_id, {
                maxAge: 900000,
                domain: '.rifhandi.com',
                secure: true,
                httpOnly: false,
                sameSite: 'None',
                overwrite: true,
            });
            // res.redirect("/dashboard");
            res.status(200).json({ "success": "true" })
        } else {
            // res.redirect("/");
            res.status(200).json({ "success": "false" })
        }
    } else if (email == 'superadmin@kneks.go.id') {
        res.status(200).json({ "success": "super" })
    } else {
        const query = await executeQuery("SELECT * FROM ip_address where  ip = $1 AND ip_address.approve = $2", [ip, 'Y']);
        if (query.length > 0) {
            const sql = await executeQuery("SELECT * FROM users where  email = $1 AND password = $2  AND users.approve = 'Y'", [email, password]);
            if (sql?.length > 0) {
                u_id = sql[0]?.id;
                const isLogin = true;
                res.cookie("islogin", isLogin, {
                    maxAge: 900000,
                    domain: '.rifhandi.com',
                    secure: true,
                    httpOnly: false,
                    sameSite: 'None',
                    overwrite: true,
                });
                res.cookie("id", sql[0]?.id, {
                    maxAge: 900000,
                    domain: '.rifhandi.com',
                    secure: true,
                    httpOnly: false,
                    sameSite: 'None',
                    overwrite: true,
                });
                res.cookie("name", sql[0]?.name, {
                    maxAge: 900000,
                    domain: '.rifhandi.com',
                    secure: true,
                    httpOnly: false,
                    sameSite: 'None',
                    overwrite: true,
                });
                res.cookie("roles_id", sql[0]?.role_id, {
                    maxAge: 900000,
                    domain: '.rifhandi.com',
                    secure: true,
                    httpOnly: false,
                    sameSite: 'None',
                    overwrite: true,
                });
                res.cookie("id_province", sql[0]?.id_province, {
                    maxAge: 900000,
                    domain: '.rifhandi.com',
                    secure: true,
                    httpOnly: false,
                    sameSite: 'None',
                    overwrite: true,
                });
                res.cookie("directorat_id", sql[0]?.directorat_id, {
                    maxAge: 900000,
                    domain: '.rifhandi.com',
                    secure: true,
                    httpOnly: false,
                    sameSite: 'None',
                    overwrite: true,
                });
                // res.redirect("/dashboard");
                res.status(200).json({ "success": "true" })
            } else {
                // res.redirect("/");
                res.status(200).json({ "success": "false" })
            }
        } else {
            const insert = await executeQuery("INSERT INTO ip_address(ip,email) VALUES ($1,$2)", [ip, email]);
            if (insert) {
                res.status(200).json({ "success": "pending" })
            } else {
                res.status(200).json({ "success": "eror" })
            }
        }
    }
}

const user_register = async (req, res) => {
    const passwords = md5(req?.body?.password);
    const sql = await executeQuery("insert into users(name,email,password) values($1,$2,$3)",
        [req.body.username.replace(/\s/g, ''), req.body.email, passwords]);
    if (sql) {
        // res.redirect('/');
        res.status(200).json({ "success": true });
    } else {
        res.status(200).json({ "success": false });
    }
}

const do_logout = (req, res) => {
    res.clearCookie("islogin", { domain: ".rifhandi.com" });
    res.clearCookie("name", { domain: ".rifhandi.com" });
    res.clearCookie("id", { domain: ".rifhandi.com" });
    res.clearCookie("roles_id", { domain: ".rifhandi.com" });
    res.clearCookie("id_province", { domain: ".rifhandi.com" });
    res.clearCookie("directorat_id", { domain: ".rifhandi.com" });
    res.redirect("/");
}

//::::::::::::::::::::::::::::::End Of Login :::::::::::::::::::::::::::::::::::::::::::::::::::::

//::::::::::::::::::::::::::::::Start Of Abouts :::::::::::::::::::::::::::::::::::::::::::::::::::::
const abouts = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM abouts where web_identity = 'kneks'");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const abouts_kdeks = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM abouts where id = '7' and web_identity = 'kdeks' and tag = 'about'");
    res.status(200).json(sql)
}

const history_kdeks = async (req, res) => {
    //9
    const sql = await executeQuery("SELECT * FROM abouts where id = '9' and web_identity = 'kdeks' and tag = 'history'");
    res.status(200).json(sql)
}

const about_province = async (req, res) => {
    const id_province = req.params.id;
    const arr = [];
    const sql = await executeQuery("SELECT *  FROM  abouts where id_province = $1 AND web_identity = 'kdeks' and tag = 'about' ", [id_province]);
    if (sql?.length > 0) {
        const rows = {
            "id": sql[0]?.id,
            "title": sql[0]?.title,
            "title_en": sql[0]?.title_en,
            "tag": sql[0]?.tag,
            "content": sql[0]?.content,
            "created_at": sql[0]?.created_at,
            "web_identity": sql[0]?.web_identity,
            "id_province": sql[0]?.id_province,
            "images": sql[0]?.images,
            "updated_at": sql[0]?.updated_at,
            "deleted_at": sql[0]?.deleted_at,
        }
        arr.push(rows);
        res.status(200).json(arr)
    } else {
        res.status(200).json({ "success": false })
    }
}

const history_province = async (req, res) => {
    const id_province = req.params.id;
    const arr = [];
    const sql = await executeQuery("SELECT *  FROM  abouts where id_province = $1 AND web_identity = 'kdeks' and tag = 'history' ", [id_province]);
    if (sql?.length > 0) {
        const rows = {
            "id": sql[0]?.id,
            "title": sql[0]?.title,
            "title_en": sql[0]?.title_en,
            "tag": sql[0]?.tag,
            "content": sql[0]?.content,
            "created_at": sql[0]?.created_at,
            "web_identity": sql[0]?.web_identity,
            "id_province": sql[0]?.id_province,
            "images": sql[0]?.images,
            "updated_at": sql[0]?.updated_at,
            "deleted_at": sql[0]?.deleted_at,
        }
        arr.push(rows);
        res.status(200).json(arr)
    } else {
        res.status(200).json({ "success": false })
    }
}

const kdeks = async (req, res) => {
    //rifqi
    const role_id_users = req.cookies.roles_id;
    const roles_prov = req.cookies.id_province;
    if (role_id_users == 1 || role_id_users == 2) {
        const sql = await executeQuery("SELECT * FROM abouts where web_identity = 'kdeks'");
        if (sql?.length > 0) {
            res.status(200).json(sql)
        } else {
            res.status(200).json({ "success": false })
        }
    } else {
        const sql = await executeQuery("SELECT * FROM abouts where id_province = $1", [roles_prov]);
        if (sql?.length > 0) {
            res.status(200).json(sql)
        } else {
            res.status(200).json({ "success": false })
        }
    }
}

const deleteabout = async (req, res) => {
    const id_abouts = req.params.id;
    const sql = await executeQuery("DELETE FROM  abouts where id = $1", [id_abouts]);
    if (sql) {
        res.redirect('/tk');
    } else {
        console.log(sql)
        res.redirect('/tk');
    }
}

const detailabout = async (req, res) => {
    const id_abouts = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  abouts where id = $1', [id_abouts]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const updateabouts = async (req, res) => {
    const sql = await executeQuery('UPDATE abouts set title = $1 , title_en = $2, tag = $3 , content = $4 , content_en = $5 where id = $6', [req.body.title, req.body.title_en, req.body.tag, req.body.content, req.body.content_en, req.body.id]);
    if (sql) {
        res.redirect('/tk');
    } else {
        console.log(sql)
        res.redirect('/tk');
    }

}

const insertkdeks = async (req, res) => {
    const sql = await executeQuery("INSERT into abouts (title,title_en,tag,content,content_en,web_identity,id_province)values($1,$2,$3,$4,$4,$5,$6) ", [req.body.title, req.body.title_en, req.body.tag, req.body.content, req.body.content_en, req.body.web_identity, req.body.id_province]);
    if (sql) {
        res.redirect('/kdeks');
    } else {
        res.redirect('/kdeks');
    }
}

const updatekdeks = async (req, res) => {
    const sql = await executeQuery("UPDATE abouts set title= $1, title_en= $2, tag= $3, content= $4, content_en= $5, id_province = $6 , web_identity = $7 , tag = $8 where id = $9  ", [req.body.title, req.body.title_en, req.body.tag, req.body.content, req.body.content_en, req.body.id_province, req.body.web_identity, req.body.tag, req.body.id]);
    if (sql) {
        res.redirect('/kdeks');
    } else {
        res.redirect('/kdeks');
    }
}

//::::::::::::::::::::::::::::::End Of Abouts :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of Structure :::::::::::::::::::::::::::::::::::::::::::::::::::::
const structure = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM  structure_assets");
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
    const fileuploads = site_url + "/uploads/structure/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into structure_assets(name,position,photo,tag,description,created_at,updated_at) values($1,$2,$3,$4,$5,$6,$7)",
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
            const sql = await executeQuery("DELETE FROM  structure_assets where id=$1", [id_abouts]);
            if (sql) {
                res.redirect('/s');
            } else {
                console.log(sql)
                res.redirect('/s');
            }
        });
    } else {
        const sql = await executeQuery("DELETE FROM  structure_assets where id=$1", [id_abouts]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
        }
    }

}

const detailstructure = async (req, res) => {
    const id_abouts = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  structure_assets where id=$1', [id_abouts]);
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
        const sql = await executeQuery("update structure_assets set name=$1,position=$2,tag=$3,description=$4,created_at=$5,updated_at=$6 where id = $7",
            [req.body.name, req.body.position, req.body.tag, req.body.description, times, times, req.body.id]);
        if (sql) {
            res.redirect('/s');
            console.log(sql);
        } else {
            console.log(sql);
            res.redirect('/s');
        }
    } else {
        const fileuploads = site_url + "/uploads/structure/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("update structure_assets set name=$1,position=$2,photo=$3,tag=$4, description=$5, created_at=$6,updated_at=$7 where id=$8",
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
//::::::::::::::::::::::::::::::Start Of DIREKTORAT :::::::::::::::::::::::::::::::::::::::::::::::::::::
const directorat = async (req, res) => {
    // const sql = await executeQuery('SELECT * FROM `hot_issues` LEFT JOIN `hot_subcategories`on hot_issues.hot_subcategory_id = hot_subcategories.id LEFT JOIN hot_categories on hot_subcategories.hot_category_id = hot_categories.id GROUP BY hot_categories.id');
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == 1 || role_id_users == 2) {
        const sql = await executeQuery('SELECT * FROM directorats');
        if (sql?.length > 0) {
            res.status(200).json(sql)
        } else {
            res.status(200).json([])
        }
    } else {
        const sql = await executeQuery("SELECT * FROM directorats where id = $1", [role_id_users]);
        if (sql?.length > 0) {
            res.status(200).json(sql)
        } else {
            res.status(200).json([])
        }
    }
}

const directorats_fe = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM directorats order by id ASC");
        if (sql?.length > 0) {
            res.status(200).json(sql)
        } else {
            res.status(200).json([])
        }
}

const directorat_details = async (req, res) => {
    const pppd = req.params.id;
    const sql = await executeQuery('SELECT * FROM  directorats where id = $1 ', [pppd]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const directorat_devisi = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM devisi');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json([])
    }
}

const directorats_devisi_delete = async (req, res) => {
    const iddev = req.params.id;
    const sql = await executeQuery('DELETE FROM  devisi where id=$1', [iddev]);
    if (sql) {
        res.redirect('/directorats_devisi/' + iddev);
    } else {
        console.log(sql)
        res.redirect('/directorats_devisi/' + iddev);
    }
}

const insertdirectorats = async (req, res) => {
    const a = req.body.daerah.split('-');
    const sql = await executeQuery('INSERT INTO directorats(title,title_en,description,description_en,id_province,province_name)values($1,$2,$3,$4,$5,$6)', [req.body.title, req.body.title_en, req.body.description, req.body.description_en, a[0], a[1]]);
    if (sql?.length > 0) {
        res.redirect('/directorats');
    } else {
        res.redirect('/directorats');
    }
}


const directorat_path = async (req, res) => {
    const id_hot_cat = req.params.id;
    const sql = await executeQuery('SELECT * FROM hot_issues where hot_issue_category = $1 ', [id_hot_cat]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const update_directorats = async (req, res) => {
    const a = req.body.daerah.split('-');
    const sql = await executeQuery("update directorats set title=$1,title_en=$2,description=$3,description_en=$4,id_province=$5,province_name=$6 where id = $7",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, a[0], a[1], req.body.id]);

    if (sql) {
        res.redirect('/directorats');
    } else {
        console.log(sql)
        res.redirect('/directorats');
    }
}

const delete_direactorats = async (req, res) => {
    const idcat = req.params.id;
    const sql = await executeQuery('DELETE FROM  directorats where id=$1', [idcat]);
    if (sql) {
        res.redirect('/directorats');
    } else {
        console.log(sql)
        res.redirect('/directorats');
    }
}

const directorats_uploads = async (req, res) => {
    const fileupload1 = site_url + "/uploads/directorat/images/" + req.files['images'][0].originalname.replace(" ", "");
    const fileupload2 = site_url + "/uploads/directorat/images/" + req.files['banners'][0].originalname.replace(" ", "");
    const sql = await executeQuery("update directorats set images = $1 ,  directiorat_banner = $2 where id = $3",
        [fileupload1, fileupload2, req.body.id]);
    if (sql) {
        res.redirect('/directorats_detail/' + req.body.id);
    } else {
        res.redirect('/directorats_detail/' + req.body.id);
    }
}


const directorat_devisi_add = async (req, res) => {
    const sql = await executeQuery("insert into devisi(title,description,directorats_id)values($1,$2,$3)",
        [req.body.title, req.body.description, req.body.id]);
    if (sql) {
        res.redirect('/directorats_devisi/' + req.body.id);
    } else {
        res.redirect('/directorats_devisi/' + req.body.id);
    }
}

const delete_images_direactorats = async (req, res) => {
    const id_dir = req.params.id;
    const foto_dir = req.params.foto;

    if (fs.existsSync(fileslinux + 'directorat/images/' + foto_dir)) {
        fs.unlink(fileslinux + 'directorat/images/' + foto_dir, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('UPDATE directorats set images = $1 where id = $2 ', ['NULL', id_dir]);
            if (sql) {
                res.redirect('/directorats_detail/' + id_dir);
            } else {
                console.log(sql);
                res.redirect('/directorats_detail/' + id_dir);
            }
        });
    } else {
        const sql = await executeQuery('UPDATE directorats set images = $1 where id = $2 ', ['NULL', id_dir]);
        if (sql) {
            res.redirect('/directorats_detail/' + id_dir);
        } else {
            console.log(sql);
            res.redirect('/directorats_detail/' + id_dir);
        }
    }
}

const delete_banners_direactorats = async (req, res) => {
    const id_dirct = req.params.id;
    const foto_dirct = req.params.foto;

    if (fs.existsSync(fileslinux + 'directorat/images/' + foto_dirct)) {
        fs.unlink(fileslinux + 'directorat/images/' + foto_dirct, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('UPDATE directorats set images = $1 where id = $2 ', ['NULL', id_dirct]);
            if (sql) {
                res.redirect('/directorats_detail/' + id_dirct);
            } else {
                console.log(sql);
                res.redirect('/directorats_detail/' + id_dirct);
            }
        });
    } else {
        const sql = await executeQuery('UPDATE directorats set images = $1 where id = $2 ', ['NULL', id_dirct]);
        if (sql) {
            res.redirect('/directorats_detail/' + id_dirct);
        } else {
            console.log(sql);
            res.redirect('/directorats_detail/' + id_dirct);
        }
    }
}

//:::::::::::::::::::::::::::::::::::::::::::: End Of Direktirat :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

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
    const sql = await executeQuery('SELECT * FROM  hot_issues where id=$1', [id_h]);
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
    const sql = await executeQuery('SELECT * FROM  hot_categories where id = $1 ', [ppp]);
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
    const sql = await executeQuery("update hot_categories set title=$1,title_en=$2,description=$3,description_en=$4,created_at=$5,updated_at=$6,deleted_at=$7 where id = $8",
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
    const sql = await executeQuery('DELETE FROM  hot_categories where id=$1', [idcat]);
    if (sql) {
        res.redirect('/hic');
    } else {
        console.log(sql)
        res.redirect('/hic');
    }
}

const deletehotissuesubcategory = async (req, res) => {
    const idsubcat = req.params.id;
    const sql = await executeQuery('DELETE FROM  hot_subcategories where id=$1', [idsubcat]);
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
    const sql = await executeQuery('SELECT * FROM  hot_subcategories where id = $1 ', [id_sub]);
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

    const sql = await executeQuery("update hot_subcategories set title=$1,title_en=$2,description=$3,description_en=$4,created_at=$5,updated_at=$6,deleted_at=$7 where id = $8",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, datetimes, datetimes, datetimes, req.body.id]);

    if (sql) {
        res.redirect('/hisc');
    } else {
        console.log(sql)
        res.redirect('/hisc');
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
    const sql = await executeQuery("insert into hot_issues(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,hot_issue_datetime,created_at,updated_at,deleted_at,hot_subcategory_id,hot_issue_category) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14)",
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
    const sql = await executeQuery("insert into hot_subcategories(title,title_en,created_at,updated_at,hot_category_id) values($1,$2,$3,$4,$5)",
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
        const sql = await executeQuery("update hot_issues set title=$1,title_en=$2,excerpt=$3,excerpt_en=$4,content=$5,content_en=$6,is_publish=$7,hot_issue_datetime=$8,created_at=$9,updated_at=$10,deleted_at=$11,hot_subcategory_id=$12,hot_issue_category=$13 where id = $14",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, req.body.is_publish, issue_datetime, hot_issue_datetime, hot_issue_datetime, null, req.body.category_id, req.body.hot_category_id, req.body.id]);
        if (sql) {
            res.redirect('/hi');
        } else {
            console.log(sql);
            res.redirect('/hi');
        }
    } else {
        const fileupload = req.file.originalname.replace(" ", "");
        const sql = await executeQuery("update hot_issues  set title=$1,title_en=$2,excerpt=$3,excerpt_en=4,content=5,content_en=6,image=$7,is_publish=$8,hot_issue_datetime=$9,created_at=$10,updated_at=$11,deleted_at=$12,hot_subcategory_id=$13,hot_issue_category=$14 where id = $15",
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
            const sql = await executeQuery('DELETE FROM hot_issues where id = $1 ', [id_issue]);
            if (sql) {
                res.redirect('/hi');
            } else {
                console.log(sql);
                res.redirect('/hi');
            }
        });
    } else {
        const sql = await executeQuery('DELETE FROM hot_issues where id = $1 ', [id_issue]);
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
    const sql = await executeQuery('SELECT *  FROM  institutions where id=$1', [id_inst]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deleteinstitution = async (req, res) => {
    const id_inst = req.params.id;
    const sql = await executeQuery('DELETE FROM  institutions where id = $1 ', [id_inst]);
    if (sql) {
        res.redirect('/i');
    } else {
        console.log(sql);
        res.redirect('/i');
    }
}

const updateinstitution = async (req, res) => {

    if (req.body.logo != "" || req.body.logo == undefined || !req.body.logo) {
        const sql = await executeQuery('UPDATE institutions set tag=$1, name=$2, logo=$3, link=$4 where id = $5 ', [req.body.tag, req.body.name, req.body.logo, req.body.link, req.body.id]);
        if (sql) {
            res.redirect('/i');
        } else {
            console.log(sql);
            res.redirect('/i');
        }
    } else {
        const sql = await executeQuery('UPDATE institutions set tag=$1, name=$2, link=$3 where id = $5 ', [req.body.tag, req.body.name, req.body.link, req.body.id]);
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
    const sql = await executeQuery('SELECT *  FROM  social_medias where id=$1', [id_sosmed]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletesosmed = async (req, res) => {
    const id_sosmed = req.params.id;
    const sql = await executeQuery('DELETE FROM  social_medias where id = $1 ', [id_sosmed]);
    if (sql) {
        res.redirect('/sm');
    } else {
        console.log(sql);
        res.redirect('/sm');
    }
}

const updatesosmed = async (req, res) => {
    const id_sosmed = req.body.id;
    const sql = await executeQuery('UPDATE social_medias set name=$1 , logo=$2, link=$3 where id = $4 ', [req.body.name, req.body.logo, req.body.link, id_sosmed]);
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
    const sql = await executeQuery('SELECT *  FROM  scopes where id=$1', [id_scopes]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletescopes = async (req, res) => {
    const id_scopes = req.params.id;
    const sql = await executeQuery('DELETE FROM  scopes where id = $1 ', [id_scopes]);
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
        const sql = await executeQuery('UPDATE scopes set title=$1, icon=$2, title_en=$3, description=$4, description_en=$5, image=$6 where  id = $7 ', [req.body.title, req.body.images, req.body.title_en, req.body.description, req.body.description_en, req.body.images, id_scopes]);
        if (sql) {
            res.redirect('/scp');
        } else {
            console.log(sql);
            res.redirect('/scp');
        }
    } else {
        const sql = await executeQuery('UPDATE scopes set title=$1, title_en=$2, description=$3, description_en=$4 where  id = $5 ', [req.body.title, req.body.title_en, req.body.description, req.body.description_en, id_scopes]);
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
    const sql = await executeQuery('UPDATE map set embed=$1 where id=$2', [req.body.embed, req.body.id]);
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
    const sql = await executeQuery('UPDATE contacts set address_building=$1, address=$2, phone_number=$3, fax_number=$4, email=$5 where id=$6', [req.body.address_building, req.body.address, req.body.phone_number, req.body.fax_number, req.body.email, req.body.id]);
    if (sql) {
        res.redirect('/c');
    } else {
        console.log(sql);
        res.redirect('/c');
    }
}

const questbook = async (req, res) => {
    const sql = await executeQuery('INSERT into questbook (name,email,phone_number,subjek,pesan) values($1,$2,$3,$4,$5)', [req.body.name, req.body.email, req.body.phone_number, req.body.subjek, req.body.pesan]);
    if (sql) {
        res.status(200).json({ "success": true })
    } else {
        res.status(200).json({ "success": false })
    }
}

//::::::::::::::::::::::::::::::End Of Contacts :::::::::::::::::::::::::::::::::::::::::::::::::::::
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
    const sql = await executeQuery('SELECT * FROM  agendas where id = $1 ', [id_agenda]);
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
    const sql = await executeQuery("insert into agendas(title,title_en,url, agenda_datetime ,place,organizer, link, project , description, agenda_endtime, manager, contributor, indicator, impact, opening, participants, area, loc,priority_participants,kbli, age, gender, province, created_at, updated_at) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25)",
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
    const sql = await executeQuery('DELETE FROM agendas where id = $1 ', [id_agenda]);
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

    const sql = await executeQuery("update agendas set title=$1, title_en=$2, url=$3, agenda_datetime=$4, place=$5, organizer=$6, link=$7, project=$8 , description=$9, agenda_endtime=$10, manager=$11, contributor=$12, indicator=$13, impact=$14, opening=$15, participants=$16, area=$17, loc=$18,priority_participants=$19,kbli=$20, age=$21, gender=$22, province=$23, created_at=$24, updated_at=$25 where id = $26",
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
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == '6') {
        const sql = await executeQuery("SELECT * FROM  reports where web_identity = 'kdeks'");
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
    } else {
        const sql = await executeQuery("SELECT * FROM  reports where web_identity = 'kneks'");
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
}

const filesdetails = async (req, res) => {
    const id_files = req.params.id;
    const sql = await executeQuery('SELECT * FROM  reports where id = $1 ', [id_files]);
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
    const fileuploads = site_url + "/uploads/filesupload/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into reports(title,title_en,content,content_en,file,is_publish,date,created_at,updated_at,report_category_id) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, fileuploads, req.body.is_publish, file_date, timeupdate, timeupdate, req.body.taggings, req.body.directorat, req.body.file_category_id]);
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
        const sql = await executeQuery("update reports set title=$1,title_en=$2,content=$3,content_en=$4,is_publish=$5,date=$6,created_at=$7,updated_at=$8,report_category_id=$9,tagging=$10,directorat=$11 where id = $12",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.is_publish, file_date, timeupdate, timeupdate, req.body.file_category_id, req.body.taggings, req.body.directorat, req.body.id]);
        if (sql) {
            res.redirect('/f');
        } else {
            console.log(sql);
            res.redirect('/f');
        }
    } else {
        const fileuploads = site_url + "/uploads/filesupload/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("update reports set title=$1,title_en=$2,content=$3,content_en=$4,file=$5,is_publish=$6,date=$7,created_at=$8,updated_at=$9,report_category_id=$10 where id = $11",
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
            const sql = await executeQuery('DELETE FROM reports where id = $1 ', [id_files]);
            if (sql) {
                res.redirect('/f');
            } else {
                console.log(sql);
                res.redirect('/f');
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM reports where id = $1 ', [id_files]);
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
    const sql = await executeQuery('SELECT * FROM  report_categories where id = $1 ', [id_files_category]);
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
    const sql = await executeQuery("insert into report_categories(title,title_en,report_categories.orders,created_at,updated_at) values($1,$2,$3,$4,$5)",
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
    const sql = await executeQuery('DELETE FROM report_categories where id = $1 ', [id_files_category]);
    if (sql) {
        res.redirect('/fc');
    } else {
        console.log(sql);
        res.redirect('/fc');
    }
}

const updatefilescategory = async (req, res) => {
    const id_files_category = req.body.id;
    const sql = await executeQuery('UPDATE report_categories set title=$1, title_en=$2, orders=$3 where id = $4 ', [req.body.title, req.body.title_en, req.body.orders, id_files_category]);
    if (sql) {
        res.redirect('/fc');
    } else {
        console.log(sql);
        res.redirect('/fc');
    }
}

//::::::::::::::::::::::::::::::End Of Files :::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::Start Of News:::::::::::::::::::::::::::::::::::::::::::::::::::::
const posts = async (req, res) => {
    const role_id_users = req.cookies.roles_id;
    if (role_id_users == '6') {
        const result = await executeQuery("SELECT * FROM news where web_identity = 'kdeks' ORDER BY id ASC ");
        let promises = result.map(async (item) => {
            return new Promise(async (resolve, reject) => {
                let r = await executeQuery("SELECT * FROM news_categories WHERE id = $1", [item.category_id]);
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

    } else {

        const result = await executeQuery("SELECT * FROM news  where web_identity = 'kneks'  ORDER BY id ASC");
        let promises = result.map(async (item) => {
            return new Promise(async (resolve, reject) => {
                let r = await executeQuery("SELECT * FROM news_categories WHERE id = $1", [item.category_id]);
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
}

const seacrh_posts = async (req, res) => {
    const result = await executeQuery("SELECT * FROM news where title LIKE '%" + req.query.cari + "%' or title_en LIKE '%" + req.query.cari + "%' ORDER BY id ASC limit 5 ");
    const photos = await executeQuery("SELECT * FROM news_photos where title LIKE '%" + req.query.cari + "%' or title_en LIKE '%" + req.query.cari + "%' ORDER BY id ASC limit 5");
    const videos = await executeQuery("SELECT * FROM news_videos where title LIKE '%" + req.query.cari + "%' or title_en LIKE '%" + req.query.cari + "%' ORDER BY id ASC limit 5 ");
    let promises = result.map(async (item) => {
        return new Promise(async (resolve, reject) => {
            let r = await executeQuery("SELECT * FROM news_categories WHERE id = $1", [item.category_id]);
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
    const sql = await executeQuery('SELECT * FROM  news where id=$1', [id_n]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const news_kdeks = async (req, res) => {

    const result = await executeQuery("SELECT * FROM news where web_identity = 'kdeks' ORDER BY id ASC ");
    let promises = result.map(async (item) => {
        return new Promise(async (resolve, reject) => {
            let r = await executeQuery("SELECT * FROM news_categories WHERE id = $1 AND  web_identity = 'kdeks' ", [item.category_id]);
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

const news_details_kdeks = async (req, res) => {
    const id_news = req.params.id;
    const sql = await executeQuery("SELECT * FROM news where id = $1 AND web_identity = 'kdeks' ", [id_news]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const news_categories_kdeks = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM news_categories where web_identity = 'kdeks'");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const news_detailnewscategory_kdeks = async (req, res) => {
    const id_cat = req.params.id;
    const sql = await executeQuery("SELECT * FROM news_categories where id = $1 AND web_identity = 'kdeks'", [id_cat]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const news_categories_menu = async (req, res) => {
    const id_cnm = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news where category_id=$1', [id_cnm]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const pagingnews = async (req, res) => {

    var numPerPage = 10;
    var skip = (req.query.page - 1) * numPerPage;

    const rows = await executeQuery('SELECT * FROM news LIMIT $1, $2', [skip, numPerPage])
    if (rows?.length > 0) {
        res.status(200).json(rows)
    } else {
        res.status(200).json({ "success": false })
    }

    // const rows = await executeQuery('SELECT count(*) as numRows FROM news');
    // var numRows = rows[0].numRows;
    // var numPages = Math.ceil(numRows / numPerPage);

}

const insertnews = async (req, res) => {
    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const timeupdate = date + ' ' + time;
    const news_datetime = req.body.news_datetime.replace("T", " ");
    const fileupload = site_url + "/uploads/news/" + req.file.originalname.replace(" ", "");
    const id_user = req.cookies.id;
    const wei = (req.cookies.roles_id == '6') ? 'kdeks' : 'kneks';
    const sql = await executeQuery("insert into news(title,title_en,excerpt,excerpt_en,content,content_en,image,is_publish,news_datetime,category_id,web_identity,tag,directorat,users_id,id_province) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13,$14,$15)",
        [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, news_datetime, req.body.category_id, wei, req.body.taggings, req.body.directorat_id, id_user, req.body.kdeks]);
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
    // const timeupdate = date + ' ' + time;
    const news_datetime = req.body.news_datetime.replace("T", " ");
    console.log(req.body);
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("UPDATE news set  title=$1,title_en=$2,excerpt=$3,excerpt_en=$4,content=$5,content_en=$6,is_publish=$7,news_datetime=$8,category_id=$9,tag=$10,directorat=$11,id_province=$12 where id = $13",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, req.body.is_publish, news_datetime, req.body.news_category_id, req.body.taggings, req.body.directorat_id, req.body.kdeks, req.body.id]);
        if (sql) {
            res.redirect('/n');
        } else {
            console.log(sql);
            res.redirect('/n');
        }
    } else {
        const fileupload = site_url + "/uploads/news/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE news set  title=$1,title_en=$2,excerpt=$3,excerpt_en=$4,content=$5,content_en=$6,image=$7,is_publish=$8,news_datetime=$9,category_id=$10, tag=$11,directorat=$12,id_province=$13 where id = $14",
            [req.body.title, req.body.title_en, req.body.excerpt, req.body.excerpt_en, req.body.content, req.body.content_en, fileupload, req.body.is_publish, news_datetime, req.body.news_category_id, req.body.taggings, req.body.directorat_id,req.body.kdeks, req.body.id]);
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
            const sql = await executeQuery('DELETE FROM news where id = $1 ', [id_news]);
            if (sql) {
                res.redirect('/n');
            } else {
                console.log(sql);
                res.redirect('/n');
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM news where id = $1 ', [id_news]);
        if (sql) {
            res.redirect('/n');
        } else {
            console.log(sql);
            res.redirect('/n');
        }
    }
}

const news_categories_date = async (req, res) => {
    const date_search = req.params.date;
    const sql = await executeQuery('SELECT * FROM  news where news_datetime LIKE $1', ['%' + date_search + '%']);
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
    const sql = await executeQuery('SELECT * FROM news_categories where id = $1 ', [id_cat]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertnewscategory = async (req, res) => {
    const sql = await executeQuery("insert into news_categories(title,title_en,description,description_en) values($1,$2,$3,$4)",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en]);
    if (sql) {
        res.redirect('/nc');
    } else {
        console.log(sql)
        res.redirect('/nc');
    }
}

const updatenewscategory = async (req, res) => {
    const sql = await executeQuery("update news_categories set title=$1,title_en=$2,description=$3,description_en=$4 where id = $5",
        [req.body.title, req.body.title_en, req.body.description, req.body.description_en, req.body.id]);
    if (sql) {
        res.redirect('/nc');
    } else {
        console.log(sql)
        res.redirect('/nc');
    }
}

const deletenewscategory = async (req, res) => {
    const id_news_cat = req.params.id;
    const sql = await executeQuery('DELETE FROM news_categories where id = $1 ', [id_news_cat]);
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
    const photos_datetime = req.body.photo_datetime.replace("T", " ");
    const photoupload = site_url + "/uploads/photo/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery("insert into news_photos(title,title_en,content,content_en,photo,news_datetime,created_at,updated_at,deleted_at,tag,directorat) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, photoupload, photos_datetime, time_datetime, time_datetime, null, req.body.taggings, req.body.directorat])
    if (sql) {
        res.redirect('/ph');
    } else {
        console.log(sql)
        res.redirect('/ph');
    }
}

const photodetail = async (req, res) => {
    const id_ph = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news_photos where id=$1', [id_ph]);
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
            const sql = await executeQuery('DELETE FROM news_photos where id = $1 ', [id_photo]);
            if (sql) {
                res.redirect('/ph');
            } else {
                res.redirect('/ph');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM news_photos where id = $1 ', [id_photo]);
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
        const sql = await executeQuery("UPDATE news_photos set  title=$1,title_en=$2,content=$3,content_en=$4,news_datetime=$5,created_at=$6,updated_at=$7,deleted_at=$8 , tag=$9, directorat = $10 where id = $11",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, news_datetime, timeupdate, timeupdate, null, req.body.taggings, req.body.directorat, req.body.id]);
        if (sql) {
            res.redirect('/ph');
        } else {
            console.log(sql);
            res.redirect('/ph');
        }
    } else {
        const fileuploads = site_url + "/uploads/photo/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE news_photos set  title=$1,title_en=$2,content=$3,content_en=$4,photo=$5, news_datetime=$6,created_at=$7,updated_at=$8,deleted_at=$9, tag = $10 , directorat = $11 where id = $12",
            [req.body.title, req.body.title_en, req.body.content, req.body.content_en, fileuploads, news_datetime, timeupdate, timeupdate, null, req.body.taggings, req.body.directorat, req.body.id]);
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
    const sql = await executeQuery("insert into news_videos(title,title_en,content,content_en,video,duration,news_datetime,created_at,updated_at,deleted_at,tag,directorat) values($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.video, req.body.duration, videos_datetime, time_datetime, time_datetime, null, req.body.taggings, req.body.directorat]);
    if (sql) {
        res.redirect('/v');
    } else {
        console.log(sql)
        res.redirect('/v');
    }
}

const videodetail = async (req, res) => {
    const id_vid = req.params.id;
    const sql = await executeQuery('SELECT * FROM  news_videos where id=$1', [id_vid]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deletevideo = async (req, res) => {
    const id_video = req.params.id;
    const sql = await executeQuery('DELETE FROM  news_videos where id=$1', [id_video]);
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
    const sql = await executeQuery("update news_videos set title=$1,title_en=$2,content=$3,content_en=$4,video=$5,duration=$6,news_datetime=$7,created_at=$8,updated_at=$9, tag=$10,directorat=$11 where id = $12",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.video, req.body.duration, videos_datetime, time_datetime, time_datetime, req.body.taggings, req.body.directorat, req.body.id]);
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
    const sql = await executeQuery("SELECT * FROM users where approve = 'Y'");
    if (sql?.length > 0) {
        // const ip = req.headers['x-forwarded-for'] || req.connection.remoteAddress;
        // console.log(ip);
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const users_detail = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users where id = $1', [req.params.id]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const users_new = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM users WHERE created_at >= NOW() - INTERVAL '1 month'  AND approve = 'Y' ORDER BY created_at DESC");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
};

const users_whitelist = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM users WHERE approve = 'N' ORDER BY created_at DESC");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
};

const users_ipaddress = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM ip_address");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
};

const approveusers = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;

    const id_params_user = req.params.id;
    const sql = await executeQuery("UPDATE users SET approve=$1, approve_by=$2, approve_date=$3 WHERE id=$4 ", ['Y', req.cookies.name, time_datetime, id_params_user]);
    if (sql) {
        res.redirect('/whitelist');
    } else {
        res.redirect('/whitelist')
    }
}

const approveipaddress = async (req, res) => {

    const today = new Date();
    const month = (today.getMonth() + 1);
    const mmm = month.length < 2 ? "0" + month : month;
    const date = today.getFullYear() + '-' + mmm + '-' + today.getDate();
    const time = today.getHours() + ':' + today.getMinutes() + ':' + today.getSeconds();
    const time_datetime = date + ' ' + time;

    const id_params_user = req.params.id;
    const sql = await executeQuery("UPDATE ip_address SET approve=$1, approve_by=$2, approve_date=$3 WHERE id=$4 ", ['Y', req.cookies.name, time_datetime, id_params_user]);
    if (sql) {
        res.redirect('/ip_address');
    } else {
        res.redirect('/ip_address')
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
    const sql = await executeQuery("insert into users(name,email,password,role_id,created_at,updated_at,ip_address, directorat_id, id_province) values($1,$2,$3,$4,$5,$6,$7,$8,$9)",
        [req.body.name.replace(/\s/g, ''), req.body.email, pw, req.body.role_id, time_datetime, time_datetime, req.body.ip_address, req.body.directorat_id, req.body.id_province]);
    if (sql) {
        res.redirect('/u');
    } else {
        console.log(sql)
    }
}

const updatepassword = async (req, res) => {
    const id_users = req.cookies.id;
    const sql = await executeQuery('SELECT * FROM users where id = $1 ', [id_users])
    if (sql.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const changespassword = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM users where id = $1 ', [req.body.id_user]);
    if (md5(req.body.old_password) == sql[0]?.password) {
        if (req.body.new_password == req.body.verify_password) {
            await executeQuery("UPDATE users SET name=$1 , password=$2 WHERE id=$3 ", [req.body.names, md5(req.body.new_password), req.body.id_user]);
            // console.log('success');
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
    const sql = await executeQuery('DELETE FROM users where id = $1 ', [id_users]);
    if (sql) {
        res.redirect('/u');
    } else {
        console.log(sql);
        res.redirect('/u');
    }
}

const updateusers = async (req, res) => {
    const id_user = req.body.id;
    if (req.body.passwords == "" || req.body.passwords == null) {
        await executeQuery("UPDATE users SET name=$1 , email=$2 ,  role_id = $3 , ip_address = $4 , directorat_id = $5, id_province=$6 WHERE id=$7 ", [req.body.names.replace(/\s/g, ''), req.body.emails, req.body.roles_id, req.body.ip_address, req.body.directorat_id, req.body.id_province, id_user]);
        res.redirect('/u');
    } else {
        await executeQuery("UPDATE users SET name=$1 , email=$2 , password = $3 , role_id = $4, ip_address = $5, directorat_id = $6, id_province = $7 WHERE id=$8 ", [req.body.names.replace(/\s/g, ''), req.body.emails, md5(req.body.passwords), req.body.roles_id, req.body.ip_address, req.body.directorat_id, req.body.id_province, id_user]);
        res.redirect('/u');
    }
}
//::::::::::::::::::::::::::::::End Of Users:::::::::::::::::::::::::::::::::::::::::::::::::::::

//:::::::::::::::::::::::::::::: Zona Khas  :::::::::::::::::::::::::::::::::::::::::::::::::::::::



const khas_zone = async (req, res) => {
    const result = await executeQuery("SELECT * FROM province ORDER BY id DESC ");
    let promises = result.map(async (item) => {
        return new Promise(async (resolve, reject) => {
            let zone = await executeQuery("SELECT * FROM khas_zone WHERE province = $1", [item?.id]);
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

const provinces_detail = async (req, res) => {
    const id_p = req.params.id;
    const sql = await executeQuery('SELECT * FROM province where id = $1 ', [id_p]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertmaster = async (req, res) => {
    const sql = await executeQuery('INSERT INTO province(province_name)values($1)', [req.body.provinces]);
    if (sql?.length > 0) {
        res.redirect('/master');
    } else {
        res.redirect('/master');
    }
}

const updatemaster = async (req, res) => {
    const sql = await executeQuery('UPDATE province set province_name=$1 where id = $2', [req.body.province_name, req.body.id]);
    if (sql?.length > 0) {
        res.redirect('/master');
    } else {
        res.redirect('/master');
    }
}

const deletemaster = async (req, res) => {
    const idp = req.params.id;
    const sql = await executeQuery("delete from province where id = $1",
        [idp]);
    if (sql) {
        res.redirect('/master');
    } else {
        console.log(sql)
        res.redirect('/master');
    }
}

const detail_khas_zone = async (req, res) => {
    const id_khas_zone = req.params.id;
    const sql = await executeQuery('SELECT * FROM khas_zone where id = $1', [id_khas_zone]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertzonakhas = async (req, res) => {
    const sql = await executeQuery("insert into khas_zone(khas_zone,city,province,inauguration,tenant,inaugurated) values($1,$2,$3,$4,$5,$6)",
        [req.body.khas_zone, req.body.city, req.body.province, req.body.inauguration, req.body.tenant, req.body.inaugurated]);
    if (sql) {
        res.redirect('/zk');
    } else {
        console.log(sql)
        res.redirect('/zk');
    }
}

const updatezonakhas = async (req, res) => {
    const sql = await executeQuery("update khas_zone set khas_zone=$1, city=$2,province=$3,inauguration=$4,tenant=$5,inaugurated=$6 where id = $7",
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
    const sql = await executeQuery("delete from khas_zone where id = $1",
        [id_zona_khas]);
    if (sql) {
        res.redirect('/zk');
    } else {
        console.log(sql)
        res.redirect('/zk');
    }
}

const tagging = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM tagging");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const detailtagging = async (req, res) => {
    const id_tagging = req.params.id;
    const sql = await executeQuery("SELECT * FROM tagging where id = $1 ", [id_tagging]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const inserttagging = async (req, res) => {
    const sql = await executeQuery("insert into tagging(tagging) values($1)",
        [req.body.tagging]);
    if (sql) {
        res.redirect('/tg');
    } else {
        console.log(sql)
        res.redirect('/tg');
    }
}

const updatetagging = async (req, res) => {
    const sql = await executeQuery("update tagging set tagging=$1 where id = $2",
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
    const sql = await executeQuery("delete from tagging where id = $1",
        [id_tagging]);
    if (sql) {
        res.redirect('/tg');
    } else {
        console.log(sql)
        res.redirect('/tg');
    }
}


//::::::::::::::::::::::::::::::::::::::::::::::: Start Of Slideshow :::::::::::::::::::::::::::::::::::::::::::::::::::::
const slideshows = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM  slideshow');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const detailslideshow = async (req, res) => {
    const id_slideshow = req.params.id;
    const sql = await executeQuery('SELECT *  FROM  slideshow where id=$1', [id_slideshow]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const deleteslideshow = async (req, res) => {
    const id_slideshows = req.params.id;
    const sql = await executeQuery('DELETE FROM  slideshow where id = $1 ', [id_slideshows]);
    if (sql) {
        res.redirect('/b');
    } else {
        console.log(sql);
        res.redirect('/b');
    }
}

const insertslideshow = async (req, res) => {
    if (req.file) {
        const filesimage = site_url + "/uploads/slideshow/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery('INSERT INTO slideshow (title,title_en,image, date_created,status, content,content)values($1,$2,$3,$4,$5,$6,$7) ', [req.body.title, req.body.title_en, filesimage, req.body.tanggal, req.body.status, req.body.content, req.body.content_en]);
        if (sql) {
            res.redirect('/b');
        } else {
            res.redirect('/b');
        }
    } else {
        res.redirect('/b');
    }
}

const updateslideshow = async (req, res) => {
    const id_slidshowss = req.body.id;
    if (req.file) {
        const filesimage = site_url + "/uploads/slideshow/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery('UPDATE slideshow set title=$1, title_en=$2, image=$3,content = $4 ,content_en = $5 , date_created=$6, status=$7  where  id = $8 ', [req.body.title, req.body.title_en, filesimage, req.body.tanggal, req.body.status, id_slidshowss]);
        if (sql) {
            res.redirect('/b');
        } else {
            res.redirect('/b');
        }
    } else {
        const sql = await executeQuery('UPDATE slideshow set title=$1, title_en=$2, date_created=$3, status=$4  where  id = $5 ', [req.body.title, req.body.title_en, req.body.tanggal, req.body.status, id_slidshowss]);
        if (sql) {
            res.redirect('/b');
        } else {
            console.log(sql);
            res.redirect('/b');
        }
    }
}
//:::::::::::::::::::::::::::::::::::::::::::: End Of SlideShow :::::::::::::::::::::::::::::::::::::::::::::::::::::
//:::::::::::::::::::::::::::::::::::::::::::: Login Banner ::::::::::::::::::::::::::::::::::::::::::::::::
const login_banners = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM banner where flag = 'login'");
    const array = [];
    sql.forEach((element, index) => {
        const rrr = {
            "id": element?.id,
            "name": element?.name,
            "path": element?.path,
            "date_created": element?.date_created,
            "status": element?.status,
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

const detail_login_banners = async (req, res) => {
    const id_login = req.params.id;
    const sql = await executeQuery('SELECT * FROM banner where id = $1 ', [id_login]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertloginbanner = async (req, res) => {
    const filesimage = site_url + "/uploads/banner/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery('insert into banner(name,path,flag,date_created,status) values ($1,$2,$3,$4,$5)', [req.body.names, filesimage, req.body.flag, req.body.tanggal, req.body.status]);
    if (sql) {
        res.redirect('/login_banner');
    } else {
        res.redirect('/login_banner');
    }
}

const updateloginbanners = async (req, res) => {
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("UPDATE banner set  name=$1, date_created=$2, status=$3 where id = $4",
            [req.body.names, req.body.tanggal, req.body.status, req.body.id_login_banner]);
        if (sql) {
            res.redirect('/login_banner');
        } else {
            res.redirect('/login_banner');
        }
    } else {
        const fileuploads = site_url + "/uploads/banner/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE banner set  name=$1, path=$2, date_created=$3, status=$4 where id = $5",
            [req.body.names, fileuploads, req.body.tanggal, req.body.status, req.body.id_login_banner]);
        if (sql) {
            res.redirect('/login_banner');
        } else {
            res.redirect('/login_banner');
        }
    }
}

const delete_login_banner = async (req, res) => {
    const id_login = req.params.id;
    const image = req.params.foto;
    if (fs.existsSync(fileslinux + 'banner/' + image)) {
        fs.unlink(fileslinux + 'banner/' + image, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM banner where id = $1 ', [id_login]);
            if (sql) {
                res.redirect('/login_banner');
            } else {
                res.redirect('/login_banner');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM banner where id = $1 ', [id_login]);
        if (sql?.length > 0) {
            res.redirect('/login_banner');
        } else {
            res.redirect('/login_banner');
        }
    }
}

//::::::::::::::::::::::::::::::::::::::::::::::::::: End Login Banner :::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::: Start Struktur Logo Banner :::::::::::::::::::::::::::::::::::::::::::
const slogo = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM banner where flag = 's_logo'");
    const array = [];
    sql.forEach((element, index) => {
        const rrr = {
            "id": element?.id,
            "name": element?.name,
            "path": element?.path,
            "date_created": element?.date_created,
            "status": element?.status,
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

const detail_slogo = async (req, res) => {
    const id_slogo = req.params.id;
    const sql = await executeQuery('SELECT * FROM banner where id = $1 ', [id_slogo]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const inserts_slogo = async (req, res) => {
    const filesimage = site_url + "/uploads/banner/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery('insert into banner(name,path,flag,date_created,status) values ($1,$2,$3,$4,$5)', [req.body.names, filesimage, req.body.flag, req.body.tanggal, req.body.status]);
    if (sql?.length > 0) {
        res.redirect('/s_logo');
    } else {
        res.redirect('/s_logo');
    }
}

const updates_slogo = async (req, res) => {
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("UPDATE banner set  name=$1, date_created=$2, status=$3 where id = $4",
            [req.body.names, req.body.tanggal, req.body.status, req.body.id_s_logo_banner]);
        if (sql) {
            res.redirect('/s_logo');
        } else {
            res.redirect('/s_logo');
        }
    } else {
        const fileuploads = site_url + "/uploads/banner/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE banner set  name=$1, path=$2, date_created=$3, status=$4 where id = $5",
            [req.body.names, fileuploads, req.body.tanggal, req.body.status, req.body.id_s_logo_banner]);
        if (sql) {
            res.redirect('/s_logo');
        } else {
            res.redirect('/s_logo');
        }
    }
}

const delete_slogos = async (req, res) => {
    const id_logo = req.params.id;
    const image = req.params.foto;
    if (fs.existsSync(fileslinux + 'banner/' + image)) {
        fs.unlink(fileslinux + 'banner/' + image, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM banner where id = $1 ', [id_logo]);
            if (sql) {
                res.redirect('/s_logo');
            } else {
                res.redirect('/s_logo');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM banner where id = $1 ', [id_logo]);
        if (sql?.length > 0) {
            res.redirect('/s_logo');
        } else {
            res.redirect('/s_logo');
        }
    }
}
//::::::::::::::::::::::::::::::::::::::::::::::::::: End Of Struktur Logo :::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::: Start Of Welcome Banner ::::::::::::::::::::::::::::::::::::::
const welcome_pages = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM banner where flag = 'welcome'");
    const array = [];
    sql.forEach((element, index) => {
        const rrr = {
            "id": element?.id,
            "name": element?.name,
            "path": element?.path,
            "date_created": element?.date_created,
            "status": element?.status,
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

const insert_welcome_pages = async (req, res) => {
    const filesimage = site_url + "/uploads/banner/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery('insert into banner(name,path,flag,date_created,status) values ($1,$2,$3,$4,$5)', [req.body.names, filesimage, req.body.flag, req.body.tanggal, req.body.status]);
    if (sql) {
        res.redirect('/welcomebanner');
    } else {
        res.redirect('/welcomebanner');
    }
}
const detail_welcome_pages = async (req, res) => {
    const id_welc = req.params.id;
    const sql = await executeQuery('SELECT * FROM banner where id = $1 ', [id_welc]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const update_welcome_pages = async (req, res) => {
    if (!req.file || req.file == undefined || req.file == "") {
        const sql = await executeQuery("UPDATE banner set  name=$1, date_created=$2, status=$3 where id = $4",
            [req.body.names, req.body.tanggal, req.body.status, req.body.id_welcome]);
        if (sql) {
            res.redirect('/welcomebanner');
        } else {
            res.redirect('/welcomebanner');
        }
    } else {
        const fileuploads = site_url + "/uploads/banner/" + req.file.originalname.replace(" ", "");
        const sql = await executeQuery("UPDATE banner set  name=$1, path=$2, date_created=$3, status=$4 where id = $5",
            [req.body.names, fileuploads, req.body.tanggal, req.body.status, req.body.id_welcome]);
        if (sql) {
            res.redirect('/welcomebanner');
        } else {
            res.redirect('/welcomebanner');
        }
    }
}

const delete_welcome_page = async (req, res) => {
    const id_welc = req.params.id;
    const image = req.params.foto;
    if (fs.existsSync(fileslinux + 'banner/' + image)) {
        fs.unlink(fileslinux + 'banner/' + image, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM banner where id = $1 ', [id_welc]);
            if (sql) {
                res.redirect('/welcomebanner');
            } else {
                res.redirect('/welcomebanner');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM banner where id = $1 ', [id_welc]);
        if (sql?.length > 0) {
            res.redirect('/welcomebanner');
        } else {
            res.redirect('/welcomebanner');
        }
    }
}
//:::::::::::::::::::::::::::::: End Of Welcome Banner  :::::::::::::::::::::::::::::::::::::::::::::::::::::::
const sub_statistic = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM sub_statistic');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
const detailsub_substatistic = async (req, res) => {
    const id_ss = req.params.id;
    const sql = await executeQuery('SELECT * FROM sub_statistic where id_statistic = $1', [id_ss]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json([])
    }
}
const insert_substatistic = async (req, res) => {
    const ddd = req.body.menu_id.split('-');
    const sql = await executeQuery("INSERT INTO sub_statistic (id_statistic,short_name,long_name,short_name_en,long_name_en,statistic_name)values($1,$2,$3,$4,$5,$6)",
        [ddd[0], req.body.short_name, req.body.long_name, req.body.short_name_en, req.body.long_name_en, ddd[1]]);
    if (sql) {
        res.redirect('/submenu_data');
    } else {
        res.redirect('/submenu_data');
    }
}

const delete_substatistic = async (req, res) => {
    const id_meta = req.params.id;
    const sql = await executeQuery('DELETE FROM sub_statistic where id = $1', [id_meta]);
    if (sql?.length > 0) {
        res.redirect('/submenu_data');
    } else {
        res.redirect('/submenu_data');
    }
}

const metabase = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM api_meta');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const detail_metabase = async (req, res) => {
    const id_nar = req.params.id;
    const sql = await executeQuery('SELECT * FROM api_meta where id = $1', [id_nar]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const metabase_delete = async (req, res) => {
    const id_meta = req.params.id;
    const sql = await executeQuery('DELETE FROM api_meta where id = $1', [id_meta]);
    if (sql?.length > 0) {
        res.redirect('/dashboard');
    } else {
        res.redirect('/dashboard');
    }
}

const insertapimeta = async (req, res) => {
    const arraydir = req.body.directorat.toString().replace(/[{}]/g, '').split(',');
    const directr = arraydir.map(item => item.replace(/"/g, ''));
    const arraykdeks = req.body.kdeks.toString().replace(/[{}]/g, '').split(',');
    const kdeksdir = arraykdeks.map(item => item.replace(/"/g, ''));
    const arraykdataset = req.body.dataset.toString().replace(/[{}]/g, '').split(',');
    const datasetdir = arraykdataset.map(item => item.replace(/"/g, ''));
    const ddd = req.body.data_type.split('-');
    const sql = await executeQuery('INSERT INTO api_meta (api,statistic_id,statistic_name,sub_statistic,short_name,long_name,short_name_en,long_name_en,tagging,directorat,kdeks,publish,dataset) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13)', [req.body.api, ddd[0], ddd[1], req.body.sub_statistic, req.body.shorts_name, req.body.long_name, req.body.shorts_name_en, req.body.long_name_en, req.body.taggings, directr, kdeksdir, req.body.publish, datasetdir]);
    if (sql?.length > 0) {
        res.redirect('/dashboard');
    } else {
        res.redirect('/dashboard');
    }
}


const emptyapimeta = async (req, res) => {
    const sql = await executeQuery('UPDATE api_meta set naration = $1, month = $2 where id = $3', ['', '', req.body.id]);
    if (sql) {
        res.status(200).json({ "message": true });
    } else {
        res.status(200).json({ "message": false });
    }
}

const updateapimeta = async (req, res) => {
    const sql = await executeQuery('UPDATE api_meta set naration = $1, month = $2 where id = $3', [req.body.naration, req.body.month, req.body.id]);
    if (sql) {
        res.status(200).json({ "message": true });
    } else {
        res.status(200).json({ "message": false });
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
    const sql = await executeQuery("insert into statistic(title,title_en,long_title,long_title_en,amount,date_created) values($1,$2,$3,$4,$5,$6)",
        [req.body.title, req.body.title_en, req.body.long_title, req.body.long_title_en, 0, '2025-01-01 : 00:00:00']);
    if (sql) {
        res.redirect('/menu_data');
    } else {
        console.log(sql)
        res.redirect('/menu_data');
    }
}

const deletestatistic = async (req, res) => {
    const id_stat = req.params.id;
    const sql = await executeQuery('DELETE FROM statistic where id = $1 ', [id_stat]);
    if (sql) {
        res.redirect('/menu_data');
    } else {
        res.redirect('/menu_data');
    }
}

const statistic_slides = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM statistic_slide');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertstatisticslide = async (req, res) => {
    const filesimage = site_url + "/uploads/data/" + req.file.originalname.replace(" ", "");
    const sql = await executeQuery('insert into statistic_slide(title,title_en,amount,date_created,image,link,publish) values ($1,$2,$3,$4,$5,$6,$7)', [req.body.title, req.body.title_en, req.body.amount, req.body.date_created, filesimage, req.body.link, req.body.publish]);
    if (sql) {
        res.redirect('/sliderdata');
    } else {
        res.redirect('/sliderdata');
    }
}

const delete_statistic_slides = async (req, res) => {
    const id_statistic_slide = req.params.id;
    const image = req.params.photo;
    if (fs.existsSync(fileslinux + 'data/' + image)) {
        fs.unlink(fileslinux + 'data/' + image, async function (err) {
            if (err) return console.log(err);
            const sql = await executeQuery('DELETE FROM statistic_slide where id = $1 ', [id_statistic_slide]);
            if (sql) {
                res.redirect('/sliderdata');
            } else {
                res.redirect('/sliderdata');
                console.log(sql);
            }
        });
        console.log("ada")
    } else {
        const sql = await executeQuery('DELETE FROM statistic_slide where id = $1 ', [id_statistic_slide]);
        if (sql?.length > 0) {
            res.redirect('/sliderdata');
        } else {
            res.redirect('/sliderdata');
        }
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

const api_kneks = async (req, res) => {
    await axios.get('https://dashboard-dev.kneks.go.id/api/aus/indikator-aus', {
        headers: {
            'x-api-key': 'RnwSHSOWkAAXWN3QRO6XZppBiJSLqroCHQuYzj8LoJE992oWfbeCw3Ligxq6HJIJh83T1yo0NHRiYc4L5N1lq6HLq7bqKeek5fydZCfJUu9DEJJPV2ldhdTQQmFALO9t'
        }
    })
        .then((res) => res.data)
        .then((datas) => { res.status(200).json(datas) })
        .catch((err) => console.error(err));
}

const sourcesdatadetail = async (req, res) => {
    const id_source = req.params.id;
    const sql = await executeQuery('SELECT * FROM sourcedata where id = $1 ', [id_source]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertsourcesdata = async (req, res) => {
    const sql = await executeQuery("insert into sourcedata(dataset,source,date_created,dataset_en) values($1,$2,$3,$4) RETURNING id",
        [req.body.dataset, req.body.source, '2025-01-01 00:00:00', req.body.dataset_en]);
    if (sql) {
        await executeQuery("insert into sourcedata_detail(id_sourcedata,description,produsen_data,tanggal_update,api_data) values($1,$2,$3,$4,$5)",
            [sql[0].id, req.body.descriptions, req.body.produsen_data, req.body.tanggal_update, req.body.api_database]);

        res.redirect('/dataset');
    } else {
        console.log(sql)
        res.redirect('/dataset');
    }
}

const deletesourcesdata = async (req, res) => {
    const id_stat = req.params.id;
    const sql = await executeQuery('DELETE FROM sourcedata where id = $1 ', [id_stat]);
    if (sql) {
        await executeQuery('DELETE FROM sourcedata_detail where id_sourcedata = $1 ', [id_stat]);
        res.redirect('/dataset');
    } else {
        res.redirect('/dataset');
    }
}

const sourcesdatadetaillist = async (req, res) => {
    const id_source = req.params.id;
    const sql = await executeQuery("SELECT * FROM sourcedata_detail where id_sourcedata = $1 ", [id_source]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//:::::::::::::::::::::::::::::::::::::Start Of OPINI :::::::::::::::::::::::::::::::::::::::::::::::::


const opini = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM opini")
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const opini_detail = async (req, res) => {
    const id_opini = req.params.id;
    const sql = await executeQuery("SELECT * FROM opini where id = $1 ", [id_opini]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertopini = async (req, res) => {
    const sql = await executeQuery("insert into opini(title,title_en,content,content_en,web_identity,tagging,directorat) values($1,$2,$3,$4,$5,$6,$7)",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.web_identity, req.body.taggings, req.body.directorat]);
    if (sql) {
        res.redirect('/opini');
    } else {
        console.log(sql)
        res.redirect('/opini');
    }
}

const deleteopini = async (req, res) => {
    const id_opini = req.params.id;
    const sql = await executeQuery('DELETE FROM  opini where id = $1', [id_opini]);
    if (sql) {
        res.redirect('/opini');
    } else {
        console.log(sql)
        res.redirect('/opini');
    }
}


const updateopini = async (req, res) => {
    const sql = await executeQuery("UPDATE opini SET title=$1,title_en=$2,content=$3,content_en=$4,tagging=$5,directorat=$6 where id = $7",
        [req.body.title, req.body.title_en, req.body.content, req.body.content_en, req.body.taggings, req.body.directorat, req.body.id]);
    if (sql) {
        res.redirect('/opini');
    } else {
        console.log(sql)
        res.redirect('/opini');
    }
}
//::::::::::::::::::::::::::::::::::: END OF CUSTOM DATA NARATION PAGE
// :::::::::::::::::::::::::: Setting Page :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

const web_profile = async (req, res) => {
    const sql = await executeQuery("SELECT * FROM web_profile where id = 1");
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const web_profile_detail = async (req, res) => {
    const id_web = req.params.id;
    const sql = await executeQuery("SELECT * FROM web_profile where id = $1 ", [id_web]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}


const updatewebtitle = async (req, res) => {
    const sql = await executeQuery("UPDATE web_profile SET web_title=$1 where id = $2",
        [req.body.web_title, req.body.id]);
    if (sql) {
        res.redirect('/titleweb');
    } else {
        console.log(sql)
        res.redirect('/titleweb');
    }
}

const updateweblogo = async (req, res) => {
    const sql = await executeQuery("UPDATE web_profile SET web_logo=$1 where id = $2",
        [req.body.web_logo, req.body.id]);
    if (sql) {
        res.redirect('/logo');
    } else {
        console.log(sql)
        res.redirect('/logo');
    }
}

const updatewebheader = async (req, res) => {
    const sql = await executeQuery("UPDATE web_profile SET web_header=$1 where id = $2",
        [req.body.web_header, req.body.id]);
    if (sql) {
        res.redirect('/header');
    } else {
        console.log(sql)
        res.redirect('/header');
    }
}

const updatewebcolor = async (req, res) => {
    const sql = await executeQuery("UPDATE web_profile SET web_color=$1 where id = $2",
        [req.body.web_color, req.body.id]);
    if (sql) {
        res.redirect('/color');
    } else {
        console.log(sql)
        res.redirect('/color');
    }
}

const menu = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM menu');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertmenu = async (req, res) => {
    const sql = await executeQuery("insert into menu(menu_name,menu_link,orders) values($1,$2,$3)",
        [req.body.menu_name, req.body.menu_link, req.body.orders]);
    if (sql) {
        res.redirect('/menu');
    } else {
        console.log(sql)
        res.redirect('/menu');
    }
}

const updatemenu = async (req, res) => {
    const sql = await executeQuery("update menu set menu_name=$1, menu_link=$2, orders=$3 where id = $4",
        [req.body.menu_name, req.body.menu_link, req.body.orders, req.body.id]);
    if (sql) {
        res.redirect('/menu');
    } else {
        console.log(sql)
        res.redirect('/menu');
    }
}

const menu_detail = async (req, res) => {
    const id_menu = req.params.id;
    const sql = await executeQuery('SELECT * FROM menu where id = $1 ', [id_menu]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const submenu = async (req, res) => {
    const sql = await executeQuery('SELECT * FROM menu_sub');
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}

const insertsubmenu = async (req, res) => {
    const sql = await executeQuery("insert into menu_sub(menu_id,submenu_name,submenu_link,orders) values($1,$2,$3,$4)",
        [req.body.menu_id, req.body.submenu_name, req.body.submenu_link, req.body.orders]);
    if (sql) {
        res.redirect('/submenu');
    } else {
        console.log(sql)
        res.redirect('/submenu');
    }
}

const updatesubmenu = async (req, res) => {
    const sql = await executeQuery("update menu_sub set menu_id = $1, submenu_name=$2, submenu_link=$3, orders=$4 where id = $5",
        [req.body.menu_id, req.body.submenu_name, req.body.submenu_link, req.body.orders, req.body.id]);
    if (sql) {
        res.redirect('/submenu');
    } else {
        console.log(sql)
        res.redirect('/submenu');
    }
}

const submenu_detail = async (req, res) => {
    const id_menu = req.params.id;
    const sql = await executeQuery('SELECT * FROM menu_sub where id = $1 ', [id_menu]);
    if (sql?.length > 0) {
        res.status(200).json(sql)
    } else {
        res.status(200).json({ "success": false })
    }
}
//::::::::::::::::::::::::::::::Start Of Modules:::::::::::::::::::::::::::::::::::::::::::::::::::::
module.exports = {
    do_login,
    do_logout,
    user_register,
    slideshows,
    insertslideshow,
    updateslideshow,
    detailslideshow,
    deleteslideshow,
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
    news_kdeks,
    news_categories_kdeks,
    news_detailnewscategory_kdeks,
    news_details_kdeks,
    abouts,
    abouts_kdeks,
    history_kdeks,
    history_province,
    about_province,
    deleteabout,
    detailabout,
    updateabouts,
    insertkdeks,
    updatekdeks,
    structure,
    kdeks,
    deletestructure,
    detailstructure,
    inserstructure,
    updatestructure,
    hotissue,
    hotissue_detail,
    hotissuecategory,
    updatehotissuecategory,
    update_directorats,
    delete_banners_direactorats,
    delete_images_direactorats,
    detailhotissuecategory,
    hotissuesubcategory,
    deletehotissuecategory,
    delete_direactorats,
    directorats_uploads,
    directorat_devisi_add,
    directorat_devisi,
    directorats_devisi_delete,
    directorats_fe,
    directorat_details,
    deletehotissuesubcategory,
    detailhotissuesubcategory,
    updatehotissue,
    deletehotissue,
    inserthotissue,
    inserthotissubcategory,
    updatehotissuesubcategory,
    directorat,
    directorat_path,
    insertdirectorats,
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
    users,
    users_detail,
    users_new,
    users_whitelist,
    users_ipaddress,
    approveusers,
    approveipaddress,
    userroles,
    insertusers,
    updateusers,
    updatepassword,
    changespassword,
    deleteuser,
    khas_zone,
    zona_peta,
    deletezonakhas,
    updatezonakhas,
    insertzonakhas,
    provinces,
    provinces_detail,
    insertmaster,
    updatemaster,
    deletemaster,
    detail_khas_zone,
    tagging,
    inserttagging,
    detailtagging,
    deletetagging,
    updatetagging,
    login_banners,
    detail_login_banners,
    insertloginbanner,
    updateloginbanners,
    delete_login_banner,
    welcome_pages,
    insert_welcome_pages,
    detail_welcome_pages,
    update_welcome_pages,
    delete_welcome_page,
    slogo,
    inserts_slogo,
    detail_slogo,
    updates_slogo,
    delete_slogos,
    sub_statistic,
    detailsub_substatistic,
    insert_substatistic,
    delete_substatistic,
    statistic_slides,
    insertstatisticslide,
    delete_statistic_slides,
    metabase,
    detail_metabase,
    metabase_delete,
    insertapimeta,
    emptyapimeta,
    updateapimeta,
    statistics,
    deletestatistic,
    insertstatistic,
    sourcesdata,
    sourcesdatadetail,
    deletesourcesdata,
    sourcesdatadetaillist,
    insertsourcesdata,
    api_kneks,
    opini,
    opini_detail,
    insertopini,
    updateopini,
    deleteopini,
    web_profile,
    web_profile_detail,
    updatewebtitle,
    updateweblogo,
    updatewebheader,
    updatewebcolor,
    menu,
    insertmenu,
    updatemenu,
    submenu,
    insertsubmenu,
    updatesubmenu,
    menu_detail,
    submenu_detail
}
//::::::::::::::::::::::::::::::End Of Module:::::::::::::::::::::::::::::::::::::::::::::::::::::