<?php

namespace App\Controllers;

use Codeigniter\Controllers;
use App\models\M_kasus;
use CodeIgniter\Session\Session;
use Dompdf\Dompdf;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Models\LevelPermissionModel;


class Home extends BaseController
{
    public function index()
    {
        if (session()->get('level')>0){
            $model= new M_kasus();
            $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman dashboard'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       
            $where=array(
                'id_setting'=> 1
              );
              $data['setting'] = $model->getWhere('setting',$where);
              $data['currentMenu'] = 'dashboard';
        echo view('header', $data);
        echo view('menu', $data);
        echo view('dashboard', $data);
        echo view('footer');
    }else{
        return redirect()->to('home/login');
 
    } 
    }

    public function login()
    {
        $model= new M_kasus();
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
        echo view('header', $data);
        echo view('login', $data);

} 
public function aksilogin()
{
    $name = $this->request->getPost('nama');
    $pw = $this->request->getPost('password');
    $captchaResponse = $this->request->getPost('g-recaptcha-response');
    $backupCaptcha = $this->request->getPost('backup_captcha');
    
    $secretKey = '6LdLhiAqAAAAAPxNXDyusM1UOxZZkC_BLCgfyoQf'; // Ganti dengan secret key Anda yang sebenarnya
    $recaptchaSuccess = false;

    $captchaModel = new M_kasus();

    // Cek koneksi internet
    if ($this->isInternetAvailable()) {
        // Verifikasi reCAPTCHA
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secretKey&response=$captchaResponse");
        $responseKeys = json_decode($response, true);
        $recaptchaSuccess = $responseKeys["success"];
    }
    
    if ($recaptchaSuccess) {
        // reCAPTCHA berhasil
        $where = [
            'nama_user' => $name,
            'password' => md5($pw),
        ];

        $model = new M_kasus();
        $check = $model->getWhere('user', $where);

        if ($check) {
            session()->set('id', $check->id_user);
            session()->set('nama', $check->nama_user);
            session()->set('level', $check->level);
            session()->set('foto', $check->foto);
            session()->set('id_kelas', $check->id_kelas);
            session()->set('editmodul', $check->editmodul);
            return redirect()->to('home');
        } else {
            return redirect()->to('home/login')->with('error', 'Invalid username or password.');
        }
    } else {
        // Validasi CAPTCHA offline
        $storedCaptcha = session()->get('captcha_code'); // Retrieve stored CAPTCHA from session
        
        if ($storedCaptcha !== null) {
            if ($storedCaptcha === $backupCaptcha) {
                // CAPTCHA valid
                $where = [
                    'nama_user' => $name,
                    'password' => md5($pw),
                ];

                $model = new M_kasus();
                $check = $model->getWhere('user', $where);

                if ($check) {
                    session()->set('id', $check->id_user);
                    session()->set('nama', $check->nama_user);
                    session()->set('level', $check->level);
                    session()->set('foto', $check->foto);
                    session()->set('id_kelas', $check->id_kelas);
                    session()->set('editmodul', $check->editmodul);

                    return redirect()->to('home');
                } else {
                    return redirect()->to('home/login')->with('error', 'Invalid username or password.');
                }
            } else {
                // CAPTCHA tidak valid
                return redirect()->to('home/login')->with('error', 'Invalid CAPTCHA.');
            }
        } else {
            return redirect()->to('home/login')->with('error', 'CAPTCHA session is not set.');
        }
    }
}




    public function generateCaptcha()
{
    $code = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 6);

    // Store the CAPTCHA code in the session
    session()->set('captcha_code', $code);

    // Generate the image
    $image = imagecreatetruecolor(120, 40);
    $bgColor = imagecolorallocate($image, 255, 255, 255);
    $textColor = imagecolorallocate($image, 0, 0, 0);

    imagefilledrectangle($image, 0, 0, 120, 40, $bgColor);
    imagestring($image, 5, 10, 10, $code, $textColor);

    // Set the content type header - in this case image/png
    header('Content-Type: image/png');

    // Output the image
    imagepng($image);

    // Free up memory
    imagedestroy($image);
}

private function isInternetAvailable()
{
    $connected = @fsockopen("www.google.com", 80);
    if ($connected) {
        fclose($connected);
        return true;
    }
    return false;
}

public function logout()
        {
           session()->destroy();
            return redirect()->to('Home/login');
    

}

//log

