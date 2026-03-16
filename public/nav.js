const style = document.createElement('style');
style.innerHTML = `
    
    html.minimenu .nxl-navigation {
        left: -280px !important;
        visibility: hidden !important;
    }

    html.minimenu .nxl-container {
        margin-left: 0 !important;
    }

    html.minimenu .nxl-header {
        left: 0 !important;
    }

    html.minimenu .page-header {
        left: 0 !important;
    }
`;
document.head.appendChild(style);

let cookie = {};
var a = document.cookie.split(";");
for (var i = 0; i < a.length; i++) {
    var b = a[i].split("=");
    var [key, value] = b;
    cookie[key.trim()] = value;
}

document.write(`<nav class="nxl-navigation">
                    <div class="navbar-wrapper">
                    <div class="m-header">
                        <a href="/" class="b-brand mx-auto">
                            <!-- ========   change your logo hear   ============ -->
                            <img src="/assets/images/logo_kneks.png" alt="" class="logo logo-lg" width="100" />
                            <img src="/assets/images/logo-abbr.png" alt="" class="logo logo-sm" />
                        </a>
                    </div><div class="navbar-content">
                <ul class="nxl-navbar">
                    <li class="nxl-item nxl-caption">
                        <label>Dashboard Apps</label>
                    </li>`);
document.write(``);
//menu
//banner
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-image"></i></span>
                            <span class="nxl-mtext">01. Banner</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                        <li class="nxl-item"><a class="nxl-link" href="/welcomebanner">Welcome</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/login_banner">Login</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/b">SlideShow</a></li>
                         </ul>
                    </li>`);
}
//Direktorat
// if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4) {
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                        <span class="nxl-micon"><i class="feather-briefcase"></i></span>
<span class="nxl-mtext">02. Direktorat Master</span>
<span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/directorats">Direktorat</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/devision">Divisi</a></li>
                        </ul>
                    </li>`);
}



//Struktur
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-users"></i></span>
                            <span class="nxl-mtext">03. Struktur</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/s_logo">Struktur</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/s">Organisasi</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/anggota">Direktorat</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/sub_anggota">Head</a></li>
                         </ul>
                    </li>`);
}

if (cookie["roles_id"] == 3 || cookie["roles_id"] == 4) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="/s" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            Organisasi
                        </a>
                    </li>`);
}

//Berita
if (cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="/n" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-globe"></i></span>
                            <span class="nxl-mtext">04. Berita</span>
                        </a>
                    </li>`);
}
//Berita kategori
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-globe"></i></span>
                            <span class="nxl-mtext">04. Berita</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/n">Berita</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/nc">Kategori</a></li>
                           </ul>
                    </li>`);
}


//Opini
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 7 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
    <a href="/opini" class="nxl-link">
        <span class="nxl-micon"><i class="feather-edit-3"></i></span>
        <span class="nxl-mtext">05. Opini</span>
    </a>
</li>`);
}

//Isu Terkini
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-trending-up"></i></span>
                            <span class="nxl-mtext">06. Isu Terkini</span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/hi">Isu Terkini</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/hic">Kategori</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/hisc">Sub Kategori</a></li>
                        </ul>
                    </li>
                       `);
}

if (cookie["roles_id"] == 4) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="/hi" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            Isu Terkini
                        </a>
                    </li>`);
}


//foto
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="/ph" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-camera"></i></span>
                            <span class="nxl-mtext">07. Foto</span>
                        </a>
                    </li>`);
}

//Video
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="/v" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-video"></i></span>
                            <span class="nxl-mtext">08. Video</span>
                        </a>
                    </li>`);
}

// Agenda
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 7) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="/a" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-calendar"></i></span>
                            <span class="nxl-mtext">09. Agenda</span>
                        </a>
                    </li>`);
}

