<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cetak Catatan Kasus</title>
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
    </style>
</head>
<body>
<div class="header">
    <?php if (!empty($setting)): ?>
        <img src="<?= base_url('images/' . $setting->logo) ?>" alt="Logo Sekolah">
        <h2><?= $setting->nama_sekolah ?></h2>
        <p><?= $setting->alamat ?></p>
        <hr style="border: 1px solid black; margin: 20px 0;">
    <?php endif; ?>
</div>

<h3 style="text-align: center;">CATATAN KASUS SISWA</h3>

    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Tanggal Kejadian</th>
                <th>Nama Siswa</th>
                <th>Kelas</th>
                <th>Bentuk Pelanggaran</th>
                <th>Tindak Lanjut</th>
                <th>Catatan</th>
            </tr>
        </thead>
        <tbody>
            <?php if (!empty($kasus)): ?>
                <?php foreach ($kasus as $index => $row): ?>
                    <tr>
                        <td><?= $index + 1 ?></td>
                        <td><?= $row->tgl_kejadian ?></td>
                        <td><?= $row->nama_user . '-' . $row->nis ?></td>
                        <td><?= $row->nama_kelas . ' ' . $row->jurusan ?></td>
                        <td><?= $row->bentuk_pelanggaran ?></td>
                        <td><?= $row->tindak_lanjut ?></td>
                        <td><?= $row->catatan ?></td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="7" style="text-align: center;">Tidak ada data</td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
    <script>
        window.print();
    </script>
</body>
</html>