public function log() 
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_kasus();

        // Menambahkan log aktivitas ketika user mengakses halaman log
        $id_user = session()->get('id');
        $activity = 'Mengakses halaman log aktivitas';
        $this->addLog($id_user, $activity);
        
        // Ambil data pencarian dari input GET
        $id_user_search = $this->request->getGet('id_user');
        $nama_user_search = $this->request->getGet('nama_user');
        $activity_search = $this->request->getGet('activity');
        $timestamp_search = $this->request->getGet('timestamp');

        // Mengambil data log aktivitas dengan filter
        $data['logs'] = $model->searchActivityLogs($id_user_search, $nama_user_search, $activity_search, $timestamp_search);
        
        // Menambahkan data pencarian ke array data
        $data['id_user'] = $id_user_search;
        $data['nama_user'] = $nama_user_search;
        $data['activity'] = $activity_search;
        $data['timestamp'] = $timestamp_search;

        // Ambil setting seperti biasa
        $where = array('id_setting' => 1);
        $data['setting'] = $model->getWhere('setting', $where);

        $data['currentMenu'] = 'log';
        echo view('header', $data);
        echo view('menu', $data);
        echo view('log', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


    public function addLog($id_user, $activity)
{
    $model = new M_kasus(); // Gunakan model M_kedaikopi
    $id_user = session()->get('id');
    $data = [
        'id_user' => $id_user,
        'activity' => $activity,
        'timestamp' => date('Y-m-d H:i:s'),
    ];
    $model->tambah('activity_log', $data); // Pastikan 'activity_log' adalah nama tabel yang benar
}


//setting

public function setting()
{
    // Memeriksa level akses user
    if (session()->get('level') == 0||session()->get('level') == 1 ) {
      
        $model = new M_kasus();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman setting'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       

    
        $id = 1; // id_toko yang diinginkan

        // Menyusun kondisi untuk query
        $where = array('id_setting' => $id);

        // Mengambil data dari tabel 'toko' berdasarkan kondisi
        $data['user'] = $model->getWhere('setting', $where);
 
        // Memuat view
        $where=array(
          'id_setting'=> 1
        );
        $data['setting'] = $model->getWhere('setting',$where);
        $data['currentMenu'] = 'setting'; 
        echo view('header', $data);
        echo view('menu', $data);
        echo view('setting', $data);
        echo view('footer', $data);
    } else {
        return redirect()->to('home/error');
    } 
}

public function aksisetting()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data setting'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
      
    
       
    $nama = $this->request->getPost('nama');
    $alamat = $this->request->getPost('alamat');
    $nohp = $this->request->getPost('nohp');
    $sekolah = $this->request->getPost('sekolah');
    $kota = $this->request->getPost('kota');
    $id = $this->request->getPost('id');
    
    $uploadedFile = $this->request->getFile('foto');

    $where = array('id_setting' => $id);

    $isi = array(
        'nama_setting' => $nama,
        'alamat' => $alamat,
        'nohp' => $nohp,
        'kota' => $kota,
        'nama_sekolah'=> $sekolah,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    // Cek apakah ada file yang diupload
    if ($uploadedFile && $uploadedFile->isValid() && !$uploadedFile->hasMoved()) {
        $foto = $uploadedFile->getName();
        $model->upload($uploadedFile); // Mengupload file baru
        $isi['logo'] = $foto; // Menambahkan nama file baru ke array data
    }

    $model->edit('setting', $isi, $where);

    return redirect()->to('home/setting/'.$id);
}


//profile

public function profile($id)
{
    if (session()->get('level') == 0||session()->get('level') == 1||session()->get('level') == 2||session()->get('level') == 3||session()->get('level') == 4||session()->get('level') == 5||session()->get('level') == 6||session()->get('level') == 7  ) {
        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman profile'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        
        $where= array('user.id_user'=>$id);
        $where=array('id_user'=>session()->get('id'));
        
        $data['user']=$model->getWhere('user',$where);
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);

        echo view('header',$data);
        echo view ('menu',$data);
        echo view('profile',$data);
        echo view ('footer');
        }else{
        return redirect()->to('home/error');
        }
        
}
public function aksieprofile() 
{
    $model = new M_kasus();

    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data profile'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       

    $a = $this->request->getPost('nama');
    $b = $this->request->getPost('email');
    $c = $this->request->getPost('nohp');
    $id = $this->request->getPost('id');
    $fotoName = $this->request->getPost('old_foto'); // Mengambil nama foto lama
    $foto = $this->request->getFile('foto');

    if ($foto && $foto->isValid()) {
        // Generate a new name for the uploaded file
        $newName = $foto->getRandomName();
        // Move the file to the target directory
        $foto->move(ROOTPATH . 'public/images', $newName);
        // Set the new file name to be saved in the database
        $fotoName = $newName;
    }

    $backupWhere = ['id_user' => $id];
    $existingBackup = $model->getWhere('backup_user', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di user_backup jika ada
        $model->hapus('backup_user', $backupWhere);
    }

    // Ambil data user lama berdasarkan id_user
    $userLama = $model->getUserById($id);

    // Simpan data user lama ke tabel user_backup
    $backupData = (array) $userLama;  // Ubah objek menjadi array
    $model->tambah('backup_user', $backupData);

    

    $isi = array(
        'nama_user' => $a,
        'email' => $b,
        'nohp' => $c,
        'foto' => $fotoName,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_user' => $id);
    $model->edit('user', $isi, $where);

    return redirect()->to('home/profile/'.$id);
}

public function aksi_changepass() {
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'mengubah password profile'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
       
    $oldPassword = $this->request->getPost('old');
    $newPassword = $this->request->getPost('new');
   

    // Dapatkan password lama dari database
    $currentPassword = $model->getPassword($id_user);

    // Verifikasi apakah password lama cocok
    if (md5($oldPassword) !== $currentPassword) {
        // Set pesan error jika password lama salah
        session()->setFlashdata('error', 'Password lama tidak valid.');
        return redirect()->back()->withInput();
    }
 
    // Update password baru
    $data = [
        'password' => md5($newPassword),
        'updated_by' => $id_user,
        'updated_at' => date('Y-m-d H:i:s')
    ];
    $where = ['id_user' => $id_user];
    
    $model->edit('user', $data, $where);
    
    // Set pesan sukses
    session()->setFlashdata('success', 'Password berhasil diperbarui.');
    return redirect()->to('home/profile/'.$id_user);
}

//user

public function user()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        // $data['kelas'] = $model->tampil('kelas', 'id_kelas');

        $data['kelas'] = $model->getAll('kelas', ['isdelete' => 0]);

        $data['elly'] = $model->tampil('user', 'id_user');
        $data['backup_users'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $user) {
            $data['backup_users'][$user->id_user] = $model->getBackupUser($user->id_user);
        }



        $data['satu'] = $model->getWhere('user', ['id_user' => $id_user]);

        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('menu', $data);
        echo view('user', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}


public function aksi_tambah_user()
    {
        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menambah user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       
      
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('level');
        $c = md5($this->request->getPost('password'));
        $d = $this->request->getPost('nis');
        $e = $this->request->getPost('nisn');
        $f = $this->request->getPost('kelas');
        $g = $this->request->getPost('jk');
        $h = $this->request->getPost('lahir');
        $i = $this->request->getPost('email');
        $j = $this->request->getPost('nohp');
        $k = $this->request->getPost('nik');
        $l = $this->request->getPost('nuptk');
        $m = $this->request->getPost('namawali');
        $n = $this->request->getPost('nowali');
        
        // $g = $this->request->getPost('editmodul');
        $uploadedFile = $this->request->getFile('foto');

        // Cek apakah file foto di-upload atau tidak
        if ($uploadedFile && $uploadedFile->isValid() && !$uploadedFile->hasMoved()) {
            $foto = $uploadedFile->getName();
            $model->upload($uploadedFile);
        } else {
            // Set foto default jika tidak ada file yang di-upload
            $foto = 'default.jpg';
        }
        
    
        
        $isi = array(
            'nama_user' => $a,
            'level' => $b,
            'password' => $c,
           'nis' => $d,
            'nisn' => $e,
            'id_kelas' => $f,
            'jk' => $g,
            'tgl_lhr' => $h,
            'email' => $i,
            'nohp' => $j,
            'nik' => $k,
            'nuptk' => $l,
            'nama_wali' => $m,
            'nohp_wali' => $n,
            'foto' => $foto,
            'created_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
            'created_by' => $id_user // ID user yang login
            

        );
        $model ->tambah('user', $isi);
        
        return redirect()->to('home/user');
    }

    public function aksi_edit_user()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        // Mengambil data log aktivitas dari model
       
    $a = $this->request->getPost('nama');
    $b = $this->request->getPost('level');
    $c = ($this->request->getPost('password'));
    $d = $this->request->getPost('nis');
    $e = $this->request->getPost('nisn');
    $f = $this->request->getPost('kelas');
    $g = $this->request->getPost('jk');
    $h = $this->request->getPost('lahir');
    $i = $this->request->getPost('email');
    $j = $this->request->getPost('nohp');
    $k = $this->request->getPost('nik');
    $l = $this->request->getPost('nuptk');
    $m = $this->request->getPost('namawali');
    $n = $this->request->getPost('nowali');
    // $g = $this->request->getPost('editmodul');
    $id = $this->request->getPost('id');
    $fotoName = $this->request->getPost('old_foto'); // Mengambil nama foto lama
    $foto = $this->request->getFile('foto');


    $backupWhere = ['id_user' => $id];
    $existingBackup = $model->getWhere('backup_user', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di user_backup jika ada
        $model->hapus('backup_user', $backupWhere);
    }

    // Ambil data user lama berdasarkan id_user
    $userLama = $model->getUserById($id);

    // Simpan data user lama ke tabel user_backup
    $backupData = (array) $userLama;  // Ubah objek menjadi array
    $model->tambah('backup_user', $backupData);


    if ($foto && $foto->isValid()) {
        // Generate a new name for the uploaded file
        $newName = $foto->getRandomName();
        // Move the file to the target directory
        $foto->move(ROOTPATH . 'public/images', $newName);
        // Set the new file name to be saved in the database
        $fotoName = $newName;
    }

    if ($b == 1) {
        $d = null; // NIS
        $e = null; // NISN
        $f = null; // Kelas
        $l = null;
        $m = null;
        $n = null;
       
    } elseif (in_array($b, [2, 3, 4,5,6])) {
        $f = null; // Kelas
        $d = null;
        $e = null;
        $m = null;
        $n = null;
    } elseif ($b == 7) {
        $k = null; 
        $l = null;
       
       
    }

    $isi = array(
        'nama_user' => $a,
        'level' => $b,
        'password' => $c,
        'nis' => $d,
        'nisn' => $e,
        'id_kelas' => $f,
        'jk' => $g,
        'tgl_lhr' => $h,
        'email' => $i,
        'nohp' => $j,
        'nik' => $k,
        'nuptk' => $l,
        'nama_wali' => $m,
        'nohp_wali' => $n,
        'foto' => $fotoName,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_user' => $id);
    $model->edit('user', $isi, $where);

    return redirect()->to('home/user');
}

public function aksi_reset($id)
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mereset password user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
       
      
    $where = array('id_user' => $id);
    
    $isi = array(
        'password' => md5('12345'),
        'updated_at' => date('Y-m-d H:i:s'),
        'updated_by' => $id_user
    );
    $model->edit('user', $isi, $where);

    return redirect()->to('home/user');
}

