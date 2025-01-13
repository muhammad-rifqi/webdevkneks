const URLS = new URL(window.location.href);
const path =  URLS.pathname.split('/')[1];
let breadcrumb1;
let breadcrumb2;
//------------------------------Start Of Data----------------------
if(path == 'dashboard'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Dashboard";
}
if(path == 'narationfront' || path == 'narationfront_add' || path == 'edit_narationfront'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Narasi";
}
if(path == 'metabase'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Metabase";
}
if(path == 'datafront' || path == 'data_add' || path == 'data_detail'){
    breadcrumb1 = "Data";
    breadcrumb2 = "Dataset";
}
if(path == 'slidefront' || path == 'slide_add' ){
    breadcrumb1 = "Data";
    breadcrumb2 = "Slider";
}
//------------------------------- End Of Data -----------------------------
//------------------------------Start Of Direktorat----------------------
if(path == 'directorats' || path == 'directorats_add' || path == 'directorats_edit' || path == 'directorats_detail' || path == 'directorats_devisi'){
    breadcrumb1 = "Direktorat";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Direktorat -----------------------------
//------------------------------Start Of Berita----------------------
if(path == 'n' || path == 'n_add' || path == 'n_edit'){
    breadcrumb1 = "Berita";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Berita -----------------------------
//------------------------------Start Of Barita Kategori----------------------
if(path == 'nc' || path == 'nc_add' || path == 'nc_edit'){
    breadcrumb1 = "Berita Kategori";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Berita Kategori -----------------------------
//------------------------------Start Of Struktur----------------------
if(path == 's' || path == 's_add' || path == 's_edit' || path == 's_logo'){
    breadcrumb1 = "Struktur";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Struktur -----------------------------
//------------------------------Start Of Opini----------------------
if(path == 'opini'  || path == 'opini_add' || path == 'opini_edit'){
    breadcrumb1 = "Opini";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Opini -----------------------------
//------------------------------Start Of Isu Terkini ----------------------
if(path == 'hi' || path == 'hi_add' || path == 'hi_edit'){
    breadcrumb1 = "Isu Terkini";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Isu Terkini -----------------------------
//------------------------------Start Of Isu Terkini Kategori----------------------
if(path == 'hic'|| path == 'hic_add' || path == 'hic_edit'){
    breadcrumb1 = "Isu Terkini Kategori";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Isu Terkini Kategori-----------------------------
//------------------------------Start Of Isu Terkini Sub Kategori ----------------------
if(path == 'hisc' || path == 'hisc_add' || path == 'hisc_edit'){
    breadcrumb1 = "Isu Terkini Sub Kategori";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Isu Terkini Sub Kategori -----------------------------
//------------------------------Start Of Photo ----------------------
if(path == 'ph' || path == 'ph_add' || path == 'ph_edit'){
    breadcrumb1 = "Photo";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Photo -----------------------------
//------------------------------Start Of Video ----------------------
if(path == 'v' || path == 'v_add' || path == 'v_edit'){
    breadcrumb1 = "Video";
    breadcrumb2 = "List Data";
}
//------------------------------- End Of Video -----------------------------
//------------------------------Agenda ----------------------
if(path == 'a' || path == 'a_add' || path == 'a_edit'){
    breadcrumb1 = "Agenda";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'f' || path == 'f_add' || path == 'f_edit'){
    breadcrumb1 = "E-Pustaka";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Agenda -----------------------------
//------------------------------Agenda ----------------------
if(path == 'fc' || path == 'fc_add' || path == 'fc_edit'){
    breadcrumb1 = "Kategori Pustaka";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Agenda -----------------------------
//------------------------ KDEKS ----------------------
if(path == 'tk'){
    breadcrumb1 = "Profil";
    breadcrumb2 = "List Data";
}
//-----------------------End Of KDEKS -----------------------------
//------------------------ KDEKS Master----------------------
if(path == 'master' || path == 'master_add' || path == 'master_edit'){
    breadcrumb1 = "Master";
    breadcrumb2 = "List Data";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'es'){
    breadcrumb1 = "Ekonomi Syariah";
    breadcrumb2 = "List Data";
}
//-----------------------End Of KDEKS Master-----------------------------
if(path == 'kdeks' || path == 'kdeks_add' || path == 'kdeks_edit'){
    breadcrumb1 = "KDEKS";
    breadcrumb2 = "List Data";
}
//-----------------------End Of KDEKS Master-----------------------------
//------------------------ Zona Khas----------------------
if(path == 'zk' || path == 'zk_add' || path == 'zk_edit'){
    breadcrumb1 = "Zona Khas";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Zona Khas-----------------------------
//------------------------ Tagging----------------------
if(path == 'tg' || path == 'tg_add' || path == 'tg_edit'){
    breadcrumb1 = "Tagging";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Tagging-----------------------------
//------------------------ Users ----------------------
if(path == 'u' || path == 'u_add' || path == 'u_edit'){
    breadcrumb1 = "Users";
    breadcrumb2 = "List Data";
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
    breadcrumb1 = "Whitelist";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ institusi ----------------------
if(path == 'i' || path == 'i_add' || path == 'i_edit'){
    breadcrumb1 = "Institusi";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Institusi -----------------------------
//------------------------ Whitelist----------------------
if(path == 'sm' || path == 'sm_add' || path == 'sm_edit'){
    breadcrumb1 = "Sosial Media";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'c' || path == 'c_add' || path == 'c_edit'){
    breadcrumb1 = "Kontak";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'm' || path == 'm_add' || path == 'm_edit'){
    breadcrumb1 = "Maps";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'scp' || path == 'scp_add' || path == 'scp_edit'){
    breadcrumb1 = "Skup";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'b' || path == 'b_add' || path == 'b_edit'){
    breadcrumb1 = "Banner";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'titleweb' || path == 'web_title_edit'){
    breadcrumb1 = "Title Web";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'logo' || path == 'web_logo_edit'){
    breadcrumb1 = "Logo";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'header' || path == 'web_header_edit'){
    breadcrumb1 = "Header";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'color' || path == 'web_color_edit'){ 
    breadcrumb1 = "Warna";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'menu' || path == 'menu_add' || path == 'menu_edit'){
    breadcrumb1 = "Menu";
    breadcrumb2 = "List Data";
} 
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'submenu' || path == 'submenu_add' || path == 'submenu_add'){
    breadcrumb1 = "Sub Menu";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
//------------------------ Whitelist----------------------
if(path == 'customfront' || path == 'custom_add' || path == 'welcomebanner'){
    breadcrumb1 = "Custom Halaman";
    breadcrumb2 = "List Data";
}
//-----------------------End Of Whitelist-----------------------------
if(path == 'cp'){
    breadcrumb1 = "Ubah Password";
    breadcrumb2 = "Form Data";
}
//-----------------------End Of Whitelist-----------------------------
if(path == 'ip_address'){
    breadcrumb1 = "Ip Address";
    breadcrumb2 = "List Ip Address";
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