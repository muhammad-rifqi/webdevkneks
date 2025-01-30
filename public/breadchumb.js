const URLS = new URL(window.location.href);
const path =  URLS.pathname.split('/')[1];
let breadcrumb0;
let breadcrumb1;
let breadcrumb2;
//------------------------------Start Of Data----------------------
if(path == 'dashboard' || path == 'home'){
    breadcrumb0 = "Beranda"
    breadcrumb1 = "Home";
    breadcrumb2 = "";
}
if(path == 'dashboard'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dashboard";
    breadcrumb2 = "List Data";
}
if(path == 'narations'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Dashboard";
    breadcrumb2 = "Narasi";
}
if(path == 'dashboard_add'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dashboard";
    breadcrumb2 = "Tambah";
}
if(path == 'dataset'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dataset";
    breadcrumb2 = "List Data";
}

if(path == 'dataset_add'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dataset";
    breadcrumb2 = "Tambah";
}

if(path == 'dataset_detail'){
    breadcrumb0 = "Data"
    breadcrumb1 = "Dataset";
    breadcrumb2 = "Detail";
}

if(path == 'sliderdata'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Slider";
    breadcrumb2 = "List Data";
}

if(path == 'sliderdata_add'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Slider";
    breadcrumb2 = "Tambah";
}
if(path == 'menu_data'){
    breadcrumb0 = "Menu";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Menu";
}

if(path == 'menudata_add'){
    breadcrumb0 = "Menu";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'menudata_edit'){
    breadcrumb0 = "Menu";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}

if(path == 'submenu_data'){
    breadcrumb0 = "Sub Menu";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Sub Menu";
}

if(path == 'submenudata_add'){
    breadcrumb0 = "Sub Menu";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'submenudata_edit'){
    breadcrumb0 = "Sub Menu";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}

//------------------------------- End Of Data -----------------------------
//------------------------------Start Of Direktorat----------------------
if(path == 'directorats' ){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Direktorat";
}

if(path == 'directorats_add'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'directorats_edit' ){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}

if(path == 'directorats_detail'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Data";
    breadcrumb2 = "Detail";
}

if(path == 'devision'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Divisi";
    breadcrumb2 = "List Divisi";
}

if(path == 'devision_add'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Divisi";
    breadcrumb2 = "Tambah";
}