public function hapususer($id){
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menghapus data user'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $data = [
        'isdelete' => 1,
        'deleted_by' => $id_user,
        'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
    ];
      
    $model->edit('user', $data, ['id_user' => $id]);

    // Hapus data dari tabel backup_kelas
$where = array('id_user' => $id);
$model->hapus('backup_user', $where);
    return redirect()->to('home/user');
}

public function restore_user()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {
    	$model= new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore user'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        
        $data['elly'] = $model->join4('user', 'kelas', 'user.id_kelas=kelas.id_kelas', 'user.id_user', ['user.isdelete' => 1]);
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_user'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_user',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_user($id) {
        $model = new M_kasus();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore user'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('user', $data, ['id_user' => $id]);
    
        return redirect()->to('home/restore_user');
    }

    public function aksi_unedit_user()
{
    $model = new M_kasus();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/user')->with('error', 'ID user tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Merestore user yang diedit'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_user', ['id_user' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_user']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('user', $restoreData, ['id_user' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_user', ['id_user' => $id]);
    }

    return redirect()->to('home/user');
}

//kelas

public function kelas()
    {   
        if (session()->get('level') == 0||session()->get('level') == 1 ) {
    	$model= new M_kasus();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $where= array('id_kelas'=>$id);
        $data['satu']=$model->getwhere('kelas',$where);
      
        $data['elly'] = $model->join3('kelas', 'user', 'kelas.id_user = user.id_user', 'kelas.id_kelas', ['kelas.isdelete' => 0]);

       
        $data['backup_kelas'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $kelas) {
            $data['backup_kelas'][$kelas->id_kelas_kelas] = $model->getBackupKelas($kelas->id_kelas_kelas);
        }

        // Ambil data user dengan level 5 (untuk wali kelas)
        $whereUser = ['level' => 5, 'isdelete' => 0];
        $data['guru'] = $model->getWhereres('user', $whereUser); // Ambil data user dengan level 5

        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'kelas'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('kelas',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_tambah_kelas()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menambah data kelas'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
   
    // Ambil inputan kelas
    $kelas_input = $this->request->getPost('kelas');
    $jurusan = $this->request->getPost('jurusan') ?: '';

    $wali = $this->request->getPost('wali');
    // Ekstrak angka Romawi dari inputan menggunakan regex
    preg_match('/\b(I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII)\b/', $kelas_input, $matches);
   
    // Jika ditemukan angka Romawi, ambil nilainya, jika tidak, anggap tidak diketahui
    $kelas = isset($matches[0]) ? $matches[0] : 'Tidak Diketahui';
   
    // Tentukan jenjang berdasarkan angka Romawi
    $jenjang = '';
    switch ($kelas) {
        case 'I':
        case 'II':
        case 'III':
        case 'IV':
        case 'V':
        case 'VI':
            $jenjang = 'SD';
            break;
        case 'VII':
        case 'VIII':
        case 'IX':
            $jenjang = 'SMP';
            break;
        case 'X':
        case 'XI':
        case 'XII':
            $jenjang = 'SMK';
            break;
        default:
            $jenjang = 'Tidak Diketahui'; // Jika kelas tidak dikenali
    }

    $isi = array(
        'nama_kelas' => $kelas_input, // Simpan input kelas lengkap
        'id_user' => $wali, // Simpan input kelas lengkap
        'jurusan' => $jurusan, // Simpan input kelas lengkap
        'jenjang' => $jenjang, // Tambahkan jenjang ke dalam array
        'created_at' => date('Y-m-d H:i:s'), // Waktu saat data dibuat
        'created_by' => $id_user // ID user yang login
    );
    
    $model->tambah('kelas', $isi);
    
    return redirect()->to('home/kelas');
}


    

public function aksi_edit_kelas()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Mengubah data kelas'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    $kelas_input = $this->request->getPost('kelas');
    $jurusan = $this->request->getPost('jurusan');
    $wali = $this->request->getPost('wali');
    $id = $this->request->getPost('id');
    

    $backupWhere = ['id_kelas' => $id];
    $existingBackup = $model->getWhere('backup_kelas', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di backup_kelas jika ada
        $model->hapus('backup_kelas', $backupWhere);
    }

    // Ambil data kelas lama berdasarkan id
    $kelasLama = $model->getKelasById($id);
    
    // Simpan data kelas lama ke tabel backup_kelas
    $backupData = (array) $kelasLama;  // Ubah objek menjadi array
    $model->tambah('backup_kelas', $backupData);
    
    // Ekstrak angka Romawi dari inputan menggunakan regex
    preg_match('/\b(I|II|III|IV|V|VI|VII|VIII|IX|X|XI|XII)\b/', $kelas_input, $matches);
   
    // Jika ditemukan angka Romawi, ambil nilainya, jika tidak, anggap tidak diketahui
    $kelas = isset($matches[0]) ? $matches[0] : 'Tidak Diketahui';
   
    // Tentukan jenjang berdasarkan angka Romawi
    $jenjang = '';
    switch ($kelas) {
        case 'I':
        case 'II':
        case 'III':
        case 'IV':
        case 'V':
        case 'VI':
            $jenjang = 'SD';
            break;
        case 'VII':
        case 'VIII':
        case 'IX':
            $jenjang = 'SMP';
            break;
        case 'X':
        case 'XI':
        case 'XII':
            $jenjang = 'SMK';
            break;
        default:
            $jenjang = 'Tidak Diketahui'; // Jika kelas tidak dikenali
    }

    $isi = array(
        'nama_kelas' => $kelas_input, // Simpan input kelas lengkap
        'id_user' => $wali, // Simpan input kelas lengkap
        'jurusan' => $jurusan, // Simpan input kelas lengkap
        'jenjang' => $jenjang, // Tambahkan jenjang ke dalam array
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat data diperbarui
        'updated_by' => $id_user // ID user yang login
    );

    

    $where = array('id_kelas' => $id);
    print_r($where);
    $model->edit('kelas', $isi, $where);
    
     return redirect()->to('home/kelas');
}


    public function hapuskelas($id){
        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menghapus data kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        $data = [
            'isdelete' => 1,
            'deleted_by' => $id_user,
            'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
        ];
       
        
          
        $model->edit('kelas', $data, ['id_kelas' => $id]);

        //Hapus data dari tabel backup_kelas
    $where = array('id_kelas' => $id);
    $model->hapus('backup_kelas', $where);

        return redirect()->to('home/kelas');
   }

   public function aksi_unedit_kelas()
{
    $model = new M_kasus();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/kelas')->with('error', 'ID kelas tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit data kelas'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_kelas', ['id_kelas' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_kelas']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('kelas', $restoreData, ['id_kelas' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_kelas', ['id_kelas' => $id]);
    }

    return redirect()->to('home/kelas');
}

