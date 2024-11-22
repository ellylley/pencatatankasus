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
                <div class="card-header">
                    <h4 class="card-title" align="center">RESTORE</h4>
                   
                </div>
                <div class="card-content">
                    <!-- table bordered -->
                    <div class="table-responsive">
                        <table class="table table-bordered mb-0">
                            <thead>
                                <tr>
                                    <th>No</th>      
                                    <th>Tanggal</th>
                                    <th>Nama</th>
                                    <th>Kelas</th>
                                    <th>Bentuk Pelanggaran </th>

                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                foreach ($elly as $gou) {
                                    
                                ?>
                                <tr>
                                    <td><?= $no++ ?></td>
                                    <td><?= $gou->tgl_kejadian ?></td>
                                    <td><?= $gou->nama_user . '  ' . $gou->nis ?></td>
                                    <td><?= $gou->nama_kelas . '  ' . $gou->jurusan ?></td>
                                    <td><?= $gou->bentuk_pelanggaran ?></td>
                                    <td>
                                       
                                        <a href="<?= base_url('home/aksi_restore_kasus/'.$gou->id_kasus)?>">
    <button class="btn btn-danger btn-sm ">Restore</button>
    </a>
                                        </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
