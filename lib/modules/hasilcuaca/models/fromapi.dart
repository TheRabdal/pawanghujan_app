import 'package:pawanghujan_app/packages/packages.dart';

class FromApi extends Equatable {
    FromApi({
        required this.koordinat,
        required this.cuaca,
        required this.basis,
        required this.utama,
        required this.jarakpandang,
        required this.angin,
        required this.awan,
        required this.tanggal,
        required this.sistem,
        required this.zonawaktu,
        required this.id,
        required this.nama,
        required this.kodearea,
    });

    final Koordinat? koordinat;
    final List<Cuaca> cuaca;
    final String? basis;
    final Map<String, double> utama;
    final int? jarakpandang;
    final Angin? angin;
    final Awan? awan;
    final int? tanggal;
    final Sistem? sistem;
    final int? zonawaktu;
    final int? id;
    final String? nama;
    final int? kodearea;

    FromApi copyWith({
        Koordinat? koordinat,
        List<Cuaca>? cuaca,
        String? basis,
        Map<String, double>? utama,
        int? jarakpandang,
        Angin? angin,
        Awan? awan,
        int? tanggal,
        Sistem? sistem,
        int? zonawaktu,
        int? id,
        String? nama,
        int? kodearea,
    }) {
        return FromApi(
            koordinat: koordinat ?? this.koordinat,
            cuaca: cuaca ?? this.cuaca,
            basis: basis ?? this.basis,
            utama: utama ?? this.utama,
            jarakpandang: jarakpandang ?? this.jarakpandang,
            angin: angin ?? this.angin,
            awan: awan ?? this.awan,
            tanggal: tanggal ?? this.tanggal,
            sistem: sistem ?? this.sistem,
            zonawaktu: zonawaktu ?? this.zonawaktu,
            id: id ?? this.id,
            nama: nama ?? this.nama,
            kodearea: kodearea ?? this.kodearea,
        );
    }

    factory FromApi.fromJson(Map<String, dynamic> json){ 
        return FromApi(
            koordinat: json["koordinat"] == null ? null : Koordinat.fromJson(json["koordinat"]),
            cuaca: json["cuaca"] == null ? [] : List<Cuaca>.from(json["cuaca"]!.map((x) => Cuaca.fromJson(x))),
            basis: json["basis"],
            utama: Map.from(json["utama"]).map((k, v) => MapEntry<String, double>(k, v)),
            jarakpandang: json["jarakpandang"],
            angin: json["angin"] == null ? null : Angin.fromJson(json["angin"]),
            awan: json["awan"] == null ? null : Awan.fromJson(json["awan"]),
            tanggal: json["tanggal"],
            sistem: json["sistem"] == null ? null : Sistem.fromJson(json["sistem"]),
            zonawaktu: json["zonawaktu"],
            id: json["id"],
            nama: json["nama"],
            kodearea: json["kodearea"],
        );
    }

    Map<String, dynamic> toJson() => {
        "koordinat": koordinat?.toJson(),
        "cuaca": cuaca.map((x) => x?.toJson()).toList(),
        "basis": basis,
        "utama": Map.from(utama).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "jarakpandang": jarakpandang,
        "angin": angin?.toJson(),
        "awan": awan?.toJson(),
        "tanggal": tanggal,
        "sistem": sistem?.toJson(),
        "zonawaktu": zonawaktu,
        "id": id,
        "nama": nama,
        "kodearea": kodearea,
    };

    @override
    String toString(){
        return "$koordinat, $cuaca, $basis, $utama, $jarakpandang, $angin, $awan, $tanggal, $sistem, $zonawaktu, $id, $nama, $kodearea, ";
    }

    @override
    List<Object?> get props => [
    koordinat, cuaca, basis, utama, jarakpandang, angin, awan, tanggal, sistem, zonawaktu, id, nama, kodearea, ];
}

class Angin extends Equatable {
    Angin({
        required this.kecepatan,
        required this.derajat,
        required this.embusan,
    });

    final double? kecepatan;
    final int? derajat;
    final double? embusan;

    Angin copyWith({
        double? kecepatan,
        int? derajat,
        double? embusan,
    }) {
        return Angin(
            kecepatan: kecepatan ?? this.kecepatan,
            derajat: derajat ?? this.derajat,
            embusan: embusan ?? this.embusan,
        );
    }

