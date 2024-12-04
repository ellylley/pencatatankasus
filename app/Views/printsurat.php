<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cetak Surat Peringatan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .header img {
            max-height: 80px;
            display: block;
            margin: 0 auto;
        }
        .header h2 {
            margin: 5px 0;
            font-size: 22px;
        }
        .header p {
            font-size: 14px;
            margin: 5px 0;
        }
        .header hr {
            border: 1px solid black;
            margin: 20px 0;
        }
        .container p {
            text-align: left;
        }
        .signature {
        display: flex;
        justify-content: space-between;
        text-align: center;
        margin-top: 40px;
    }
        .signature p {
            margin: 20px 0;
        }
        .signature-item {
        width: 30%;
    }
    .isi-surat p {
        line-height: 1.8; /* Atur jarak antar baris */
        margin-bottom: 15px; /* Atur jarak antar paragraf */
    }
    </style>
    <script>
        // Fungsi untuk membuka window print
        window.onload = function() {
            window.print(); // Membuka dialog print otomatis
        };
    </script>
</head>
<body>
    <div class="header">
        <?php if (!empty($setting)): ?>
            <!-- Menampilkan logo dan informasi sekolah -->
            <img src="<?= base_url('images/' . $setting->logo) ?>" alt="Logo Sekolah">
            <h2><?= $setting->nama_sekolah ?></h2>
            <p><?= $setting->alamat ?></p>
            <hr style="border: 1px solid black; margin: 20px 0;">
        <?php endif; ?>
    </div>

    <div class="container" style="margin-top: 40px;">
        <div class="header">
            <?php 
            // Ambil elemen pertama dari array $elly
            $gou = $elly[0];
            ?>
            <p style="text-align: left;">Nomor: <?= $gou->nomor_surat; ?></p>
            <p style="text-align: left;">Lampiran: <?= $gou->lampiran; ?></p>
            <p style="text-align: left;">Perihal: <?= $gou->perihal; ?></p>
        </div>
    </div>

    <div class="content">
    <div class="isi">
        <p>Kepada<br>Yth, Bpk/Ibu Wali Murid <?=  $gou->nama_user; ?></p>
        <p>Kelas <?=  $gou->jurusan; ?> <?= $gou->nama_kelas; ?></p>
        <p>di.</p>
        <p>Tempat</p>

        <p>Dengan hormat,</p>

        <p class="isi-surat"><?= nl2br($gou->isi_surat); ?></p>


        <p>Demikian surat peringatan ini kami buat, atas perhatian dan kerjasama Bapak/Ibu kami ucapkan terima kasih.</p>

        <!-- Menambahkan informasi kota dan tanggal -->
       <p style="text-align: right;">
    <?= $setting->kota; ?>, <?= date('d F Y', strtotime($gou->created_at)); ?>
</p>


    </div>
</div>

    </div>

    <!-- Menambahkan bagian untuk Mengetahui dan Menyetujui -->
    <div class="signature">

    <div class="signature-item">
        <p>Mengetahui,<br>
        Kepala <?= $setting->nama_sekolah ?><br><br> <!-- Tambahan br untuk space -->
        <u style="display: block; margin-top: 60px;">
            <span style="font-weight: bold; display: block; text-align: left;"><?= $kepala->nama_user ?></span>
        </u>
        <span style="font-weight: bold; display: block; text-align: left;">NUPTK: <?= $kepala->nuptk ?></span>
        </p>
    </div>

    <div class="signature-item">
        <p>Menyetujui,<br>Orang Tua/Wali Murid</p>
        <hr style="margin-top: 100px; border: 1px solid black; width: 80%;">
    </div>

    <div class="signature-item">
        <p>Wali Kelas</p>
        <hr style="margin-top: 116px; border: 1px solid black; width: 80%;">
    </div>

</div>



</div>

    <div class="footer">
        <p><?= $setting->footer_text; ?></p>
    </div>
</body>
</html>
