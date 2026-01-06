-- ===============================
-- TABEL JADWAL PEMINJAMAN
-- ===============================

CREATE TABLE jadwal_peminjaman (
    id INT AUTO_INCREMENT PRIMARY KEY,
    peminjaman_id INT NOT NULL,
    tanggal DATE NOT NULL,
    jam_mulai TIME NOT NULL,
    jam_selesai TIME NOT NULL,
    keterangan TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_jadwal_peminjaman
    FOREIGN KEY (peminjaman_id)
    REFERENCES peminjaman(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- ===============================
-- INDEX
-- ===============================
CREATE INDEX idx_jadwal_tanggal 
ON jadwal_peminjaman(tanggal);

CREATE INDEX idx_jadwal_jam 
ON jadwal_peminjaman(jam_mulai, jam_selesai);
