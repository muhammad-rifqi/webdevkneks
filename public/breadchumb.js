const URLS = new URL(window.location.href);
const path =  URLS.pathname.split('/')[1];
let breadcrumb0;
let breadcrumb1;
let breadcrumb2;
//------------------------------Start Of Data----------------------
if(path == 'dashboard' || path == 'home'){
    breadcrumb0 = "Beranda"
    breadcrumb1 = "";
    breadcrumb2 = "";
}
if(path == 'dashboard'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dashboard";
    breadcrumb2 = "";
}
if(path == 'narations'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Dashboard";
    breadcrumb2 = "Narasi";
}
if(path == 'dashboard_add'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dashboard";
    breadcrumb2 = "Tambah Dashboard";
}
if(path == 'dataset'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dataset";
    breadcrumb2 = "";
}

if(path == 'dataset_add'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dataset";
    breadcrumb2 = "Tambah Dataset";
}

if(path == 'dataset_detail'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dataset";
    breadcrumb2 = "Detail";
}

if(path == 'sliderdata'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Slide";
    breadcrumb2 = "";
}

if(path == 'sliderdata_add'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Slide";
    breadcrumb2 = "Tambah Slide";
}
if(path == 'menu_data'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Menu";
    breadcrumb2 = "";
}

if(path == 'menudata_add'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Menu";
    breadcrumb2 = "Tambah Menu";
}

if(path == 'menudata_edit'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Menu";
    breadcrumb2 = "Ubah Menu";
}

if(path == 'submenu_data'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "";
}

if(path == 'submenudata_add'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "Tambah Sub Menu";
}

if(path == 'submenudata_edit'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "Ubah Sub Menu";
}

//------------------------------- End Of Data -----------------------------
//------------------------------Start Of Direktorat----------------------
if(path == 'directorats' ){
    breadcrumb0 = "Direktorat Master";
    breadcrumb1 = "Direktorat";
    breadcrumb2 = "";
}

if(path == 'directorats_add'){
    breadcrumb0 = "Direktorat Master";
    breadcrumb1 = "Direktorat";
    breadcrumb2 = "Tambah Direktorat";
}

if(path == 'directorats_edit' ){
    breadcrumb0 = "Direktorat Master";
    breadcrumb1 = "Direktorat";
    breadcrumb2 = "Ubah Direktorat";
}

if(path == 'directorats_detail'){
    breadcrumb0 = "Direktorat Master";
    breadcrumb1 = "Direktorat";
    breadcrumb2 = "Icon-Banner";
}

if(path == 'devision'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Divisi";
    breadcrumb2 = "";
}

if(path == 'devision_add'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Divisi";
    breadcrumb2 = "Tambah Divisi";
}

if(path == 'devision_edit'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Divisi";
    breadcrumb2 = "Ubah Divisi";
}
//------------------------------- End Of Direktorat -----------------------------
//------------------------------Start Of Berita----------------------
if(path == 'n'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Berita";
    breadcrumb2 = "";
}

if(path == 'n_add'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Berita";
    breadcrumb2 = "Tambah Berita";
}

if(path == 'n_edit'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Berita";
    breadcrumb2 = "Ubah Berita";
}
//------------------------------- End Of Berita -----------------------------
//------------------------------Start Of Barita Kategori----------------------
if(path == 'nc'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "";
}

if(path == 'nc_add'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Tambah Kategori";
}

if(path == 'nc_edit'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Ubah Kategori";
}
//------------------------------- End Of Berita Kategori -----------------------------
//--------------------------------Start Of Struktur----------------------
if(path == 's'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Pejabat";
    breadcrumb2 = "";
}

if(path == 's_add'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Pejabat";
    breadcrumb2 = "Tambah Pejabat";
}

if(path == 's_edit'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Pejabat";
    breadcrumb2 = "Ubah Pejabat";
}

if(path == 's_logo'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Struktur";
    breadcrumb2 = "";
}

if(path == 's_logo_edit'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Struktur";
    breadcrumb2 = "Ubah Struktur";
}
if(path == 's_logo_add'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Struktur";
    breadcrumb2 = "Tambah Struktur";
}
//------------------------------- End Of Struktur -----------------------------
//-------------------------------- Start Of Opini ----------------------
if(path == 'opini'){
    breadcrumb0 = "Opini";
    breadcrumb1 = "";
    breadcrumb2 = "";
}

if(path == 'opini_add'){
    breadcrumb0 = "Opini";
    breadcrumb1 = "Tambah Opini";
    breadcrumb2 = "";
}

if(path == 'opini_edit'){
    breadcrumb0 = "Opini";
    breadcrumb1 = "Ubah Opini";
    breadcrumb2 = "";
}