public function restore_kelas()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {

    	$model= new M_kasus();
        
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore kelas'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
      
        $data['elly'] = $model->join3('kelas', 'user', 'kelas.id_user = user.id_user', 'kelas.id_kelas', ['kelas.isdelete' => 1]);
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_kelas'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_kelas',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_kelas($id) {
        $model = new M_kasus();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore kelas'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('kelas', $data, ['id_kelas' => $id]);
    
        return redirect()->to('home/restore_kelas');
    }

    public function catatan_kasus()
{
    if (session()->get('level') == 0 || session()->get('level') == 1|| session()->get('level') == 6) {

        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman produk'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        $where = array(
            'kasus_pelanggaran.isdelete' => 0 // Tambahkan kondisi untuk isdelete=0
            
        );
        $data['elly'] = $model->joinempatwherekasus(
            'kasus_pelanggaran', 
            'user', 
            'kelas', 
            'surat_peringatan', 
            'kasus_pelanggaran.id_user=user.id_user', 
            'user.id_kelas=kelas.id_kelas', 
            'surat_peringatan.id_kasus=kasus_pelanggaran.id_kasus', 
            'kasus_pelanggaran.id_kasus',  $where 
            
        );
        // $data['elly'] = $model->joinkondisi('kasus_pelanggaran', 'user', 'kasus_pelanggaran.id_user = user.id_user', 'kasus_pelanggaran.id_kasus', ['kasus_pelanggaran.isdelete' => 0]);
        $data['user'] = $model->getAll('user', ['isdelete' => 0, 'level' => 7], 'nama_user ASC');

        $data['tahun'] = $model->getAll('tahun_ajaran', ['isdelete' => 0, 'status' => '1']);


        $data['backup_kasus_pelanggaran'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $kasus) {
            $data['backup_kasus_pelanggaran'][$kasus->surat_id_kasus] = $model->getBackupKasus($kasus->surat_id_kasus);
        }
        
        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'catatan_kasus'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('menu', $data);
        echo view('catatan_kasus', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function aksi_tambah_kasus()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menambah catatan kasus murid'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);

    // Ambil data dari form
    $a = $this->request->getPost('nama');
    $b = $this->request->getPost('tgl');
    $c = $this->request->getPost('pelanggaran');
    $d = $this->request->getPost('tindak');
    $e = $this->request->getPost('catatan');
    $f = $this->request->getPost('tahun');
    $g = $this->request->getPost('tglpertemuan');

    // Panggil fungsi dari model untuk mendapatkan kasus_ke
    $kasusKe = $model->hitungKasusKe($a);

    $isi = array(
        'id_user' => $a,
        'tgl_kejadian' => $b,
        'bentuk_pelanggaran' => $c,
        'tindak_lanjut' => $d,
        'catatan' => $e,
        'id_tahun' => $f,
        'tgl_pertemuan_wali' => $g,
        'kasus_ke' => $kasusKe, // Tambahkan kolom kasus_ke
        'created_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'created_by' => $id_user // ID user yang login
    );

    $model->tambah('kasus_pelanggaran', $isi);

    return redirect()->to('home/catatan_kasus');
}


    public function aksi_edit_kasus()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data catatan kasus'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        // Mengambil data log aktivitas dari model
       
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('tgl');
        $c = $this->request->getPost('pelanggaran');
        $d = $this->request->getPost('tindak');
        $e = $this->request->getPost('catatan');
        $f = $this->request->getPost('tahun');
        $g = $this->request->getPost('tglpertemuan');
    $id = $this->request->getPost('id');
   

    $backupWhere = ['id_kasus' => $id];
    $existingBackup = $model->getWhere('backup_kasus_pelanggaran', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di user_backup jika ada
        $model->hapus('backup_kasus_pelanggaran', $backupWhere);
    }

    // Ambil data user lama berdasarkan id_user
    $userLama = $model->getkasusById($id);

    // Simpan data user lama ke tabel user_backup
    $backupData = (array) $userLama;  // Ubah objek menjadi array
    $model->tambah('backup_kasus_pelanggaran', $backupData);


    

    $isi = array(
        'id_user' => $a,
        'tgl_kejadian' => $b,
        'bentuk_pelanggaran' => $c,
       'tindak_lanjut' => $d,
        'catatan' => $e,
        'id_tahun' => $f,
        'tgl_pertemuan_wali' => $g,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_kasus' => $id);
    $model->edit('kasus_pelanggaran', $isi, $where);

    return redirect()->to('home/catatan_kasus');
}

public function aksi_unedit_kasus()
{
    $model = new M_kasus();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/catatan_kasus')->with('error', 'ID kasus tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit catatan kasus'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_kasus_pelanggaran', ['id_kasus' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_kasus']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('kasus_pelanggaran', $restoreData, ['id_kasus' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_kasus_pelanggaran', ['id_kasus' => $id]);
    }

    return redirect()->to('home/catatan_kasus');
}

public function hapuskasus($id){
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menghapus data kasus catatan'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    $data = [
        'isdelete' => 1,
        'deleted_by' => $id_user,
        'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
    ];
   
    
      
    $model->edit('kasus_pelanggaran', $data, ['id_kasus' => $id]);

    //Hapus data dari tabel backup_kelas
$where = array('id_kasus' => $id);
$model->hapus('backup_kasus_pelanggaran', $where);

    return redirect()->to('home/catatan_kasus');
}

