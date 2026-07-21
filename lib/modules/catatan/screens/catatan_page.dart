import 'package:pawanghujan_app/packages/packages.dart';

class CatatanPage extends StatefulWidget {
  const CatatanPage({super.key});

  @override
  State<CatatanPage> createState() => _CatatanPageState();
}

class _CatatanPageState extends State<CatatanPage> {
  List<Map<String, String>> _catatan = [];
  final _judulController = TextEditingController();
  final _isiController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _memuatCatatan();
  }

  void _memuatCatatan() async {
    final catatanDimuat = await SharedPref.muatCatatan();
    setState(() {
      _catatan = catatanDimuat;
    });
  }

  void _memperbaruiCatatan() {
    SharedPref.simpanCatatan(_catatan);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catatan', 
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: myColor[0]
        ),
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: _catatan.isEmpty
              ? Center(
                  child: Text(
                    'Belum ada catatan',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: _catatan.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              _judulController.text = _catatan[index]['judul']!;
                              _isiController.text = _catatan[index]['isi']!;
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Edit Catatan'),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextField(
                                          controller: _judulController,
                                          decoration: InputDecoration(
                                            labelText: 'Judul',
                                          ),
                                        ),
                                        TextField(
                                          controller: _isiController,
                                          decoration: InputDecoration(
                                            labelText: 'Isi',
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          _judulController.clear();
                                          _isiController.clear();
                                          Navigator.pop(context);
                                        },
                                        child: Text('Batal'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            _catatan[index] = {
                                              'judul': _judulController.text,
                                              'isi': _isiController.text,
                                            };
                                            _memperbaruiCatatan();
                                          });
                                          _judulController.clear();
                                          _isiController.clear();
                                          Navigator.pop(context);
                                        },
                                        child: Text('Simpan'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32.0),
                                    child: Text(
                                      _catatan[index]['judul']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Divider(),
                                  Expanded(
                                    child: Text(
                                      _catatan[index]['isi']!,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              iconSize: 20,
                              onPressed: () {
                                setState(() {
                                  _catatan.removeAt(index);
                                  _memperbaruiCatatan();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          _judulController.clear();
          _isiController.clear();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Tambah Catatan'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _judulController,
                      decoration: InputDecoration(labelText: 'Judul'),
                    ),
                    TextField(
                      controller: _isiController,
                      decoration: InputDecoration(labelText: 'Isi'),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: Text('Batal'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _catatan.add({
                          'judul': _judulController.text,
                          'isi': _isiController.text,
                        });
                        _memperbaruiCatatan();
                      });
                      _judulController.clear();
                      _isiController.clear();
                      Navigator.pop(context);
                    },
                    child: Text('Simpan'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