//------------------------------- End Of Opini -----------------------------
//------------------------------Start Of Isu Terkini ----------------------
if(path == 'hi'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Isu Terkini";
    breadcrumb2 = "";
}

if(path == 'hi_add'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Isu Terkini";
    breadcrumb2 = "Tambah Isu Terkini";
}

if(path == 'hi_edit'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Isu Terkini";
    breadcrumb2 = "Ubah Isu Terkini";
}
//------------------------------- End Of Isu Terkini -----------------------------
//------------------------------Start Of Isu Terkini Kategori----------------------
if(path == 'hic'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "";
}

if(path == 'hic_add'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Tambah Kategori";
}

if(path == 'hic_edit'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Ubah Kategori";
}
//------------------------------- End Of Isu Terkini Kategori-----------------------------
//------------------------------Start Of Isu Terkini Sub Kategori ----------------------
if(path == 'hisc'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Sub Kategori";
    breadcrumb2 = "";
}

if(path == 'hisc_add'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Sub Kategori";
    breadcrumb2 = "Tambah Sub Kategori";
}

if(path == 'hisc_edit'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Sub Kategori";
    breadcrumb2 = "Ubah Sub Kategori";
}
//------------------------------- End Of Isu Terkini Sub Kategori -----------------------------
//------------------------------Start Of Photo ----------------------
if(path == 'ph'){
    breadcrumb0 = "Foto";
    breadcrumb1 = "";
    breadcrumb2 = "";
}

if(path == 'ph_add'){
    breadcrumb0 = "Foto";
    breadcrumb1 = "Tambah Foto";
    breadcrumb2 = "";
}

if(path == 'ph_edit'){
    breadcrumb0 = "Foto";
    breadcrumb1 = "Ubah Foto";
    breadcrumb2 = "";
}
//------------------------------- End Of Photo -----------------------------
//------------------------------Start Of Video ----------------------
if(path == 'v'){
    breadcrumb0 = "Video";
    breadcrumb1 = "";
    breadcrumb2 = "";
}

if(path == 'v_add'){
    breadcrumb0 = "Video";
    breadcrumb1 = "Tambah Video";
    breadcrumb2 = "";
}

if(path == 'v_edit'){
    breadcrumb0 = "Video";
    breadcrumb1 = "Ubah Video";
    breadcrumb2 = "";
}
//------------------------------- End Of Video -----------------------------
//------------------------------Agenda ----------------------
if(path == 'a'){
    breadcrumb0 = "Agenda";
    breadcrumb1 = "";
    breadcrumb2 = "";
}

if(path == 'a_add'){
    breadcrumb0 = "Agenda";
    breadcrumb1 = "Tambah Agenda";
    breadcrumb2 = "";
}

if(path == 'a_edit'){
    breadcrumb0 = "Agenda";
    breadcrumb1 = "Ubah Agenda";
    breadcrumb2 = "";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'f'){
    breadcrumb0 = "e-Pustaka";
    breadcrumb1 = "e-Pustaka";
    breadcrumb2 = "";
}

if(path == 'f_add'){
    breadcrumb0 = "e-Pustaka";
    breadcrumb1 = "e-Pustaka";
    breadcrumb2 = "Tambah e-Pustaka";
}

if(path == 'f_edit'){
    breadcrumb0 = "e-Pustaka";
    breadcrumb1 = "e-Pustaka";
    breadcrumb2 = "Ubah e-Pustaka";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'fc'){
    breadcrumb0 = "e-Pustaka";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "";
}

if(path == 'fc_add'){
    breadcrumb0 = "e-Pustaka";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Tambah Kategori";
}

if(path == 'fc_edit'){
    breadcrumb0 = "e-Pustaka";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Ubah Kategori";
}
//-----------------------End Of Agenda -----------------------------
//------------------------ Tentang Kami ----------------------
if(path == 'tk'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Profil Kneks";
    breadcrumb2 = "";
}

if(path == 'tk_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Profil Kneks";
    breadcrumb2 = "Ubah Profil Kneks";
}

//-----------------------End Of KDEKS -----------------------------
//------------------------ KDEKS Master----------------------
if(path == 'master'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Kdeks";
    breadcrumb2 = "";
}

if(path == 'master_add'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Kdeks";
    breadcrumb2 = "Tambah Kdeks";
}

if(path == 'master_edit'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Kdeks";
    breadcrumb2 = "Ubah Kdeks";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'es'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Ekonomi Syariah";
    breadcrumb2 = "";
}

if(path == 'es_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Ekonomi Syariah";
    breadcrumb2 = "Ubah";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'kdeks'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Profil";
    breadcrumb2 = "";
}

if(path == 'kdeks_add'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Profil";
    breadcrumb2 = "Tambah Profil";
}