public function restore_kasus()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {

        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore catatan kasus'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);

        $where = array(
            'kasus_pelanggaran.isdelete' => 1 // Tambahkan kondisi untuk isdelete=0
            
        );
        $data['elly'] = $model->jointigawhere(
            'kasus_pelanggaran', 
            'user', 
            'kelas', 
            'kasus_pelanggaran.id_user=user.id_user', 
            'user.id_kelas=kelas.id_kelas', 
            'kasus_pelanggaran.id_kasus',  $where 
            
        );
        
        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'restore_kasus'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view('menu', $data);
        echo view('restore_kasus', $data);
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}
public function aksi_restore_kasus($id) {
    $model = new M_kasus();
     $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Merestore catatan kasus'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
    
    // Data yang akan diupdate untuk mengembalikan produk
    $data = [
        'isdelete' => 0,
        'deleted_by' => null,
        'deleted_at' => null
    ];

    // Update data produk dengan kondisi id_produk sesuai
    $model->edit('kasus_pelanggaran', $data, ['id_kasus' => $id]);

    return redirect()->to('home/restore_kasus');
}
public function tahun_ajaran()
{
    if (session()->get('level') == 0 || session()->get('level') == 1) {
        $model = new M_kasus();
        $id_user = session()->get('id');
        $activity = 'Mengakses halaman tahun ajaran';
        $this->addLog($id_user, $activity);

        $data['elly'] = $model->tampil('tahun_ajaran', 'id_tahun'); // Ambil data pengumuman
        $data['backup_tahun'] = []; // Inisialisasi array untuk backup user

        foreach ($data['elly'] as $tahun) {
            $data['backup_tahun'][$tahun->id_tahun] = $model->getBackuptahun($tahun->id_tahun);
        }
        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'tahun_ajaran';
        
        echo view('header', $data);
        echo view('menu', $data);
        echo view('tahun_ajaran', $data); // Kirim data pengumuman ke view pemberitahuan
        echo view('footer');
    } else {
        return redirect()->to('home/error');
    }
}

