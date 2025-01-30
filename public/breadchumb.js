const URLS = new URL(window.location.href);
const path =  URLS.pathname.split('/')[1];
let breadcrumb1;
let breadcrumb2;
//------------------------------Start Of Data----------------------
if(path == 'dashboard' || path == 'home'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Dashboard";
}
if(path == 'narations'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Narasi";
}
if(path == 'dashboard' || path == 'dashboard_add'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Dashboard";
}
if(path == 'dataset' || path == 'dataset_add' || path == 'dataset_detail'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Dataset";
}
if(path == 'sliderdata' || path == 'sliderdata_add'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Slider Data";
}

if(path == 'menu_data' || path == 'menudata_add' || path == 'menudata_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Menu Data";
}

if(path == 'submenu_data' || path == 'submenudata_add' || path == 'submenudata_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Sub Menu";
}
//------------------------------- End Of Data -----------------------------
//------------------------------Start Of Direktorat----------------------
if(path == 'directorats' || path == 'directorats_add' || path == 'directorats_edit' || path == 'directorats_detail'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Direktorat";
}

if(path == 'devision' || path == 'devision_add' || path == 'devision_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Divisi";
}
//------------------------------- End Of Direktorat -----------------------------
//------------------------------Start Of Berita----------------------
if(path == 'n' || path == 'n_add' || path == 'n_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Berita";
}
//------------------------------- End Of Berita -----------------------------
//------------------------------Start Of Barita Kategori----------------------
if(path == 'nc' || path == 'nc_add' || path == 'nc_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Kategori Berita";
}
//------------------------------- End Of Berita Kategori -----------------------------
//------------------------------Start Of Struktur----------------------
if(path == 's' || path == 's_add' || path == 's_edit' || path == 's_logo' || path == 's_logo_add'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Struktur Organisasi";
}
//------------------------------- End Of Struktur -----------------------------
//------------------------------Start Of Opini----------------------
if(path == 'opini'  || path == 'opini_add' || path == 'opini_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Opini";
}
//------------------------------- End Of Opini -----------------------------
//------------------------------Start Of Isu Terkini ----------------------
if(path == 'hi' || path == 'hi_add' || path == 'hi_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Isu Terkini";
}
//------------------------------- End Of Isu Terkini -----------------------------
//------------------------------Start Of Isu Terkini Kategori----------------------
if(path == 'hic'|| path == 'hic_add' || path == 'hic_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Isu Terkini Kategori";
}
//------------------------------- End Of Isu Terkini Kategori-----------------------------
//------------------------------Start Of Isu Terkini Sub Kategori ----------------------
if(path == 'hisc' || path == 'hisc_add' || path == 'hisc_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Isu Terkini Sub Kategori";
}
//------------------------------- End Of Isu Terkini Sub Kategori -----------------------------
//------------------------------Start Of Photo ----------------------
if(path == 'ph' || path == 'ph_add' || path == 'ph_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Photo";
}
//------------------------------- End Of Photo -----------------------------
//------------------------------Start Of Video ----------------------
if(path == 'v' || path == 'v_add' || path == 'v_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Video";
}
//------------------------------- End Of Video -----------------------------
//------------------------------Agenda ----------------------
if(path == 'a' || path == 'a_add' || path == 'a_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Agenda";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'f' || path == 'f_add' || path == 'f_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "E-Pustaka";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'fc' || path == 'fc_add' || path == 'fc_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Kategori Pustaka";
}
//-----------------------End Of Agenda -----------------------------
//------------------------ KDEKS ----------------------
if(path == 'tk'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Profil";
}
//-----------------------End Of KDEKS -----------------------------
//------------------------ KDEKS Master----------------------
if(path == 'master' || path == 'master_add' || path == 'master_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Master Kdeks";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'es'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Ekonomi Syariah";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'kdeks' || path == 'kdeks_add' || path == 'kdeks_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "KDEKS";
}
//-----------------------End Of KDEKS Master-----------------------------
//------------------------ Zona Khas----------------------
if(path == 'zk' || path == 'zk_add' || path == 'zk_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Zona Khas";
}
//-----------------------End Of Zona Khas-----------------------------
//------------------------ Tagging----------------------
if(path == 'tg' || path == 'tg_add' || path == 'tg_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Tagging";
}
//-----------------------End Of Tagging-----------------------------
//------------------------ Users ----------------------
if(path == 'u' || path == 'u_add' || path == 'u_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Users";
}
//-----------------------End Of Users-----------------------------
//------------------------ New User ----------------------
if(path == 'new_user'){
    breadcrumb1 = "New Users";
    breadcrumb2 = "List Data";
}
//-----------------------End Of New Users-----------------------------
//------------------------ Whitelist----------------------
if(path == 'whitelist'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Whitelist";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ institusi ----------------------
if(path == 'i' || path == 'i_add' || path == 'i_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Institusi";
}
//-----------------------End Of Institusi -----------------------------
//------------------------ Whitelist----------------------
if(path == 'sm' || path == 'sm_add' || path == 'sm_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Sosial Media";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'c' || path == 'c_add' || path == 'c_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Kontak";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'm' || path == 'm_add' || path == 'm_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Maps";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'scp' || path == 'scp_add' || path == 'scp_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Skup";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'b' || path == 'b_add' || path == 'b_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Banner";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'titleweb' || path == 'web_title_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Judul Web";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'logo' || path == 'web_logo_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Logo";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'header' || path == 'web_header_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Header";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'color' || path == 'web_color_edit'){ 
    breadcrumb1 = "Data";
    breadcrumb2 = "Warna";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'menu' || path == 'menu_add' || path == 'menu_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Menu";
} 
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'submenu' || path == 'submenu_add' || path == 'submenu_edit'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Sub Menu";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'login_banner' || path == 'login_banner_add' || path == 'welcomebanner' || path == 'welcomebanner_add'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Ubah Halaman";
}
//-----------------------End Of Whitelist-----------------------------
if(path == 'cp'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Ubah Password";
}
//-----------------------End Of Whitelist-----------------------------
if(path == 'ip_address'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Alamat IP";
}

document.write(`<div class="page-header">
                <div class="page-header-left d-flex align-items-center">
                    <div class="page-header-title">
                        <h5 class="m-b-10">Beranda</h5>
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