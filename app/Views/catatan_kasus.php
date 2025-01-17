<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manajemen User</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .disabled-field {
    pointer-events: none;
    background-color: #e9ecef; /* Optional: change the background color to indicate it's disabled */
}
.img-circle {
    border-radius: 50%;
    width: 150px; /* Sesuaikan ukuran yang diinginkan */
    height: 150px; /* Sesuaikan ukuran yang diinginkan */
    object-fit: cover;
}

        </style>
</head>
<body>
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'></nav>
            </div>
        </div>
    </div>

    <div class="row" id="table-bordered">
        <div class="col-12">
            <div class="card">
            <div class="card-header d-flex justify-content-between align-items-center">
    <h4 class="card-title">CATATAN KASUS</h4>

    <!-- Tombol Tambah dan Field Pencarian di Kanan -->
    <div class="d-flex">
    <div class="input-group me-2" style="max-width: 300px;">
        <input type="text" id="searchInput" class="form-control" placeholder="Cari">
        <button class="btn btn-warning" onclick="filterTable()">Cari</button>
    </div>

    <button class="btn btn-info me-1" data-bs-toggle="modal" data-bs-target="#printModal">Cetak</button>
    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addUserModal">Tambah</button>
</div>

    
</div>

                <div class="card-content">
                    <!-- table bordered -->
                    <div class="table-responsive">
                        <table class="table table-bordered mb-0">
                        <thead>
                                <tr>
                                <th>No</th>
                                <th>Tanggal</th>
                                        <th>Nama Murid</th>
                                        <th>Kelas</th>
                                        <th>Bentuk Pelanggaran</th>
                                        <th>Nama Wali</th>
                                        <th>Tanggal Pertemuan Wali</th>
                                        <th>Surat Peringatan</th>
                                        <th>Aksi</th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach($elly as $gou){
                                    if ($gou->isdelete == 0) {  
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                        
                                    <td><?= $gou->tgl_kejadian ?></td>
                                    <td>
            <img src="<?php echo base_url('images/'.$gou->foto) ?>" style="width: 60px; height: auto; display: block; margin-bottom: 5px;">
            <?= $gou->nama_user . ' - ' . $gou->nis ?>
        </td>
                                        <td><?= $gou->nama_kelas . '  ' . $gou->jurusan ?></td>
                                        <td><?= $gou->bentuk_pelanggaran . ' (Pelanggaran ke - ' . $gou->kasus_ke . ')' ?></td>


                                        <td><?= $gou->nama_wali . ' - ' . $gou->nohp_wali ?></td>
                                        <td><?= $gou->tgl_pertemuan_wali ?></td>
                                        <td>
    <?php if ($gou->kasus_ke >= 3): ?>
        <button class="btn btn-warning btn-sm" 
        data-bs-toggle="modal" 
        data-bs-target="#suratModal" 
        data-id="<?= $gou->surat_id_kasus ?>" 
        data-surat="<?= $gou->id_surat ?>" 
        data-nomor="<?= $gou->nomor_surat ?>" 
        data-lampiran="<?= $gou->lampiran ?>"
        data-isi="<?= $gou->isi_surat ?>"
        data-perihal="<?= $gou->perihal ?>"
        data-created="<?= $gou->created_at ?>"
>Surat</button>


    <?php else: ?>
        <button class="btn btn-warning btn-sm" disabled>Surat</button>
    <?php endif; ?>
</td>

                                    <td>
    <div class="dropdown">
        <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="actionMenu" data-bs-toggle="dropdown" aria-expanded="false">
            Aksi
        </button>
        <ul class="dropdown-menu" aria-labelledby="actionMenu">
            <li>
                <button type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editUserModal"
                   data-id="<?= $gou->surat_id_kasus ?>"
                   data-user="<?= $gou->user_id_user ?>"
                   data-bentuk="<?= $gou->bentuk_pelanggaran ?>"
                   data-tindak="<?= $gou->tindak_lanjut ?>"
                   data-catatan="<?= $gou->catatan ?>"
                   data-tgl="<?= $gou->tgl_kejadian  ?>"
                   data-tahun="<?= $gou->id_tahun ?>"
                   data-pertemuan="<?= $gou->tgl_pertemuan_wali ?>"
                   


                    >Edit
                </button>
            </li>
            <li><a class="dropdown-item" href="<?= base_url('home/hapuskasus/' . $gou->surat_id_kasus) ?>">Hapus</a></li>
           
            <?php if (isset($backup_kasus_pelanggaran[$gou->surat_id_kasus])): ?>
            <li>
                <button type="button" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#undoEditModal"
                    data-id="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->id_kasus ?>"
                    data-user="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->id_user ?>"
                    data-bentuk="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->bentuk_pelanggaran ?>"
                    data-tindak="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->tindak_lanjut ?>"
                    data-catatan="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->catatan ?>"
                    data-tgl="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->tgl_kejadian ?>"
                    data-tahun="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->id_tahun ?>"
                    data-pertemuan="<?= $backup_kasus_pelanggaran[$gou->surat_id_kasus]->tgl_pertemuan_wali ?>"
                  
                    >
                    Undo Edit
                </button>
            </li>
            <?php endif; ?>
        </ul>
    </div>
</td>


                                </tr>
                                <?php
                                    }}
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add User Modal -->
    <div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addUserModalLabel">Tambah</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<?= base_url('home/aksi_tambah_kasus') ?>" method="POST" enctype="multipart/form-data">
                        <div class="row">
                       

                        <div class="col-md-4">
                                <label>Murid</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <select class="form-select" id="nama" name="nama" onchange="toggleKelas()">
                                <option value="">Pilih</option>
                                    <?php foreach($user as $gou){ ?>
                                        <option value="<?=$gou->id_user?>"><?=$gou->nama_user . '-' . $gou->nis?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label>Tanggal Kejadian</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <input type="date" id="tgl" class="form-control" name="tgl" placeholder="Tanggal Kejadian">
                            </div>


                          
                            <div class="col-md-4">
    <label>Bentuk Pelanggaran</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="pelanggaran" class="form-control" name="pelanggaran" placeholder="Bentuk Pelanggaran"></textarea>
</div>

<div class="col-md-4">
    <label>Tindak Lanjut</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="tindak" class="form-control" name="tindak" placeholder="Tindak Lanjut"></textarea>
</div>
<div class="col-md-4">
    <label>Catatan</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="catatan" class="form-control" name="catatan" placeholder="Catatan"></textarea>
</div>


                            <div class="col-md-4">
                                <label>Tahun Ajaran</label>
                            </div>
                            <div class="col-md-8 form-group">
                            <select class="form-select" id="tahun" name="tahun" onchange="toggleKelas()">
                                
                        <?php foreach($tahun as $ta){ ?>
                            <option value="<?=$ta->id_tahun?>"><?=$ta->tahun?></option>
                        <?php } ?>
                                </select>
                            </div>  

                            <div class="col-md-4">
                                <label>Tanggal Pertemuan Wali</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <input type="date" id="tglpertemuan" class="form-control" name="tglpertemuan" placeholder="Tanggal Pertemuan Wali">
                            </div>
                            

                           

                            <div class="col-sm-12 d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit User Modal -->
    <div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editUserModalLabel">Edit</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editUserForm" action="<?= base_url('home/aksi_edit_kasus') ?>" method="POST" enctype="multipart/form-data">
                        <div class="row">

                        <div class="col-md-4">
                                <label>Murid</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <select class="form-select" id="editnama" name="nama" onchange="toggleKelas()">
                                <option value="">Pilih</option>
                                    <?php foreach($user as $gou){ ?>
                                        <option value="<?=$gou->id_user?>"><?=$gou->nama_user . '-' . $gou->nis?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label>Tanggal Kejadian</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <input type="date" id="edittgl" class="form-control" name="tgl" placeholder="Tanggal Kejadian">
                            </div>


                          
                            <div class="col-md-4">
    <label>Bentuk Pelanggaran</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="editpelanggaran" class="form-control" name="pelanggaran" placeholder="Bentuk Pelanggaran"></textarea>
</div>

<div class="col-md-4">
    <label>Tindak Lanjut</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="edittindak" class="form-control" name="tindak" placeholder="Tindak Lanjut"></textarea>
</div>
<div class="col-md-4">
    <label>Catatan</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="editcatatan" class="form-control" name="catatan" placeholder="Catatan"></textarea>
</div>


<div class="col-md-4">
                                <label>Tahun Ajaran</label>
                            </div>
                            <div class="col-md-8 form-group">
                            <select class="form-select" id="edittahun" name="tahun" onchange="toggleKelas()">
                                
                        <?php foreach($tahun as $ta){ ?>
                            <option value="<?=$ta->id_tahun?>"><?=$ta->tahun?></option>
                        <?php } ?>
                                </select>
                            </div>  

                            <div class="col-md-4">
                                <label>Tanggal Pertemuan Wali</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <input type="date" id="edittglpertemuan" class="form-control" name="tglpertemuan" placeholder="Tanggal Pertemuan Wali">
                            </div>

                            <input type="hidden" id="editId" name="id">

                            <div class="col-sm-12 d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary me-1 mb-1">Update</button>
                                <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Undo Edit Modal -->
    <div class="modal fade" id="undoEditModal" tabindex="-1" aria-labelledby="undoEditModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="undoEditModalLabel">Undo Edit</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="undoEditForm" action="<?= base_url('home/aksi_unedit_kasus') ?>" method="POST" enctype="multipart/form-data">
            <input type="hidden" id="undoUserId" name="id">
            <div class="row">
            <div class="col-md-4">
                                <label>Murid</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <select class="form-select disabled-field" id="undonama" name="nama" onchange="toggleKelas()">
                                <option value="">Pilih</option>
                                    <?php foreach($user as $gou){ ?>
                                        <option value="<?=$gou->id_user?>"><?=$gou->nama_user . '-' . $gou->nis?></option>
                                    <?php } ?>
                                </select>
                            </div>

                            <div class="col-md-4">
                                <label>Tanggal Kejadian</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <input type="date" id="undotgl" class="form-control disabled-field" name="tgl" placeholder="Tanggal Kejadian">
                            </div>


                          
                            <div class="col-md-4">
    <label>Bentuk Pelanggaran</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="undopelanggaran" class="form-control disabled-field" name="pelanggaran" placeholder="Bentuk Pelanggaran"></textarea>
</div>

<div class="col-md-4">
    <label>Tindak Lanjut</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="undotindak" class="form-control disabled-field" name="tindak" placeholder="Tindak Lanjut"></textarea>
</div>
<div class="col-md-4">
    <label>Catatan</label>
</div>
<div class="col-md-8 form-group">
    <textarea id="undocatatan" class="form-control disabled-field" name="catatan" placeholder="Catatan"></textarea>
</div>


<div class="col-md-4">
                                <label>Tahun Ajaran</label>
                            </div>
                            <div class="col-md-8 form-group">
                            <select class="form-select disabled-field" id="undotahun" name="tahun" onchange="toggleKelas()">
                               
                        <?php foreach($tahun as $ta){ ?>
                            <option value="<?=$ta->id_tahun?>"><?=$ta->tahun?></option>
                        <?php } ?>
                                </select>
                            </div>  
                
                            <div class="col-md-4">
                                <label>Tanggal Pertemuan Wali</label>
                            </div>
                            <div class="col-md-8 form-group">
                                <input type="date" id="undotglpertemuan" class="form-control disabled-field" name="tglpertemuan" placeholder="Tanggal Pertemuan Wali">
                            </div>
                
                <div class="col-sm-12 d-flex justify-content-end">
                    
                    <button type="submit" class="btn btn-primary me-1 mb-1">Undo Edit</button>
                </div>
                
            </div>
        </form>
      </div>
    </div>
  </div>
</div>



</div>

<!-- Modal untuk Cetak -->
<div class="modal fade" id="printModal" tabindex="-1" aria-labelledby="printModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="printModalLabel">Cetak Catatan Kasus</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('home/print') ?>" method="post" target="_blank">
                <div class="modal-body">
                    <!-- Opsi Cetak Semua -->
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="print_option" id="printAll" value="all" checked>
                        <label class="form-check-label" for="printAll">
                            Cetak Semua
                        </label>
                    </div>

                    <!-- Opsi Cetak Berdasarkan Tahun Ajaran -->
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="print_option" id="printByYear" value="year">
                        <label class="form-check-label" for="printByYear">
                            Cetak Berdasarkan Tahun Ajaran
                        </label>
                    </div>
                    <div class="mt-3">
                        <label for="tahun_ajaran" class="form-label">Tahun Ajaran</label>
                        <select class="form-select" name="tahun_ajaran" id="tahun_ajaran" disabled>
                            <option value="" selected disabled>Pilih Tahun Ajaran</option>
                            <?php foreach ($tahun as $row): ?>
                                <option value="<?= $row->id_tahun ?>"><?= $row->tahun ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>

                    <!-- Opsi Cetak Berdasarkan Murid -->
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="print_option" id="printByStudent" value="student">
                        <label class="form-check-label" for="printByStudent">
                            Cetak Berdasarkan Murid
                        </label>
                    </div>
                    <div class="mt-3">
                        <label for="student" class="form-label">Pilih Murid</label>
                        <select class="form-select" name="student" id="student" disabled>
                            <option value="" selected disabled>Pilih Murid</option>
                            <?php foreach ($user as $row): ?>
                                <option value="<?= $row->id_user ?>"><?= $row->nama_user ?> - <?= $row->nis ?></option>

                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary">Cetak</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal untuk surat -->

<div class="modal fade" id="suratModal" tabindex="-1" aria-labelledby="suratModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="suratModalLabel">Isi Surat Peringatan</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="<?= base_url('home/submitSurat') ?>" method="POST">
                <div class="modal-body">
                    <input type="hidden" id="Idkasus" name="kasus_id">
                    <input type="hidden" id="idsurat" name="surat_id">

                    <div class="mb-3">
                        <label for="nomor" class="form-label">Nomor</label>
                        <input type="text" class="form-control" id="nomor" name="nomor" required>
                    </div>

                    <div class="mb-3">
                        <label for="lampiran" class="form-label">Lampiran</label>
                        <input type="text" class="form-control" id="lampiran" name="lampiran">
                    </div>

                    <div class="mb-3">
                        <label for="perihal" class="form-label">Perihal</label>
                        <input type="text" class="form-control" id="perihal" name="perihal" required>
                    </div>

                    <div class="mb-3">
                        <label for="isiSurat" class="form-label">Isi Surat</label>
                        <textarea class="form-control" id="isiSurat" name="isi_surat" rows="5" required></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-primary">Simpan & Cetak</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Script to populate edit modal with existing data -->
<script>
    document.addEventListener('show.bs.modal', function (event) {
        var button = event.relatedTarget;
        var id = button.getAttribute('data-id');
        var user = button.getAttribute('data-user');
        var bentuk = button.getAttribute('data-bentuk');
        var tindak = button.getAttribute('data-tindak');
        var catatan = button.getAttribute('data-catatan');
        var tgl = button.getAttribute('data-tgl');
        var tahun = button.getAttribute('data-tahun');
        var pertemuan = button.getAttribute('data-pertemuan');

        var modal = document.getElementById('editUserModal');
        modal.querySelector('#editId').value = id;
        modal.querySelector('#editnama').value = user;
        modal.querySelector('#editpelanggaran').value = bentuk;
        modal.querySelector('#edittindak').value = tindak;
        modal.querySelector('#editcatatan').value = catatan;
        modal.querySelector('#edittgl').value = tgl;
        modal.querySelector('#edittahun').value = tahun;
        modal.querySelector('#edittglpertemuan').value = pertemuan;
        

        var modal = document.getElementById('undoEditModal');
    modal.querySelector('#undoUserId').value = id;
        modal.querySelector('#undonama').value = user;
        modal.querySelector('#undopelanggaran').value = bentuk;
        modal.querySelector('#undotindak').value = tindak;
        modal.querySelector('#undocatatan').value = catatan;
        modal.querySelector('#undotgl').value = tgl;
        modal.querySelector('#undotahun').value = tahun;
        modal.querySelector('#undotglpertemuan').value = pertemuan;


        
    });

    document.addEventListener('show.bs.modal', function (event) {
    var button = event.relatedTarget; // Tombol yang memicu modal
    var modal = document.getElementById('suratModal'); // Ambil elemen modal
    
    // Ambil atribut data dari tombol
    var id = button.getAttribute('data-id');
    var nomor = button.getAttribute('data-nomor');
    var lampiran = button.getAttribute('data-lampiran');
    var perihal = button.getAttribute('data-perihal');
    var isi = button.getAttribute('data-isi');
    var surat = button.getAttribute('data-surat');
    

    // Set nilai atribut ke dalam input form modal
    modal.querySelector('#Idkasus').value = id;
    modal.querySelector('#nomor').value = nomor;
    modal.querySelector('#lampiran').value = lampiran;
    modal.querySelector('#perihal').value = perihal;
    modal.querySelector('#isiSurat').value = isi;
    modal.querySelector('#idsurat').value = surat;
});


    function filterTable() {
        const searchInput = document.getElementById("searchInput").value.toLowerCase();
        const table = document.querySelector("table tbody");
        const rows = table.getElementsByTagName("tr");

        for (let i = 0; i < rows.length; i++) {
            const satuCell = rows[i].getElementsByTagName("td")[1];
            const duaCell = rows[i].getElementsByTagName("td")[2];
            const tigaCell = rows[i].getElementsByTagName("td")[3];
            const empatlCell = rows[i].getElementsByTagName("td")[4];
            const limaCell = rows[i].getElementsByTagName("td")[5];
            const enamCell = rows[i].getElementsByTagName("td")[6];

            const satuText = satuCell ? satuCell.textContent.toLowerCase() : "";
            const duaText = duaCell ? duaCell.textContent.toLowerCase() : "";
            const tigaText = tigaCell ? tigaCell.textContent.toLowerCase() : "";
            const empatText = empatlCell ? empatlCell.textContent.toLowerCase() : "";
            const limaText = limaCell ? limaCell.textContent.toLowerCase() : "";
            const enamText = enamCell ? enamCell.textContent.toLowerCase() : "";

            if (satuText.includes(searchInput) || duaText.includes(searchInput)|| tigaText.includes(searchInput)|| empatText.includes(searchInput)|| limaText.includes(searchInput)|| enamText.includes(searchInput)) {
                rows[i].style.display = "";
            } else {
                rows[i].style.display = "none";
            }
        }
    }

    document.addEventListener('DOMContentLoaded', function () {
    const printByYear = document.getElementById('printByYear');
    const printByStudent = document.getElementById('printByStudent');
    const tahunAjaran = document.getElementById('tahun_ajaran');
    const student = document.getElementById('student');

    document.querySelectorAll('input[name="print_option"]').forEach(radio => {
        radio.addEventListener('change', function () {
            if (printByYear.checked) {
                tahunAjaran.disabled = false;
                student.disabled = true;
            } else if (printByStudent.checked) {
                tahunAjaran.disabled = true;
                student.disabled = false;
            } else {
                tahunAjaran.disabled = true;
                student.disabled = true;
            }
        });
    });
});


</script>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