public function aksi_tambah_tahun()
    {
        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Menambah data tahun ajaran'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
       
        // $a = $this->request->getPost('kelas');
        $b = $this->request->getPost('tahun');
     
        $isi = array(
          
            'tahun' => $b,
            'status' => 1,
            'created_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
            'created_by' => $id_user // ID user yang login

        );
        $model ->tambah('tahun_ajaran', $isi);
        
        return redirect()->to('home/tahun_ajaran');
    }

    public function aksi_edit_tahun()
{
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengubah data tahun ajaran'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        // Mengambil data log aktivitas dari model
       
        $b = $this->request->getPost('tahun');
    $id = $this->request->getPost('id');
    

    $backupWhere = ['id_tahun' => $id];
    $existingBackup = $model->getWhere('backup_tahun_ajaran', $backupWhere);

    if ($existingBackup) {
        // Hapus data lama di user_backup jika ada
        $model->hapus('backup_tahun_ajaran', $backupWhere);
    }

    // Ambil data user lama berdasarkan id_user
    $userLama = $model->gettahunById($id);

    // Simpan data user lama ke tabel user_backup
    $backupData = (array) $userLama;  // Ubah objek menjadi array
    $model->tambah('backup_tahun_ajaran', $backupData);


   
   

    $isi = array(
        'tahun' => $b,
        'updated_at' => date('Y-m-d H:i:s'), // Waktu saat produk dibuat
        'updated_by' => $id_user // ID user yang login
    );

    $where = array('id_tahun' => $id);
    $model->edit('tahun_ajaran', $isi, $where);

    return redirect()->to('home/tahun_ajaran');
}


