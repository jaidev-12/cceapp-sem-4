import 'package:cceapp/pages/pdfviewonline.dart';
import 'package:flutter/material.dart';

class DSAListViewBuilderLectures extends StatelessWidget {
  final String section;
  final String title;
  DSAListViewBuilderLectures(
      {Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> DSAlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F1_Course%20Overview.pdf?alt=media&token=6bc0f9ae-71f5-4572-86c1-e9efb90efb32",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F2_Data%20structures%20and%20Algorithms%20in%20problem%20solving.pdf?alt=media&token=ba7be856-da83-4c82-987d-8d1d6bcd916b",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F3_Introduction%20to%20Data%20Structures.pdf?alt=media&token=d601d892-e014-4c0e-8da8-9f7c65f929af",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F4_Algorithms%20and%20analysis%20-%20part%201.pdf?alt=media&token=f3b8853d-2246-4f1d-b80a-a7c9cdecfaae",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F4_Algorithms%20and%20analysis%20-%20part%202.pdf?alt=media&token=0fe770c3-fdfc-4e88-80b5-7f23de185f9a",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F5_Linear%20Data%20Structures%20-%20part%201.pdf?alt=media&token=60971c99-e3d6-4dd2-a66e-ba1c2e3b6e6e",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F6_Algorithms%20on%20Data%20Structures%20-%20part%201.pdf?alt=media&token=58743b69-4350-4435-b758-a804097a5ccc",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F7_Algorithms%20and%20analysis%20-%20part%203.pdf?alt=media&token=d8594198-1699-4a69-84ef-d83ae031be03",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F8_Algorithms%20on%20Data%20Structures%20-%20part%202.pdf?alt=media&token=1c69cd25-547c-45e9-ad87-765e631278ab",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F9_Algorithms%20on%20Data%20Structures%20-%20part%203.pdf?alt=media&token=e88ca90d-2ad2-428e-b578-f3779d247b09",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F10_Algorithms%20on%20Data%20Structures%20-%20part%204.pdf?alt=media&token=0f7d3c39-af14-44fa-a31d-76829f21b51f",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F11_Linear%20Data%20Structures%20-%20part%202%20ll%20traversal.pdf?alt=media&token=8875ad53-1006-494d-ba25-0b2a217f399e",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F12_Linear%20Data%20Structures%20-%20part%203%20ll%20insertion.pdf?alt=media&token=c156aca8-5f0c-400f-a06e-369ec53e9e37",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F13_Linear%20Data%20Structures%20-%20part%204%20-%20ll%20deletion.pdf?alt=media&token=508742f7-a623-4d8d-b7e2-248932122c34",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F14_Linear%20Data%20Structures%20-%20part%205-%20dll%20insertion.pdf?alt=media&token=20e27d43-fe89-409d-bee9-a7e151f2075a",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F15_Linear%20Data%20Structures%20-%20part%206-%20dll%20deletion.pdf?alt=media&token=004368ac-4b54-4dd2-9c4e-6513b6654888",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F16_Stacks.pdf?alt=media&token=20f6d64b-c570-42ed-a635-36b26bcf02b9",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F17_Queues.pdf?alt=media&token=9def7ec5-316c-4948-b47f-52c1b0a1b1f0",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F18_Binary%20Trees.pdf?alt=media&token=0539f2ed-101c-44ee-9fb4-bb4bee1d5726",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F19_Binary%20Search%20Tress.pdf?alt=media&token=45697beb-7cff-47d1-8c5a-a47de62e92dd",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F20_AVL%20Trees.pdf?alt=media&token=79160991-32a8-473a-9b22-1ff95d8ed605",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F21_Heap.pdf?alt=media&token=460c3bae-a63a-4aaa-886c-0ab83b2b5133",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F22_Graphs.pdf?alt=media&token=5bf27755-d1b1-42ae-a36c-9441e71ecbd5",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE202%20DSA%20-%20DATA%20STRUCTURES%20AND%20ALGORITHMS%2FLectures%2F23_Graphs_2.pdf?alt=media&token=eb39ef90-919e-46d0-887f-0d825496c124",
  ];

  final List<String> DSAbookName = [
    "1_Course Overview",
    "2_Data structures and Algorithms in problem solving",
    "3_Introduction to Data Structures",
    "4_Algorithms and analysis - part 1",
    "4_Algorithms and analysis - part 2",
    "5_Linear Data Structures - part 1",
    "6_Algorithms on Data Structures - part 1",
    "7_Algorithms and analysis - part 3",
    "8_Algorithms on Data Structures - part 2",
    "9_Algorithms on Data Structures - part 3",
    "10_Algorithms on Data Structures - part 4",
    "11_Linear Data Structures - part 2 ll traversal",
    "12_Linear Data Structures - part 3 ll insertion",
    "13_Linear Data Structures - part 4 - ll deletion",
    "14_Linear Data Structures - part 5- dll insertion",
    "15_Linear Data Structures - part 6- dll deletion",
    "16_Stacks",
    "17_Queues",
    "18_Binary Trees",
    "19_Binary Search Tress",
    "20_AVL Trees",
    "21_Heap",
    "22_Graphs",
    "23_Graphs_2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: DSAlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: DSAlocation[index],
                        pdfName: DSAbookName[index]),
                  ),
                );
              },
              title: Text(
                DSAbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DSPListViewBuilderLectures extends StatelessWidget {
  final String section;
  final String title;
  DSPListViewBuilderLectures(
      {Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> DSPlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F1.overview.pdf?alt=media&token=21956152-768b-4cf5-9043-f65a220fa853",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F2.elementary%20signals.pdf?alt=media&token=30bf36ea-84ef-4b7a-bbba-5878fbcb03a0",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F3.types%20of%20signals.pdf?alt=media&token=e8fcc46e-de62-4e57-ad31-6125adc271f2",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F4.operations-signals.pdf?alt=media&token=5be94cbe-c249-4dc7-95b1-4c08eea7dca3",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F5.systems.pdf?alt=media&token=1aa6c97b-6619-4b3e-87f5-9e62d5488b25",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F6.convolution%20integral%20%20and%20interconnection%20of%20LTI.pdf?alt=media&token=1603f0b5-d6ab-4de2-bf97-520079c3db5d",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F7.Convolution%20sum%20problems.pdf?alt=media&token=53ddaba7-cd20-48f5-bff4-0322bb04b913",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F7.continuous%20time%20convoultion.pdf?alt=media&token=d92aa058-2fec-436f-90fa-1504643f541a",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F8.Discrete%20time%20Convolution.pdf?alt=media&token=2b16bea2-b47c-4586-b946-fddd91c6cec1",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F8.Discrete%20time%20convolution%20examples.pdf?alt=media&token=07543124-ebc0-4539-a561-0c989dfdfc80",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2F9.%20diferential%20difference%20equation%20problems.pdf?alt=media&token=7afb4dfc-18a0-486d-bede-56f75552cf1e",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%201%2FDE-UNIT1-AUMS.pdf?alt=media&token=c032b7c2-26a5-4492-813d-cce2361ca878",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F1.unit2-introduction.pdf?alt=media&token=1a071b7e-6ab9-4d2f-8944-404fe7e831a0",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F2.Fourier%20series.pdf?alt=media&token=76cad857-1233-4de2-b561-b630b39d13ae",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F3.DTFS%2CCTFS-properties.pdf?alt=media&token=94f72a47-0772-4db8-98ec-27eab7854381",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F4.fourier-analysis-systems.pdf?alt=media&token=30b9d971-c506-4617-8de0-0e7af1d3b99f",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F5.DFT.pdf?alt=media&token=927ce3a2-57f4-4744-be91-f078548b7bb3",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F6.DFT-properties.pdf?alt=media&token=0da1358f-3b81-4429-a1c8-576d99d4dc6d",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%202%2F7.%20linear-filtering-DFT.pdf?alt=media&token=66386291-9d31-4ffa-86b5-3acf2e738f19",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%203%2F1.digital%20filters.pdf?alt=media&token=b7326372-9ef6-48b1-af97-0b0c898401c7",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE204%20SP%20-%20SIGNAL%20PROCESSING%2FUnit%203%2F2.FIR%20fitler-problem.pdf?alt=media&token=8b021627-5797-4815-9a5a-71396675726b",
  ];

  final List<String> DSPbookName = [
    "1.overview",
    "2.elementary signals",
    "3.types of signals.pdf",
    "4.operations-signals.pdf",
    "5.systems",
    "6.convolution integral  and interconnection of LTI",
    "7.continuous time convoultion",
    "7.Convolution sum problems",
    "8.Discrete time convolution examples",
    "8.Discrete time Convolution",
    "9. diferential difference equation problems",
    "DE-UNIT1-AUMS.pdf",
    "1.unit2-introduction",
    "2.Fourier series",
    "3.DTFS,CTFS-properties",
    "4.fourier-analysis-systems",
    "5.DFT",
    "6.DFT-properties",
    "7. linear-filtering-DFT",
    "1.digital filters",
    "2.FIR fitler-problem",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: DSPlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: DSPlocation[index],
                        pdfName: DSPbookName[index]),
                  ),
                );
              },
              title: Text(
                DSPbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MATListViewBuilderLectures extends StatelessWidget {
  final String section;
  final String title;
  MATListViewBuilderLectures(
      {Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> MATlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%201%20_2D.pdf?alt=media&token=0e245ea9-55ba-4c2d-8cd6-6fb5958c04bf",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%202%20_2D.pdf?alt=media&token=a7bb4883-d477-4955-808f-a759602d7de9",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%203_2D%20RP.pdf?alt=media&token=81a66d6c-69d5-40c5-94ab-d765cf922981",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%204_2%20D%20r.v%20problems.pdf?alt=media&token=38b11fa9-08ca-4cc3-b9b6-216e1cae2855",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%205%20RP%20Introduction.pdf?alt=media&token=4b420055-a466-4ec1-ae33-d6fb49eb0136",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%206%20RP.pdf?alt=media&token=380e6045-32f9-43fa-9c91-52d32d1379ad",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%207_Mean%20var%2C%20autocorrelation_RP.pdf?alt=media&token=e6166ce6-f928-411c-8bbd-068251caf652",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%208_%20Problems.pdf?alt=media&token=ffae0122-249c-4962-8130-89166b332708",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%209_of%20RP.pdf?alt=media&token=b21827a2-d46a-47ec-92d5-88f21d40b3dd",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2010_SSS%20and%20WSS.pdf?alt=media&token=8b5a102d-9c45-4382-8ed5-bc9743c97f22",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2011.pdf?alt=media&token=40005d65-f7b3-4488-8050-bc62fc2102d3",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2012%20Problems%20_WSS%20and%20SSS.pdf?alt=media&token=f3a784db-ed9e-4530-999d-144b2b05ea8c",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2013%20Properties%20of%20Autocorrelation.pdf?alt=media&token=bfeb82df-8add-4220-8338-ffb20dd1a340",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2014%20RP.pdf?alt=media&token=d6a423bb-e23d-4a96-beb9-f1c7e254a8c6",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2015%20RP.pdf?alt=media&token=39524dd9-ea74-4f46-ab16-56244e374b73",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2016%20RP%20Problems.pdf?alt=media&token=3e048768-2abe-437b-ad58-d8a7289fabbe",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2017%20Poisson%20Process%20new.pdf?alt=media&token=f578bda6-a41b-4aa1-9a67-cfc3412343c0",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2018_Poisson%20Process%20_Theorems.pdf?alt=media&token=3ea9aa7d-dca6-44c5-9211-3094431c28ff",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2019%20PP%20Problems.pdf?alt=media&token=e470da65-0db9-479e-b947-5a87a2859d3f",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2020%20Ergodicity.pdf?alt=media&token=2687ded0-9c91-48f7-8fc9-3d0433b59018",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2021%20Ergodicity.pdf?alt=media&token=a3974220-e268-4fd1-b5c6-470fae228d56",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2022%20RP_Power%20spectrum.pdf?alt=media&token=d89fc512-089d-406e-8977-8e920342c7e8",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2023_PSD%20Problems_RP.pdf?alt=media&token=e943a557-6573-47e7-a8f4-9cf547505799",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2024_PSD%20problems.pdf?alt=media&token=e8e1d65e-961d-415d-bfbb-d858a3919e38",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2025%20Markov%20Process.pdf?alt=media&token=9e2bff56-3500-4879-9493-4c1e3429ead5",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2026%20MC%20RP.pdf?alt=media&token=73acbede-8a7d-48d3-8a3e-eade9ad6baea",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2027%20RP.pdf?alt=media&token=f4bbc2f2-6253-43e6-8223-1b1c095d2a93",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2028%20MC%20problems.pdf?alt=media&token=f08a6716-226e-469f-b9c2-2a0e0000443f",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2029%20MC%20problems.pdf?alt=media&token=0d3c70ce-2d9f-4dfc-b8e4-085ac1a54120",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19MAT205%20PROBABILITY%20THEORY%20AND%20RANDOM%20PROCESSESS%2FUnit%202%2FLecture%2030%20MC.pdf?alt=media&token=d9f7c386-1b3b-44cc-9da3-6b40f143cc1a",
  ];

  final List<String> MATbookName = [
    "Lecture 1 _2D",
    "Lecture 2 _2D",
    "Lecture 3_2D RP",
    "Lecture 4_2 D r.v problems",
    "Lecture 5 RP Introduction",
    "Lecture 6 RP",
    "Lecture 7_Mean var, autocorrelation_RP",
    "Lecture 8_ Problems",
    "Lecture 9_of RP",
    "Lecture 10_SSS and WSS",
    "Lecture 11",
    "Lecture 12 Problems _WSS and SSS",
    "Lecture 13 Properties of Autocorrelation",
    "Lecture 14 RP",
    "Lecture 15 RP",
    "Lecture 16 RP Problems",
    "Lecture 17 Poisson Process new",
    "Lecture 18_Poisson Process _Theorems",
    "Lecture 19 PP Problems",
    "Lecture 20 Ergodicity",
    "Lecture 21 Ergodicity",
    "Lecture 22 RP_Power spectrum",
    "Lecture 23_PSD Problems_RP",
    "Lecture 24_PSD problems",
    "Lecture 25 Markov Process",
    "Lecture 26 MC RP",
    "Lecture 27 RP",
    "Lecture 28 MC problems",
    "Lecture 29 MC problems",
    "Lecture 30 MC",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: MATlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: MATlocation[index],
                        pdfName: MATbookName[index]),
                  ),
                );
              },
              title: Text(
                MATbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ECMListViewBuilderLectures extends StatelessWidget {
  final String section;
  final String title;
  ECMListViewBuilderLectures(
      {Key? key, required this.section, required this.title})
      : super(key: key);

  final List<String> ECMlocation = [
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F1.Introduction.pdf?alt=media&token=d9715118-3138-41b4-956c-42f929f84a6d",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F2.Introduction.pdf?alt=media&token=9e30e68c-1d22-48c9-a4fc-fac8ea935455",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F3.Mathematicsforfielddescription.pdf?alt=media&token=ece43c3f-8ab0-491b-9aeb-1e35f1ebe161",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F4.CoordinateSystems.pdf?alt=media&token=2df59111-372c-433d-bb27-b0524716e1f0",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F5.CoordinateSystemApplication.pdf?alt=media&token=368d14a1-e02e-4838-a1dc-21f9e961563d",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F6.UnitVectors.pdf?alt=media&token=f8dca596-6ca5-4721-b4fb-3d406ca0f02e",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F7.UnitVectors.pdf?alt=media&token=08d0b822-52a3-4a87-bcef-81bf40c88c44",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F8.VectorConversionBasics.pdf?alt=media&token=ecc2553a-a7ee-42f9-a9a1-21742817944a",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F9.ConversionSpherical.pdf?alt=media&token=4d6ca041-af9d-4b48-9005-5c573e51f9ec",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F10.Numerical_Vector_Conversion.pdf?alt=media&token=8086f901-8220-4140-ab6f-aa0d4677b281",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F11.Vector%20Conversion_Cylindircal_Cartesian.pdf?alt=media&token=cbb6054b-0049-4a76-bcf4-04283bc8fcc8",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F12.Vector%20Conversion_Spherical_Cartesian.pdf?alt=media&token=5a7a4fdb-0928-4101-aee3-bbedafbbbc46",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F13.DelVectorFormation.pdf?alt=media&token=6ce9d530-c211-43eb-8135-b1dea5b00418",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F14.Integration%20Operators.pdf?alt=media&token=5d5362ab-2ca6-4127-88e3-5f35d6a7c22e",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F15.LineIntegralExplanation.pdf?alt=media&token=c9f5e070-0e20-4b07-8f42-f8f920b192e8",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F16.SurfaceIntergral-LineIntegralNumerical.pdf?alt=media&token=5c9c8889-b4ea-4f47-b8fb-61bc2cb07fe3",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F17.SurfaceIntegralNumerical.pdf?alt=media&token=f8160265-95ce-4393-bcf7-25d49c52b2b2",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F18.IntroductionToNumericalTechniques.pdf?alt=media&token=053d5ee0-5383-404f-a0fa-b401939d7b54",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F19.ErrorConvergence.pdf?alt=media&token=4c6fb843-a626-4ac9-aefd-a8799b718563",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F20.Gradient_introduction.pdf?alt=media&token=1b56748e-016a-4b22-a67d-ff59e6830410",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F21.Gradient_Numericals.pdf?alt=media&token=db2237f1-a289-4770-ba8a-da5d8590d9ca",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F22.GradiantNumericalProbelms.pdf?alt=media&token=2790ca12-30e4-4146-899a-fde10016f72c",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F23.NumericalIntegration.pdf?alt=media&token=f663c151-8e11-43ec-901b-dbd2ad7c483f",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F24.NumericalIntegrationcontinued.pdf?alt=media&token=c41118fc-1b5f-4793-b194-db744cdc2ad6",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F25.EMIntroduction.pdf?alt=media&token=94ad2b1f-ece7-4064-a28c-849d775ceded",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F26.FieldsandWaves.pdf?alt=media&token=31fd82c0-e635-47c7-9386-f98315df430b",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F27.Efield.pdf?alt=media&token=9179022d-ecf5-44d2-a1e8-20efffdb9535",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F28.MediaStudies.pdf?alt=media&token=367900ca-7eae-482c-9079-c0bfc55df7b8",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F29.MediaStudies.pdf?alt=media&token=6201b32e-36e1-4437-a34c-21942477c9c0",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F30.EFieldPostulates.pdf?alt=media&token=2697b748-900e-41aa-b8bc-106fa12e5752",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F31.EFieldExpressions.pdf?alt=media&token=07b71c81-7e12-44d8-a29a-a68956729a62",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F32.LineChargeDensityEField.pdf?alt=media&token=d24238f1-79fc-4fbb-a32b-5f0f738d82c2",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F33.EFieldNumerical.pdf?alt=media&token=92f56f7f-0f25-4377-bb5b-21e5f4dfaec1",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F34.EfieldRevision.pdf?alt=media&token=d3d92f5f-990c-4cf8-8b1f-e28cd9b19be3",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F35.MagneticFieldPostulates.pdf?alt=media&token=c462583f-3a39-4968-a69b-0c5fc31a98d3",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F36.MagneticFieldPostulates.pdf?alt=media&token=d58f45c7-9d8e-4541-bd0a-579ee2155d18",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F37.MagneticFieldNumerical.pdf?alt=media&token=967c0a91-50ba-4e66-beff-2f8547133a35",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F38.EMPostulates.pdf?alt=media&token=6cf48d89-a472-41bc-b822-3c0748b22093",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F39.MaxwellEquations.pdf?alt=media&token=74b4895e-de8c-429e-b664-3c5f8e55bb0f",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F40.PlaneWaveEquation.pdf?alt=media&token=b29dea3d-d83a-4d59-9862-324044ca98f5",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F41.NumericalDifferentiation.pdf?alt=media&token=39e3149b-1d17-45ae-a40a-6b743c7fe83c",
    "https://firebasestorage.googleapis.com/v0/b/cceapp-2022.appspot.com/o/assets%2F19CCE203%20CEM%20-%20COMPUTATIONAL%20ELECTROMAGNETICS%2FLectures%2F42.NumericalDifferentiation.pdf?alt=media&token=8ff7bd67-1326-49f2-b899-7dbbf640e0f6",
  ];

  final List<String> ECMbookName = [
    "1.Introduction",
    "2.Introduction",
    "3.Mathematicsforfielddescription",
    "4.CoordinateSystems",
    "5.CoordinateSystemApplication",
    "6.UnitVectors",
    "7.UnitVectors",
    "8.VectorConversionBasics",
    "9.ConversionSpherical",
    "10.Numerical_Vector_Conversion",
    "11.Vector Conversion_Cylindircal_Cartesian",
    "12.Vector Conversion_Spherical_Cartesian",
    "13.DelVectorFormation",
    "14.Integration Operators",
    "15.LineIntegralExplanation",
    "16.SurfaceIntergral-LineIntegralNumerical",
    "17.SurfaceIntegralNumerical",
    "18.IntroductionToNumericalTechniques",
    "19.ErrorConvergence",
    "20.Gradient_introduction",
    "21.Gradient_Numericals",
    "22.GradiantNumericalProbelms",
    "23.NumericalIntegration",
    "24.NumericalIntegrationcontinued",
    "25.EMIntroduction",
    "26.FieldsandWaves",
    "27.Efield",
    "28.MediaStudies",
    "29.MediaStudies",
    "30.EFieldPostulates",
    "31.EFieldExpressions",
    "32.LineChargeDensityEField",
    "33.EFieldNumerical",
    "34.EfieldRevision",
    "35.MagneticFieldPostulates",
    "36.MagneticFieldPostulates",
    "37.MagneticFieldNumerical",
    "38.EMPostulates",
    "39.MaxwellEquations",
    "40.PlaneWaveEquation",
    "41.NumericalDifferentiation",
    "42.NumericalDifferentiation",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 69, 160),
        title: Text(section),
      ),
      body: ListView.separated(
        itemCount: ECMlocation.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 5,
            // Card elevation
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // Card margin
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PDFViewer(
                        pdfPath: ECMlocation[index],
                        pdfName: ECMbookName[index]),
                  ),
                );
              },
              title: Text(
                ECMbookName[index],
                style: const TextStyle(fontSize: 18),
              ),
            ),
          );
        },
      ),
    );
  }
}