    factory Angin.fromJson(Map<String, dynamic> json){ 
        return Angin(
            kecepatan: json["kecepatan"],
            derajat: json["derajat"],
            embusan: json["embusan"],
        );
    }

    Map<String, dynamic> toJson() => {
        "kecepatan": kecepatan,
        "derajat": derajat,
        "embusan": embusan,
    };

    @override
    String toString(){
        return "$kecepatan, $derajat, $embusan, ";
    }

    @override
    List<Object?> get props => [
    kecepatan, derajat, embusan, ];
}

class Awan extends Equatable {
    Awan({
        required this.semua,
    });

    final int? semua;

    Awan copyWith({
        int? semua,
    }) {
        return Awan(
            semua: semua ?? this.semua,
        );
    }

    factory Awan.fromJson(Map<String, dynamic> json){ 
        return Awan(
            semua: json["semua"],
        );
    }

    Map<String, dynamic> toJson() => {
        "semua": semua,
    };

    @override
    String toString(){
        return "$semua, ";
    }

    @override
    List<Object?> get props => [
    semua, ];
}

class Cuaca extends Equatable {
    Cuaca({
        required this.id,
        required this.utama,
        required this.deskripsi,
        required this.icon,
    });

    final int? id;
    final String? utama;
    final String? deskripsi;
    final String? icon;

    Cuaca copyWith({
        int? id,
        String? utama,
        String? deskripsi,
        String? icon,
    }) {
        return Cuaca(
            id: id ?? this.id,
            utama: utama ?? this.utama,
            deskripsi: deskripsi ?? this.deskripsi,
            icon: icon ?? this.icon,
        );
    }

    factory Cuaca.fromJson(Map<String, dynamic> json){ 
        return Cuaca(
            id: json["id"],
            utama: json["utama"],
            deskripsi: json["deskripsi"],
            icon: json["icon"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "utama": utama,
        "deskripsi": deskripsi,
        "icon": icon,
    };

    @override
    String toString(){
        return "$id, $utama, $deskripsi, $icon, ";
    }

    @override
    List<Object?> get props => [
    id, utama, deskripsi, icon, ];
}

class Koordinat extends Equatable {
    Koordinat({
        required this.bujur,
        required this.lintang,
    });

    final int? bujur;
    final int? lintang;

    Koordinat copyWith({
        int? bujur,
        int? lintang,
    }) {
        return Koordinat(
            bujur: bujur ?? this.bujur,
            lintang: lintang ?? this.lintang,
        );
    }

    factory Koordinat.fromJson(Map<String, dynamic> json){ 
        return Koordinat(
            bujur: json["bujur"],
            lintang: json["lintang"],
        );
    }

    Map<String, dynamic> toJson() => {
        "bujur": bujur,
        "lintang": lintang,
    };

    @override
    String toString(){
        return "$bujur, $lintang, ";
    }

    @override
    List<Object?> get props => [
    bujur, lintang, ];
}

class Sistem extends Equatable {
    Sistem({
        required this.negara,
        required this.matahariterbit,
        required this.matahariterbenam,
    });

    final String? negara;
    final int? matahariterbit;
    final int? matahariterbenam;

    Sistem copyWith({
        String? negara,
        int? matahariterbit,
        int? matahariterbenam,
    }) {
        return Sistem(
            negara: negara ?? this.negara,
            matahariterbit: matahariterbit ?? this.matahariterbit,
            matahariterbenam: matahariterbenam ?? this.matahariterbenam,
        );
    }

    factory Sistem.fromJson(Map<String, dynamic> json){ 
        return Sistem(
            negara: json["negara"],
            matahariterbit: json["matahariterbit"],
            matahariterbenam: json["matahariterbenam"],
        );
    }

    Map<String, dynamic> toJson() => {
        "negara": negara,
        "matahariterbit": matahariterbit,
        "matahariterbenam": matahariterbenam,
    };

    @override
    String toString(){
        return "$negara, $matahariterbit, $matahariterbenam, ";
    }

    @override
    List<Object?> get props => [
    negara, matahariterbit, matahariterbenam, ];
}