public function aksi_unedit_tahun()
{
    $model = new M_kasus();
    $id = $this->request->getPost('id'); // Ambil ID dari POST data
    
    if (!$id) {
        return redirect()->to('home/tahun_ajaran')->with('error', 'ID user tidak ditemukan.');
    }
    
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Undo edit data tahun ajaran'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    
    // Ambil data dari tabel user_backup berdasarkan id_user
    $backupData = $model->getWhere('backup_tahun_ajaran', ['id_tahun' => $id]);

    if ($backupData) {
        // Konversi data backup menjadi array
        $restoreData = (array) $backupData;

        // Hapus id_user dari array karena id_user tidak perlu di-update
        unset($restoreData['id_tahun']);

        // Update data di tabel user dengan data dari user_backup
        $model->edit('tahun_ajaran', $restoreData, ['id_tahun' => $id]);

        // Hapus data dari tabel user_backup setelah di-restore
        $model->hapus('backup_tahun_ajaran', ['id_tahun' => $id]);
    }

    return redirect()->to('home/tahun_ajaran');
}

public function aksi_update_status()
{
    $model = new M_kasus();
    $id_user = session()->get('id');
    $activity = 'Mengubah status tahun ajaran';
    $this->addLog($id_user, $activity);

    $status = $this->request->getPost('status');
    $id = $this->request->getPost('id');

    $isi = array(
        'status' => $status,
        'updated_at' => date('Y-m-d H:i:s'),
        'updated_by' => $id_user
    );

    $where = array('id_tahun' => $id);
    $model->edit('tahun_ajaran', $isi, $where);

    return redirect()->to('home/tahun_ajaran');
}


public function hapustahun($id){
    $model = new M_kasus();
    $id_user = session()->get('id'); // Ambil ID user dari session
    $activity = 'Menghapus data tahun ajaran'; // Deskripsi aktivitas
    $this->addLog($id_user, $activity);
    $data = [
        'isdelete' => 1,
        'deleted_by' => $id_user,
        'deleted_at' => date('Y-m-d H:i:s') // Format datetime untuk deleted_at
    ];
   
    
      
    $model->edit('tahun_ajaran', $data, ['id_tahun' => $id]);

    //Hapus data dari tabel backup_kelas
$where = array('id_tahun' => $id);
$model->hapus('backup_tahun_ajaran', $where);

    return redirect()->to('home/tahun_ajaran');
}

public function restore_tahun_ajaran()
    {   
        if (session()->get('level') == 0 || session()->get('level') == 1) {
    	$model= new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman restore tahun ajaran'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        
        $data['elly'] = $model->tampil('tahun_ajaran', 'id_tahun'); // Ambil data pengumuman
        $where=array(
            'id_setting'=> 1
          );
          $data['setting'] = $model->getWhere('setting',$where);
          $data['currentMenu'] = 'restore_tahun_ajaran'; // Sesuaikan dengan menu yang aktif
        echo view('header', $data);
        echo view ('menu',$data);
        echo view('restore_tahun_ajaran',$data);
        echo view ('footer');
         }else{
        return redirect()->to('home/error');
 
    } 
    }

    public function aksi_restore_ta($id) {
        $model = new M_kasus();
         $id_user = session()->get('id'); // Ambil ID user dari session
            $activity = 'Merestore tahun ajaran'; // Deskripsi aktivitas
            $this->addLog($id_user, $activity);
        
        // Data yang akan diupdate untuk mengembalikan produk
        $data = [
            'isdelete' => 0,
            'deleted_by' => null,
            'deleted_at' => null
        ];
    
        // Update data produk dengan kondisi id_produk sesuai
        $model->edit('tahun_ajaran', $data, ['id_tahun' => $id]);
    
        return redirect()->to('home/restore_tahun_ajaran');
    }

     public function kasus_pelanggaran()
    {
        if (session()->get('level')>0){
            $model= new M_kasus();
            $id_user = session()->get('id'); // Ambil ID user dari session
        $activity = 'Mengakses halaman kasus pelanggaran'; // Deskripsi aktivitas
        $this->addLog($id_user, $activity);
        
        $data['elly'] = $model->getWhereres('tahun_ajaran', ['tahun_ajaran.isdelete' => 0]);

        $where = array(
            'kasus_pelanggaran.isdelete' => 0 // Tambahkan kondisi untuk isdelete=0
            
        );
        $data['detail'] = $model->jointigawhere(
            'kasus_pelanggaran', 
            'user', 
            'kelas', 
            'kasus_pelanggaran.id_user=user.id_user', 
            'user.id_kelas=kelas.id_kelas', 
            'kasus_pelanggaran.id_kasus',  $where 
            
        );
       
            $where=array(
                'id_setting'=> 1
              );
              $data['setting'] = $model->getWhere('setting',$where);
              $data['currentMenu'] = 'kasus_pelanggaran';
        echo view('header', $data);
        echo view('menu', $data);
        echo view('kasus_pelanggaran', $data);
        echo view('footer');
    }else{
        return redirect()->to('home/login');
 
    } 
    }

    
    public function getDetailKasus($id_tahun)
{
    // Buat instance model langsung di dalam metode
    $model = new M_kasus();
    
    // Ambil ID user dari session
    $id_user = session()->get('id');
    $level = session()->get('level');

    // Jika level user adalah 7, filter berdasarkan id_user
    if ($level == 7) {
        // Jika level adalah 7 (admin), tampilkan kasus sesuai dengan id_user
        $data['kasus'] = $model->getKasusByTahunAndUser($id_tahun, $id_user);
    } elseif ($level == 5) {
        // Jika level adalah 5 (wali kelas), filter berdasarkan kelas yang diwali
        $data['kasus'] = $model->getKasusByTahunAndKelas($id_tahun, $id_user);
    } else {
        // Jika bukan level 7 atau 5, tampilkan semua data untuk tahun yang dimaksud
        $data['kasus'] = $model->getKasusByTahun($id_tahun);
    }

    // Kirimkan data sebagai JSON response
    return $this->response->setJSON($data);
}

    
public function print()
{
    $model = new M_kasus();
    $print_option = $this->request->getPost('print_option');
    $tahun_ajaran = $this->request->getPost('tahun_ajaran');
    $student = $this->request->getPost('student');

    // Menentukan kondisi berdasarkan opsi cetak
    if ($print_option == 'all') {
        $where = ['kasus_pelanggaran.isdelete' => 0];
    } elseif ($print_option == 'year' && $tahun_ajaran) {
        $where = [
            'kasus_pelanggaran.isdelete' => 0,
            'kasus_pelanggaran.id_tahun' => $tahun_ajaran
        ];
    } elseif ($print_option == 'student' && $student) {
        $where = [
            'kasus_pelanggaran.isdelete' => 0,
            'kasus_pelanggaran.id_user' => $student
        ];
    } else {
        return redirect()->to('catatan_kasus')->with('error', 'Pilihan cetak tidak valid atau data belum lengkap!');
    }

    // Mengambil data kasus berdasarkan kondisi
    $data['kasus'] = $model->jointigawhere(
        'kasus_pelanggaran', 
        'user', 
        'kelas', 
        'kasus_pelanggaran.id_user=user.id_user', 
        'user.id_kelas=kelas.id_kelas', 
        'kasus_pelanggaran.id_kasus',  
        $where
    );

    // Mengambil data setting
    $data['setting'] = $model->getWhere('setting', ['id_setting' => 1]);

    // Load view khusus untuk cetak
    return view('catatan_kasus_print', $data);
}
//surat