//E-Pustaka
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-book-open"></i></span>
                            <span class="nxl-mtext">10. e-Pustaka</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/f">e-Pustaka</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/fc">Kategori</a></li>
                        </ul>
                    </li>`);
}

if (cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="/f" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                           e-Pustaka
                        </a>
                    </li>`);

}

//Data
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-database"></i></span>
                            <span class="nxl-mtext">11. Data</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            `);
}
//data
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item"><a class="nxl-link" href="/dashboard">Dashboard</a></li>`);
    document.write(`<li class="nxl-item"><a class="nxl-link" href="/menu_data">Menu</a></li>`);
    document.write(`<li class="nxl-item"><a class="nxl-link" href="/submenu_data">Submenu</a></li>
        <li class="nxl-item"><a class="nxl-link" href="/dataset">Dataset</a></li>`);
    document.write(`<li class="nxl-item"><a class="nxl-link" href="/sliderdata">Slide</a></li>`);
}

//e-pustaka kategori
// if (cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
//     document.write(`<li class="nxl-item"><a class="nxl-link" href="/dashboard">Dashboard</a></li>`);
// }

if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`</ul>
                    </li>`);
}

//kdeks
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-map"></i></span>
                            <span class="nxl-mtext">12. KDEKS</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/kdeks">Profil</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/master">KDEKS</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/province">Master Provinsi</a></li>  
                            <li class="nxl-item"><a class="nxl-link" href="/s_kdeks">Organisasi</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/anggota_kdeks">Direktorat</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/sub_anggota_kdeks">Head</a></li>   
                            </ul>
                    </li>`);
}

if (cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="/master" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            KDEKS
                        </a>
                    </li>`);
}

//Zona Khas
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="/zk" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-map-pin"></i></span>
                            <span class="nxl-mtext">13. Zona Khas</span>
                        </a>
                    </li>`);
}


//Tagging
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="/tg" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-tag"></i></span>
                            <span class="nxl-mtext">14. Tagging</span>
                        </a>
                    </li>`);
}


//User
//if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2|| cookie["roles_id"] == 3|| cookie["roles_id"] == 4|| cookie["roles_id"] == 6|| cookie["roles_id"] == 7) {
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-user-check"></i></span>
                            <span class="nxl-mtext">15. User</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            
                            `);
    // <li class="nxl-item"><a class="nxl-link" href="/cp">Change Password</a></li>
}
if (cookie["roles_id"] == 2) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/u">User</a></li>
                           `);
}
if (cookie["roles_id"] == 1) {
    document.write(`        <li class="nxl-item"><a class="nxl-link" href="/u">User</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/whitelist">User Baru</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/ip_address_approve">Approve Whitelist IP</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/ip_address">Pending Whitelist IP</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/ip_address_rejects">Tolak Whitelist IP</a></li>                            
                           `);
    //    <li class="nxl-item"><a class="nxl-link" href="/new_user">User Baru</a></li>
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6 || cookie["roles_id"] == 7) {
    document.write(`
                            </ul>
                    </li>
                           `);
}

//Profil
if (cookie["roles_id"] == 1) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-info"></i></span>
                            <span class="nxl-mtext">16. Profil</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/tk">Profil KNEKS</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/es">Profil Ekonomi Syariah</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/i">Anggota KNEKS</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/sm">Media Sosial</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/psm">Post Media Sosial</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/c_edit/1">Kontak</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/m_edit/1">Peta</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/scp">Skup</a></li>
                         </ul>
                    </li>
                            `);
}


//Pengaturan
if (cookie["roles_id"] == 1) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-settings"></i></span>
                            <span class="nxl-mtext">17. Pengaturan</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="web_title_edit/1">Judul Situs</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/web_logo_edit/1">Logo</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/web_header_edit/1">Header</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/web_color_edit/1">Warna</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/menu">Menu</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/submenu">Sub Menu</a></li>
                         </ul>
                    </li>
                            `);
}



document.write(`</ul>
            </div>
            </div>
            </nav>`);