if(path == 'kdeks_edit'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Profil";
    breadcrumb2 = "Ubah Profil";
}

if(path == 'province'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Provinsi";
    breadcrumb2 = "";
}

if(path == 'province_add'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Provinsi";
    breadcrumb2 = "Tambah Provinsi";
}

if(path == 'province_edit'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Provinsi";
    breadcrumb2 = "Ubah Provinsi";
}
//-----------------------End Of KDEKS Master-----------------------------
//------------------------ Zona Khas----------------------
if(path == 'zk'){
    breadcrumb0 = "Zona Khas";
    breadcrumb1 = "";
    breadcrumb2 = "";
}

if( path == 'zk_add'){
    breadcrumb0 = "Zona Khas";
    breadcrumb1 = "Tambah Zona Khas";
    breadcrumb2 = "";
}

if(path == 'zk_edit'){
    breadcrumb0 = "Zona Khas";
    breadcrumb1 = "Ubah Zona Khas";
    breadcrumb2 = "";
}
//-----------------------End Of Zona Khas-----------------------------
//------------------------ Tagging----------------------
if(path == 'tg'){
    breadcrumb0 = "Tagging";
    breadcrumb1 = "";
    breadcrumb2 = "";
}

if(path == 'tg_add'){
    breadcrumb0 = "Tagging";
    breadcrumb1 = "Tambah Tagging";
    breadcrumb2 = "";
}

if(path == 'tg_edit'){
    breadcrumb0 = "Tagging";
    breadcrumb1 = "Ubah Tagging";
    breadcrumb2 = "";
}
//-----------------------End Of Tagging-----------------------------
//------------------------ Users ----------------------
if(path == 'u'){
    breadcrumb0 = "User";
    breadcrumb1 = "User";
    breadcrumb2 = "";
}

if(path == 'u_add'){
    breadcrumb0 = "User";
    breadcrumb1 = "User";
    breadcrumb2 = "Tambah User";
}

