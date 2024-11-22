<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-12 text-center">
                <h3>KASUS PELANGGARAN</h3>
            </div>
        </div>
    </div>

    <section id="content-types">
        <div class="row">
            <?php foreach ($elly as $gou): ?>
                <div class="col-xl-3 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="card-content">
                            <div class="card-body">
                                <h4 class="card-title">
                                    Tahun Ajaran <?= $gou->tahun; ?>
                                </h4>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between">
                            <span></span>
                            <button class="btn btn-light-primary btn-read-more" data-id="<?= $gou->id_tahun; ?>">Read More</button>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </section>

    <div class="modal fade" id="modalDetailKasus" tabindex="-1" aria-labelledby="modalTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTitle">Detail Kasus Pelanggaran</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Nama</th>
                            <th>NIS</th>
                            <th>Bentuk Pelanggaran</th>
                            <th>Tindak Lanjut</th>
                            <th>Catatan</th>
                            <th>Tanggal Kejadian</th>
                        </tr>
                    </thead>
                    <tbody id="detailKasusBody">
                        <!-- Data akan dimuat melalui Ajax -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript untuk Ajax dan Modal -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $('.btn-read-more').click(function () {
            const idTahun = $(this).data('id');

            $.ajax({
                url: '/home/getDetailKasus/' + idTahun,
                type: 'GET',
                dataType: 'json',
                success: function (response) {
                    const tbody = $('#detailKasusBody');
                    tbody.empty(); // Bersihkan isi tabel sebelumnya

                    if (response.kasus.length > 0) {
                        response.kasus.forEach(function (data) {
                            const row = `
                                <tr>
                                    <td>${data.nama_user}</td>
                                    <td>${data.nis}</td>
                                    <td>${data.bentuk_pelanggaran}</td>
                                    <td>${data.tindak_lanjut}</td>
                                    <td>${data.catatan}</td>
                                    <td>${data.tgl_kejadian}</td>
                                </tr>
                            `;
                            tbody.append(row);
                        });
                    }

                    // Tampilkan modal, meski kosong
                    $('#modalDetailKasus').modal('show');
                },
                error: function () {
                    alert('Terjadi kesalahan saat mengambil data.');
                }
            });
        });
    });
</script>