if(path == 'devision_edit'){
    breadcrumb0 = "Direktorat";
    breadcrumb1 = "Divisi";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Direktorat -----------------------------
//------------------------------Start Of Berita----------------------
if(path == 'n'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Berita";
}

if(path == 'n_add'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'n_edit'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Berita -----------------------------
//------------------------------Start Of Barita Kategori----------------------
if(path == 'nc'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "List Berita";
}

if(path == 'nc_add'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Tambah";
}

if(path == 'nc_edit'){
    breadcrumb0 = "Berita";
    breadcrumb1 = "Kategori";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Berita Kategori -----------------------------
//--------------------------------Start Of Struktur----------------------
if(path == 's'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Data";
    breadcrumb2 = "Struktur Organisasi";
}

if(path == 's_add'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Struktur Organisasi";
    breadcrumb2 = "Tambah";
}

if(path == 's_edit'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Struktur Organisasi";
    breadcrumb2 = "Edit";
}

if(path == 's_logo'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Data";
    breadcrumb2 = "Logo";
}

if(path == 's_logo_add'){
    breadcrumb0 = "Struktur";
    breadcrumb1 = "Logo";
    breadcrumb2 = "Tambah";
}
//------------------------------- End Of Struktur -----------------------------
//-------------------------------- Start Of Opini ----------------------
if(path == 'opini'){
    breadcrumb1 = "Opini";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Opini";
}

if(path == 'opini_add'){
    breadcrumb1 = "Opini";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'opini_edit'){
    breadcrumb1 = "Opini";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}

//------------------------------- End Of Opini -----------------------------
//------------------------------Start Of Isu Terkini ----------------------
if(path == 'hi'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Isu Terkini";
}

if(path == 'hi_add'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'hi_edit'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Isu Terkini -----------------------------
//------------------------------Start Of Isu Terkini Kategori----------------------
if(path == 'hic'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Data";
    breadcrumb2 = "Isu Terkini Kategori";
}

if(path == 'hic_add'){
    breadcrumb0 = "Isu Terkini Kategori";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'hic_edit'){
    breadcrumb0 = "Isu Terkini Kategori";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Isu Terkini Kategori-----------------------------
//------------------------------Start Of Isu Terkini Sub Kategori ----------------------
if(path == 'hisc'){
    breadcrumb0 = "Isu Terkini";
    breadcrumb1 = "Data";
    breadcrumb2 = "Isu Terkini Sub Kategori";
}

if(path == 'hisc_add'){
    breadcrumb0 = "Isu Terkini Sub Kategori";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'hisc_edit'){
    breadcrumb0 = "Isu Terkini Sub Kategori";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Isu Terkini Sub Kategori -----------------------------
//------------------------------Start Of Photo ----------------------
if(path == 'ph'){
    breadcrumb0 = "Photo";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Photo";
}

if(path == 'ph_add'){
    breadcrumb0 = "Photo";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'ph_edit'){
    breadcrumb0 = "Photo";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Photo -----------------------------
//------------------------------Start Of Video ----------------------
if(path == 'v'){
    breadcrumb0 = "Video";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Video";
}

if(path == 'v_add'){
    breadcrumb0 = "Video";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'v_edit'){
    breadcrumb0 = "Video";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//------------------------------- End Of Video -----------------------------
//------------------------------Agenda ----------------------
if(path == 'a'){
    breadcrumb0 = "Agenda";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Agenda";
}

if(path == 'a_add'){
    breadcrumb0 = "Agenda";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'a_edit'){
    breadcrumb0 = "Agenda";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'f'){
    breadcrumb0 = "E Pustaka";
    breadcrumb1 = "Data";
    breadcrumb2 = "List E Pustaka";
}

if(path == 'f_add'){
    breadcrumb0 = "E Pustaka";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'f_edit'){
    breadcrumb0 = "E Pustaka";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'fc'){
    breadcrumb0 = "E Pustaka";
    breadcrumb1 = "Data";
    breadcrumb2 = "Kategori Pustaka";
}

if(path == 'fc_add'){
    breadcrumb0 = "E Pustaka";
    breadcrumb1 = "Kategori Pustaka";
    breadcrumb2 = "Tambah";
}

if(path == 'fc_edit'){
    breadcrumb0 = "E Pustaka";
    breadcrumb1 = "Kategori Pustaka";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Agenda -----------------------------
//------------------------ Tentang Kami ----------------------
if(path == 'tk'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tentang";
}
//-----------------------End Of KDEKS -----------------------------
//------------------------ KDEKS Master----------------------
if(path == 'master'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Data";
    breadcrumb2 = "Master";
}

if(path == 'master_add'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Master";
    breadcrumb2 = "Tambah";
}

if(path == 'master_edit'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Master";
    breadcrumb2 = "Edit";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'es'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Data";
    breadcrumb2 = "Ekonomi Syariah";
}

if(path == 'es_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Ekonomi Syariah";
    breadcrumb2 = "Edit";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'kdeks'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Data";
}

if(path == 'kdeks_add'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'kdeks_edit'){
    breadcrumb0 = "Kdeks";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//-----------------------End Of KDEKS Master-----------------------------
//------------------------ Zona Khas----------------------
if(path == 'zk'){
    breadcrumb0 = "Zona Khas";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Data";
}

if( path == 'zk_add'){
    breadcrumb0 = "Zona Khas";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'zk_edit'){
    breadcrumb0 = "Zona Khas";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Zona Khas-----------------------------
//------------------------ Tagging----------------------
if(path == 'tg'){
    breadcrumb0 = "Tagging";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Data";
}

if(path == 'tg_add'){
    breadcrumb0 = "Tagging";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'tg_edit'){
    breadcrumb0 = "Tagging";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Tagging-----------------------------
//------------------------ Users ----------------------
if(path == 'u'){
    breadcrumb0 = "Users";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Users";
}

if(path == 'u_add'){
    breadcrumb0 = "Users";
    breadcrumb1 = "Data";
    breadcrumb2 = "Tambah";
}

if(path == 'u_edit'){
    breadcrumb0 = "Users";
    breadcrumb1 = "Data";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Users-----------------------------
//------------------------ New User ----------------------
if(path == 'new_user'){
    breadcrumb0 = "Users";
    breadcrumb1 = "New Users";
    breadcrumb2 = "List Data";
}
//-----------------------End Of New Users-----------------------------
//------------------------ Whitelist----------------------
if(path == 'whitelist'){
    breadcrumb0 = "User";
    breadcrumb1 = "Data";
    breadcrumb2 = "Whitelist";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ institusi ----------------------
if(path == 'i'){
    breadcrumb0 = "Profil"
    breadcrumb1 = "Data";
    breadcrumb2 = "Institusi";
}

if(path == 'i_add' ){
    breadcrumb0 = "Profil"
    breadcrumb1 = "Institusi";
    breadcrumb2 = "Tambah";
}

if(path == 'i_edit'){
    breadcrumb0 = "Profil"
    breadcrumb1 = "Institusi";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Institusi -----------------------------
//------------------------ Sosmed----------------------
if(path == 'sm'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Data";
    breadcrumb2 = "Sosial Media";
}

if(path == 'sm_add' ){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Sosial Media";
    breadcrumb2 = "Tambah";
}

if(path == 'sm_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Sosial Media";
    breadcrumb2 = "Edit";
}
//-----------------------End Of sosmed-----------------------------
//------------------------ KOntak----------------------
if(path == 'c'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Kontak";
}

if(path == 'c_add'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "List Kontak";
    breadcrumb2 = "Tambah";
}

if(path == 'c_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "List Kontak";
    breadcrumb2 = "Data";
}
//-----------------------End Of Kontak-----------------------------
//------------------------ Maps----------------------
if(path == 'm'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Data";
    breadcrumb2 = "Maps";
}

if(path == 'm_add'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Maps";
    breadcrumb2 = "Tambah";
}

if(path == 'm_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Maps";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Maps-----------------------------
//------------------------ SKup ----------------------
if(path == 'scp'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Data";
    breadcrumb2 = "Skup";
}

if(path == 'scp_add'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Skup";
    breadcrumb2 = "Tambah";
}

if(path == 'scp_edit'){
    breadcrumb0 = "Profil";
    breadcrumb1 = "Skup";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Skup-----------------------------
//------------------------ Banners ----------------------
if(path == 'b'){
    breadcrumb0 = "Banners";
    breadcrumb1 = "Data";
    breadcrumb2 = "List Banner";
}

if(path == 'b_add'){
    breadcrumb0 = "Banners";
    breadcrumb1 = "List Banners";
    breadcrumb2 = "Tambah";
}

if(path == 'b_edit'){
    breadcrumb0 = "Banners";
    breadcrumb1 = "List Banners";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Banners-----------------------------
//------------------------ Judul----------------------
if(path == 'titleweb'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Data";
    breadcrumb2 = "Judul Web";
}

if(path == 'web_title_edit'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Judul Web";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Judul-----------------------------
//------------------------ Logo----------------------
if(path == 'logo'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Data";
    breadcrumb2 = "Logo";
}

if(path == 'web_logo_edit'){
    breadcrumb0 = "Pengaturan"
    breadcrumb1 = "Logo";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Logo-----------------------------
//------------------------ Headers----------------------
if(path == 'header'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Data";
    breadcrumb2 = "Header";
}

if(path == 'web_header_edit'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Header";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Headers-----------------------------
//------------------------ Color----------------------
if(path == 'color'){
    breadcrumb0 = "Pengaturan" 
    breadcrumb1 = "Data";
    breadcrumb2 = "List Warna";
}

if(path == 'web_color_edit'){
    breadcrumb0 = "Pengaturan" 
    breadcrumb1 = "Warna";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Color-----------------------------
//------------------------ Menu ----------------------
if(path == 'menu'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Data";
    breadcrumb2 = "Menu";
} 

if(path == 'menu_add'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Menu";
    breadcrumb2 = "Tambah";
}
if( path == 'menu_edit'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Menu";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Menu-----------------------------
//------------------------ Sub Menu ----------------------
if(path == 'submenu'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Data";
    breadcrumb2 = "Sub Menu";
}

if(path == 'submenu_add'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "Tambah";
}

if( path == 'submenu_edit'){
    breadcrumb0 = "Pengaturan";
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "Edit";
}
//-----------------------End Of Sub Menu -----------------------------
//---------------------------- Welcome Banner --------------------------------
if(path == 'welcomebanner'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Welcome Banners";
    breadcrumb2 = "List Banner";
}

if(path == 'welcomebanner_add'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Welcome Banners";
    breadcrumb2 = "Tambah";
}
//------------------------ Login Banner----------------------
if(path == 'login_banner'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Login Banners";
    breadcrumb2 = "List Banner";
}

if(path == 'login_banner_add'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Login Banner";
    breadcrumb2 = "Tambah";
}
//-----------------------End Of Login Banner-----------------------------
if(path == 'cp'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Pengguna";
    breadcrumb2 = "Ubah Kata Sandi";
}
//-----------------------End Of Whitelist-----------------------------
if(path == 'ip_address'){
    breadcrumb0 = "Data";
    breadcrumb1 = "Alamat IP";
    breadcrumb2 = "List IP Adress";
}

document.write(`<div class="page-header">
                <div class="page-header-left d-flex align-items-center">
                    <div class="page-header-title">
                        <h5 class="m-b-10">${breadcrumb0}</h5>
                    </div>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/dashboard">${breadcrumb1}</a></li>
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