if(path == 'u_edit'){
    breadcrumb0 = "User";
    breadcrumb1 = "User";
    breadcrumb2 = "Ubah User";
}
//-----------------------End Of Users-----------------------------
//------------------------ New User ----------------------
if(path == 'new_user'){
    breadcrumb0 = "User";
    breadcrumb1 = "User Baru";
    breadcrumb2 = "";
}
//-----------------------End Of New Users-----------------------------
//------------------------ Whitelist----------------------
if(path == 'whitelist'){
    breadcrumb0 = "User";
    breadcrumb1 = "User Baru";
    breadcrumb2 = "";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ institusi ----------------------
if(path == 'i'){
    breadcrumb0 = "Profil"
    breadcrumb1 = "Anggota Kneks";
    breadcrumb2 = "";
}

if(path == 'i_add' ){
    breadcrumb0 = "Profil"
    breadcrumb1 = "Anggota Kneks";
    breadcrumb2 = "Tambah Anggota Kneks";
}

if(path == 'i_edit'){
    breadcrumb0 = "Profil"
    breadcrumb1 = "Anggota Kneks";
    breadcrumb2 = "Ubah Anggota Kneks";
}
//-----------------------End Of Institusi -----------------------------
//------------------------ Sosmed----------------------
if(path == 'sm'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Sosial Media";
    breadcrumb2 = "";
}

if(path == 'sm_add' ){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Sosial Media";
    breadcrumb2 = "Tambah Sosial Media";
}

if(path == 'sm_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Sosial Media";
    breadcrumb2 = "Ubah Sosial Media";
}
//-----------------------End Of sosmed-----------------------------
//------------------------ KOntak----------------------
if(path == 'c'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Kontak";
    breadcrumb2 = "";
}

if(path == 'c_add'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Kontak";
    breadcrumb2 = "Tambah Kontak";
}

if(path == 'c_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Kontak";
    breadcrumb2 = "Ubah Kontak";
}
//-----------------------End Of Kontak-----------------------------
//------------------------ Maps----------------------
if(path == 'm'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Maps";
    breadcrumb2 = "";
}

if(path == 'm_add'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Maps";
    breadcrumb2 = "Tambah Maps";
}

if(path == 'm_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Maps";
    breadcrumb2 = "Ubah Maps";
}
//-----------------------End Of Maps-----------------------------
//------------------------ SKup ----------------------
if(path == 'scp'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Skup";
    breadcrumb2 = "";
}

if(path == 'scp_add'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Skup";
    breadcrumb2 = "Tambah Skup";
}

if(path == 'scp_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Skup";
    breadcrumb2 = "Ubah Skup";
}
//-----------------------End Of Skup-----------------------------
//------------------------ Banners ----------------------
if(path == 'b'){
    breadcrumb0 = "Banners";
    breadcrumb1 = "Slide Show Banner";
    breadcrumb2 = "";
}

if(path == 'b_add'){
    breadcrumb0 = "Banners";
    breadcrumb1 = "Slide Show";
    breadcrumb2 = "Tambah Slide Show";
}

if(path == 'b_edit'){
    breadcrumb0 = "Banners";
    breadcrumb1 = "Slide Show";
    breadcrumb2 = "Ubah Slide Show";
}
//-----------------------End Of Banners-----------------------------
//------------------------ Judul----------------------
if(path == 'titleweb'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Judul Web";
    breadcrumb2 = "";
}

if(path == 'web_title_edit'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Judul Web";
    breadcrumb2 = "";
}
//-----------------------End Of Judul-----------------------------
//------------------------ Logo----------------------
if(path == 'logo'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Logo";
    breadcrumb2 = "";
}

if(path == 'web_logo_edit'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Logo";
    breadcrumb2 = "";
}
//-----------------------End Of Logo-----------------------------
//------------------------ Headers----------------------
if(path == 'header'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Header";
    breadcrumb2 = "";
}

if(path == 'web_header_edit'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Header";
    breadcrumb2 = "";
}
//-----------------------End Of Headers-----------------------------
//------------------------ Color----------------------
if(path == 'color'){
    breadcrumb0 = "Pengaturan" 
    breadcrumb1 = "Warna";
    breadcrumb2 = "";
}

if(path == 'web_color_edit'){
    breadcrumb0 = "Pengaturan" 
    breadcrumb1 = "Warna";
    breadcrumb2 = "";
}
//-----------------------End Of Color-----------------------------
//------------------------ Menu ----------------------
if(path == 'menu'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Menu";
    breadcrumb2 = "";
} 

if(path == 'menu_add'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Menu";
    breadcrumb2 = "Tambah Menu";
}
if( path == 'menu_edit'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Menu";
    breadcrumb2 = "Ubah Menu";
}
//-----------------------End Of Menu-----------------------------
//------------------------ Sub Menu ----------------------
if(path == 'submenu'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "";
}

if(path == 'submenu_add'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "Tambah Sub Menu";
}

if( path == 'submenu_edit'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "Ubah Sub Menu";
}
//-----------------------End Of Sub Menu -----------------------------
//---------------------------- Welcome Banner --------------------------------
if(path == 'welcomebanner'){
    breadcrumb0 = "Banner";
    breadcrumb1 = "Welcome";
    breadcrumb2 = "";
}

if(path == 'welcomebanner_add'){
    breadcrumb0 = "Banner";
    breadcrumb1 = "Welcome";
    breadcrumb2 = "Tambah Welcome";
}

if(path == 'edit_welcome_page'){
    breadcrumb0 = "Banner";
    breadcrumb1 = "Welcome";
    breadcrumb2 = "Ubah Welcome";
}
//------------------------ Login Banner----------------------
if(path == 'login_banner'){
    breadcrumb0 = "Banner";
    breadcrumb1 = "Login";
    breadcrumb2 = "";
}

if(path == 'login_banner_add'){
    breadcrumb0 = "Banner";
    breadcrumb1 = "Login";
    breadcrumb2 = "Tambah Login";
}

if(path == 'login_banner_edit'){
    breadcrumb0 = "Banner";
    breadcrumb1 = "Login";
    breadcrumb2 = "Ubah Login";
}
//-----------------------End Of Login Banner-----------------------------
if(path == 'cp'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Pengguna";
    breadcrumb2 = "Ubah Kata Sandi";
}
//-----------------------End Of Whitelist-----------------------------
if(path == 'ip_address'){
    breadcrumb0 = "User";
    breadcrumb1 = "IP Address";
    breadcrumb2 = "";
}

document.write(`<div class="page-header">
                <div class="page-header-left d-flex align-items-center">
                    <div class="page-header-title">
                        <h5 class="m-b-10">${breadcrumb0}</h5>
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">${breadcrumb1}</a></li>
                        <li class="breadcrumb-item">${breadcrumb2}</li>
                    </ul>
                </div>
                <div class="page-header-right ms-auto">
                    <div class="page-header-right-items">
                        <div class="d-flex d-md-none">
                            <a href="javascript:void(0)" class="page-header-right-close-toggle">
                                <i class="feather-arrow-left me-2"></i>
                                <span>Back</span>
                            </a>
                        </div>
                    </div>
                    <div class="d-md-none d-flex align-items-center">
                        <a href="javascript:void(0)" class="page-header-right-open-toggle">
                            <i class="feather-align-right fs-20"></i>
                        </a>
                    </div>
                </div>
            </div>`);