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
                        <a href="/" class="b-brand">
                            <!-- ========   change your logo hear   ============ -->
                            <img src="/assets/images/logo_kneks.png" alt="" class="logo logo-lg" width="100" />
                            <img src="/assets/images/logo-abbr.png" alt="" class="logo logo-sm" />
                        </a>
                    </div><div class="navbar-content">
                <ul class="nxl-navbar">
                    <li class="nxl-item nxl-caption">
                        <label>Dashboard</label>
                    </li>`);
document.write(``);
//menu
//banner
if (cookie["roles_id"] == 2) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Banner</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/customfront">Custom Banner</a></li>
                        </ul>
                    </li>`);
}
//Direktorat
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Direktorat</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/directorats">Direktorat</a></li>
                        </ul>
                    </li>`);
}
//Struktur
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Struktur</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/s">Struktur</a></li>
                        </ul>
                    </li>`);
}

//Berita
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Berita</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/n">Berita</a></li>
                        `);
}
//Berita kategori
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/nc">Kategori</a></li>
                        `);
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`
                           </ul>
                    </li>`);
}

//Opini
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 7 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Opini</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/opini">Opini</a></li>
                        </ul>
                    </li>`);
}

//Isu Terkini
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Isu Terkini</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/hi">Isu Terkini</a></li>
                       `);
}
//isu terkini kategori
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/hic">Kategori</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/hisc">Sub Kategori</a></li>
                        `);
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4) {
    document.write(`
                        </ul>
                    </li>`);
}

//foto
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Foto</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/ph">Foto</a></li>
                             </ul>
                    </li>`);
}

//Video
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Video</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/v">Video</a></li>
                             </ul>
                    </li>`);
}

//Agenda
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Agenda</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/a">Agenda</a></li>
                             </ul>
                    </li>`);
}

//E-Pustaka
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">E-Pustaka</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/f">E-Pustaka</a></li>
                            `);
}
//e-pustaka kategori
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/fc">Kategori</a></li>
                        `);
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`
                        </ul>
                    </li>`);
}

//Data
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Data</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            `);
}

if (cookie["roles_id"] == 1) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/dashboard">Dashboard</a></li>
                           `);
}

//e-pustaka kategori
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/narationfront">Narasi</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/metabase">Api Metabase</a></li>
                           `);
}
//data set dan slide
if (cookie["roles_id"] == 1) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/datafront">Data Set</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/slidefront">Slide</a></li>
                            `);
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`
                           </ul>
                    </li>
                           `);
}

//kdeks
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`<li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">KDEKS</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/kdeks">KDEKS</a></li>
                        `);
}
//kdeks master
if (cookie["roles_id"] == 1) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/master">Master</a></li>
                            
                           `);
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 3 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6) {
    document.write(`
                            
                            </ul>
                    </li>
                           `);

}

//Zona Kh6s
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Zona Khas</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/zk">Zona Khas</a></li>
                             </ul>
                    </li>`);
}


//Tagging
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Tagging</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/tg">Tagging</a></li>
                             </ul>
                    </li>`);
}


//User
//if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2|| cookie["roles_id"] == 3|| cookie["roles_id"] == 4|| cookie["roles_id"] == 6|| cookie["roles_id"] == 7) {
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2 || cookie["roles_id"] == 4 || cookie["roles_id"] == 6 || cookie["roles_id"] == 7) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">User</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            
                            `);
    // <li class="nxl-item"><a class="nxl-link" href="/cp">Change Password</a></li>
}
if (cookie["roles_id"] == 1) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/u">Users</a></li>
                           `);
}
if (cookie["roles_id"] == 1 || cookie["roles_id"] == 2) {
    document.write(`
                            <li class="nxl-item"><a class="nxl-link" href="/new_user">Persetujuan User Baru</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/whitelist">Persetujuan Whitelist</a></li>
                            
                           `);
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
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Profil</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/tk">Profile KNEKS</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/es">Profile Ekonomi Syariah</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/i">Anggota KNEKS</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/sm">Media Sosial</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/c">Kontak</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/m">Peta</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/scp">Scope</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/b">Banners</a></li>
                         </ul>
                    </li>
                            `);
}


//Pengaturan
if (cookie["roles_id"] == 1) {
    document.write(` <li class="nxl-item nxl-hasmenu">
                        <a href="javascript:void(0);" class="nxl-link">
                            <span class="nxl-micon"><i class="feather-bookmark"></i></span>
                            <span class="nxl-mtext">Pengaturan</span><span class="nxl-arrow"><i class="feather-chevron-right"></i></span>
                        </a>
                        <ul class="nxl-submenu">
                            <li class="nxl-item"><a class="nxl-link" href="/titleweb">Judul Situs</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/logo">Logo</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/header">Header</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/color">Warna</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/menu">Menu</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/submenu">Sub Menu</a></li>
                            <li class="nxl-item"><a class="nxl-link" href="/customfront">Custom Banner</a></li>
                         </ul>
                    </li>
                            `);
}



document.write(`</ul>
            </div>
            </div>
            </nav>`);