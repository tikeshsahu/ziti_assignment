import 'package:ziti_assignment/class/bhajan_class.dart';
import 'package:ziti_assignment/class/event_class.dart';

List<Event> allEvents = [
  Event(
    title: 'Year 1528: Demolition of temple for mosque',
    description: 'In a chapter etched in the annals of history, the year 1528 witnessed a significant transformation in Ayodhya, where a temple made way for the construction of a mosque, as recounted in the most popular version documented in government gazettes.',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Babri_Masjid.jpg/1200px-Babri_Masjid.jpg',
    isFirst: true,
  ),
  Event(
      title: 'Year 1853: Beginning of dispute and the first petitions',
      description: 'The echoes of religious unrest over the Babri Masjid site in Ayodhya resonated for the first time in 1853. In response to escalating tensions, the British administration took action six years later, installing a partitioning fence at the site.',
      image: "https://feeds.abplive.com/onecms/images/uploaded-images/2024/01/19/b72742ecae6fd89bcd3e03be09e299571705653491044614_original.jpg?impolicy=abp_cdn&imwidth=720"),
  Event(title: "Year 1949: Pivotal moments in the temple's movement", description: 'The year 1949 stands out as a crucial juncture in the trajectory of the Ram Temple movement, witnessing a transformative event that would reverberate through the years.', image: "https://static.toiimg.com/thumb/imgsize-23456,msid-106979694,width-600,resizemode-4/106979694.jpg"),
  Event(
    title: 'Year 1989: Foundation of Ram Temple by VHP',
    description: 'The foundation for the construction of the Ram Temple was ceremoniously laid by the Vishwa Hindu Parishad on the adjacent land to the Babri Masjid. Former VHP Vice President Justice Deoki Nandan Agarwal filed a case.',
    image: 'https://www.vhp.org/static/vhp/public_html/wp-content/uploads/2019/11/Shaurya-Divas-program.jpg',
  ),
  Event(
    title: 'Year 1992: Babri Masjid demolition',
    description: 'The year 1992 marked a seismic event in the Ram Mandir movement with the demolition of Babri Masjid by kar sevaks, triggering political tensions and communal riots across the country, resulting in the loss of at least 2,000 lives.',
    image: 'https://www.aljazeera.com/wp-content/uploads/2017/12/f7feb283624947a3855798ed1b95c391_18.jpeg?resize=770%2C513&quality=80',
  ),
  Event(
    title: 'Year 2003: ASI conducts survey of the disputed site',
    description: 'In 2003, a three-judge bench of the Allahabad High Court issued an order directing the Archaeological Survey of India (ASI) to excavate the disputed site and ascertain whether it had served as a temple in the past.',
    image: 'https://www.latestlaws.com/media/2022/05/gyanvapi-masjid-0-1652793256.jpg',
  ),
  Event(
    title: 'Year 2011: Legal battle reaches Supreme Court',
    description: 'The protracted legal saga surrounding the disputed Ayodhya site continued in 2011 as all three parties -- Nirmohi Akhara, Ram Lalla Virajman, and the Sunni Waqf Board -- approached the Supreme Court, challenging the Allahabad High Court verdict.',
    image: 'https://static.toiimg.com/thumb/msid-97606013,width-1280,height-720,resizemode-4/97606013.jpg',
  ),
  Event(
    title: 'Year 2019: Supreme Court renders historic verdict',
    description: 'A momentous chapter in the Ayodhya dispute unfolded in 2019 when the Supreme Court, led by then Chief Justice of India Ranjan Gogoi, delivered a landmark judgment. The five-judge bench ruled in favour of Ram Lalla.',
    image: 'https://www.livelaw.in/h-upload/2019/11/09/750x450_366410-ayodhya-verdict-live.webp',
  ),
  Event(
    title: 'Year 2024: Consecration Ceremony marks a sacred occasion',
    description: "A sacred event is scheduled to unfold in Ayodhya on January 22, 2024. This momentous occasion will witness the consecration ceremony (Pran Pratishtha) of Ram Lalla, further cementing the spiritual and cultural significance of the Ram Temple.",
    image: 'https://statichindi.theprint.in/wp-content/uploads/2024/01/Copy-of-pic-79.png?compress=true&quality=80&w=376&dpr=2.6',
    isLast: true,
  ),
];

List<Bhajan> allBhajans = [
  Bhajan(
    title: "Ram Ayenge",
    artist: "Vishal Mishra",
    image: "https://c.saavncdn.com/226/Ram-Aaye-Hai-Ayodhya-Hindi-2022-20221025013106-500x500.jpg",
    audio: "audio/ram_ayenge.mp3",
  ),
  Bhajan(
    title: "Angana Sajaungi",
    artist: "Shruti Mishra",
    image: "https://images.genius.com/ac7cb6db7781bd7ec7d66a313b4456bc.1000x1000x1.png",
    audio: "audio/angna.mp3",
  ),
  Bhajan(
    title: "Kijo Keshri Ke Lal",
    artist: "Shree ji Maharaj",
    image: "https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/b2/9d/dc/b29ddccd-13ef-58de-2103-f56c0914230e/cover.jpg/1200x1200bf-60.jpg",
    audio: "audio/kesari.mp3",
  )
];