public function submitSurat()
{
    $model = new M_kasus(); // Pastikan Anda memiliki model untuk surat
    $id_user = session()->get('id'); // Ambil ID user dari session

    // Ambil data dari form
    $kasusId = $this->request->getPost('kasus_id');
    $nomor = $this->request->getPost('nomor');
    $lampiran = $this->request->getPost('lampiran');
    $perihal = $this->request->getPost('perihal');
    $isiSurat = $this->request->getPost('isi_surat');
    
    $isi = array(
        'id_kasus' => $kasusId,
        'nomor_surat' => $nomor,
        'lampiran' => $lampiran,
        'perihal' => $perihal,
        'isi_surat' => $isiSurat,
        'created_at' => date('Y-m-d H:i:s'), // Waktu saat surat dibuat
        'created_by' => $id_user // ID user yang login
    );

    // Cek apakah id_kasus sudah ada di tabel surat_peringatan
    $existingSurat = $model->db->table('surat_peringatan')->where('id_kasus', $kasusId)->get()->getRowArray();

    if ($existingSurat) {
        // Jika sudah ada, lakukan update
        $isi['updated_at'] = date('Y-m-d H:i:s'); // Waktu saat data diupdate
        $isi['updated_by'] = $id_user; // ID user yang melakukan update

        $where = ['id_kasus' => $kasusId];
        $model->edit('surat_peringatan', $isi, $where);
    } else {
        // Jika belum ada, lakukan insert
        $model->tambah('surat_peringatan', $isi);
    }

    return redirect()->to('home/printsurat'); // Atau arahkan ke halaman lain setelah sukses
}

public function printsurat()
{
    if (session()->get('level') == 0 || session()->get('level') == 1|| session()->get('level') == 6) {

        $model = new M_kasus();
        $id_user = session()->get('id'); // Ambil ID user dari session

        $where = array(
            'kasus_pelanggaran.isdelete' => 0 // Tambahkan kondisi untuk isdelete=0
            
        );
        $data['elly'] = $model->joinempatwherekasus(
            'kasus_pelanggaran', 
            'user', 
            'kelas', 
            'surat_peringatan', 
            'kasus_pelanggaran.id_user=user.id_user', 
            'user.id_kelas=kelas.id_kelas', 
            'surat_peringatan.id_kasus=kasus_pelanggaran.id_kasus', 
            'kasus_pelanggaran.id_kasus',  $where 
            
        );
        
        $where = array(
            'level' => 2,
            'isdelete' => 0
        );
        
        $data['kepala'] = $model->getWhere('user', $where);
        
        
        $where = ['id_setting' => 1];
        $data['setting'] = $model->getWhere('setting', $where);
        $data['currentMenu'] = 'catatan_kasus'; // Sesuaikan dengan menu yang aktif
        
        echo view('printsurat', $data);
       
    } else {
        return redirect()->to('home/error');
    }
}



}