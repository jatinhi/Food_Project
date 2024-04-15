-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 03:35 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbackdb`
--

CREATE TABLE `feedbackdb` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cno` varchar(50) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbackdb`
--

INSERT INTO `feedbackdb` (`id`, `name`, `email`, `cno`, `comment`) VALUES
(1, 'jayesh', 'hiranij64@gmail.com', '9687489898', 'cbajshchvcshuavu'),
(2, 'Ankita', 'ankita@gmail.com', '9687489898', 'cwhjhckjdwckjodwg');

-- --------------------------------------------------------

--
-- Table structure for table `singup`
--

CREATE TABLE `singup` (
  `id` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cnfpassword` varchar(10) NOT NULL,
  `roll` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `singup`
--

INSERT INTO `singup` (`id`, `username`, `email`, `password`, `cnfpassword`, `roll`) VALUES
(1, 'jayesh', 'jayesh@gmail.com', 'jayesh12', 'jayesh12', 'admin'),
(2, 'chirag', 'chirag@gmail.com', 'chirag12', 'chirag12', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `uploadproduct`
--

CREATE TABLE `uploadproduct` (
  `image` longblob NOT NULL,
  `productname` varchar(50) NOT NULL,
  `productprice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uploadproduct`
--

INSERT INTO `uploadproduct` (`image`, `productname`, `productprice`) VALUES
('', '', ''),
('', '', ''),
(0xffd8ffe000104a46494600010100000100010000ffdb008400090607080706090807080a0a090b0d160f0d0c0c0d1b14151016201d2222201d1f1f2428342c242631271f1f2d3d2d3135373a3a3a232b3f443f384334393a37010a0a0a0d0c0d1a0f0f1a37251f253737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737ffc0001108009400e403012200021101031101ffc4001c0000000701010000000000000000000000000102030405060708ffc4003c1000020103030105060404050403000000010203000411051221310613415161223242718191141523a107b1d1f0335262c1e12472d2f1165383ffc400190100030101010000000000000000000000000102030405ffc400281100020201040201030501000000000000000102110304122131134151051432226171a1c191ffda000c03010002110311003f00e2214d1114f6da49148b1a3454b228b140509a14ac50c502a13428f14314c54150a3c516280a050c51d2917730140e84853e5429f0d8e17a520a927a727c2906d1217233493d6a405c0db4d32d03a1b231460706944679a505ca9f96680a1aa14bc51e280a118a0697c507c16e06280a1ba14bdb43140a8450a51a2a0282a2a51a2a6485428e8a80276290c29fdb4965a46b44622924734f91482b40508c71408a702d0db4050d6da2c53e538a4eca0286b147b69ddbe9461680a1a0b4a8473eb4b2b8f4a720b59e48cc90c32ba838de884807e605163a111c0cfca8da33d4d3920588f3ef559c7d9ced04e876e9d72550072366de3e5e34f2f65f5cb8b97823d326de83243155f0e9924027d3ad4ee5f21b5944a77124d118f9e7a55dcfd96d72d503cda5ce148ce570d81eb83c7d6a0de58dddac4925c5a4f0a1504349190083d0e68dc9f414c842353919fda8b21415f1e94ac630de144e99e40a762a12178a1814eaa7143bbe6a6c2868a0f0a2d9cd48eee94634dbc939a2c7446d9436549d9ecd24a7b24f95162a2215e68639a7b6d20ad558a8688a2c53845248a762a138a14ac50a2c28b5db48643e55242d0299148d082eb490b528a0c9cd00807852b0a22e08a5e39f740a759467a52b68ddc8a2c74472be34452a51001e28bbacf4a76046518ce6b6da07f0e6feff007fe6720d3ce0158c957761e2700f1d40f99abffe1b7626364b5d6b5588169589b581c71b47c647893e1ff3c743bb31c31dc4d7880439c22e09078279e79358ce6fd1518a31d6bd8becfe9a60b8fc2b493a20dad2b13bdf8e4e72bbb3d303033e356b2dbb5a2a25c5cc56a5d0b25a46551bd3923824f3f7a6752bf8636dcf9927ba18507d94880381923938e4fd8550dd594da84ccb23a80013bf77b2718ce3efe55c939b674c2290fdcea1319cef555950ed5c91850478e0939e739c9a17133416bf8475ef0876908e0a9cf4208c31fbff002a5694b746fe292fa637512aed0240323c854f9eca7659b7b095b68113c80964f1c67c475ae7766e9a204131578c47990b84611dbb322abf39054fa7971f7a7a6916e4b46c8cb1c7975dd295df8f31c8ddc55b0b28ee638a336f1a47bb217a80d8eb9ebf2a55e593cc88666676076ee279e4f89a972945703a837c999bad2b4a91ee6f9b454956625019406ffbba721ba61baf5e6a9eebb0504d1bfe5ad7104ae43224c55e20083ec861839e9d7eb5bb8ac5e349951c8317bfce300d2a1d31d9268644f6b8254f0081e9e3f3ad31e7c912678b1c91c4b52d1f51d2d946a1672c08e484761ecb7c8d4411e7a5776b9d33f136ef6d3c4925bca8d1b06e58e46073f5183e95cd3b53d929f4726ee0732d9f19cf2f1e78e71d47afdfcebb316a233e1f6724f0b8f2ba3321542631cf9d27bac9c1a7d5770271d28d1091935ad99d0c18c2ae0afd69beefc6a6b2ae3ad34cb4d0a886529b64a965453722d5592d111d79a4e29e6148c55592d08c515398f4a1458a8b755a56314ea8a0568342332f34929524a5259450511c266887be7229ec60f148913dac83cd030e455c022acbb23a67e73da5b0d39d5cc52c84ca1064ec5058fdc0c7d6abd4ab6056d7f856d6567acddde4b7091df47095b58ddb01b39cfcce42f14a4e9589a3a8eab709a7c8017d854b185223eeaf0327ea38f2fad535eea29776a6cb538dad228d70245dcc73d3da51d7a75351351bd63a9bddb45733caf188d0326148e7767c7d463155d7daa5e2adc4fde2b4cca048a633b4003238f03f3af3dea53748e9869db42b571f8b996e1a32b0ca0f767cc0e0fef9a6638f2e83392a4907e78cff002159bbad76f8edef3bf24ae515871cff0094f43c11f7ab486eafa0b557bcb49801ed2ab70707158e4c8e2b9474ad3b5ecbfb681c9183e39e95656575b9d9275c03d3cb81802b12dda49e38d9d2d26db8c0c0cfef509bb537f18cfe0dc1ff005e3fad28f91fa0f0b3aa41fa6eb270d095e9fe53e62a59d92346e8c9b01f6c1f1f4ae5363db6be702de55b68c3b01faa4f1f6e95a4b2d6b538e168cda24802e50a3f19f03c8a73c91c5f9704fdbcdb36696f048cc36ae6450a5875c67a7ad4c7b449861fda07a1cfef5cf6e7b537b0602e932b127858e419e94ad33f8876eb726d9e2994027aafba7cbceae1252575c12f064f46f8d926e5523a0e0b7c5fdffb555ded8a34722cb1ab2b02acac32181e0e69db0ed4d94cc76cc1d0f00e31b7e752daf6c6eb21655cf5033438e39fe2f921f971fe68e0bda8d19b45d59ed14b181807819b9dc9f3f43fed55e186c083a8eb5d57f8a5a38b8d016fe3e25b3901ce3aa37b247dc83f4f5ae54a9819c8aee8731e4e57d8a11a6dc91cd32ea7caa50859941519146f183ce7e74c0afd9c6690e9535d004e2a3b8e6989a214ab8a640cd4b99462a380338ab204eda14e85c50a045a0e297d714c87a516e299429f86a41c1eb437798a2386141682651f0939a290639c51648e0d1b1a0635ee78669ce248b91f7a22463a5261591a648e1479249182a222966627a0007527ca81132db52bfb1311b5bdb88847eea895b68f4dbd315dcb40ed16977dd96b0fd65174f0a09dbbb2077981bf9f2ce704d730ec8762ef756d6561d5619acada25ef5d9d012d8f8429ea4fa8ad3f6d16ff004989a282dc4b60dfa88c1bdac1f81b1cf15c99e7b2b6a46f82319cd472369155d98b6d36dee3552195ae5d911377276312588fdaa6eaf7f6f2cf0db4c4b2bbf393f08f3fa5737bbd56e04dff004f1fe1e5ce19d091fca8adae16e67125ecf75e4d72cc48cfcab9a5a473c8b2cdf0bd1dd973c21371c7c9d1b54fc0dd6e542a918c600f4e3159fbd8e166da98c678e29365a868f1ae1a69a57f57ebebd6a5dc5d680632ae2e966560303a7de93c9fab88b3bb1fd456387466f5185406c7878f956fbb21af5bc9a6c4ac7f5b8539f3fef35ce3b476f29ba1f9743726dc7c5cb06f5e079547d36d754405a249a353d4e71f7aad56921a9c34dd1c19bea1bf25a81d1fb6b6cd77da5b778965d8b6eac5d382324e707c38f1a9afa7e9f1056b6d1e05da3fc4627763cf07159b8750d494017524dddec5dbed6724789f4f4abdecf4171aa3bdb5e6f9fbb0aacc64236b7af1c8c1e95cf8e5e2c7b2fa2feeb85c743cba459e55e2548d87bad1b60fed54979da39b4abf785610ef0b0024ef1831f1eb5d06e3b1b6ff00ab3924315f7518a8fb5720ed2285d72e15278a78c1015e36c823038cf98e868d262df36e7c95acd5ac98528f65bea9db0bfd6348934db986011bedcbf25861830ebea05675951768ceec72690b832673818a32029c8af56292e11e3be490b7202ed8c05e29a8c190b64d36832d9a908016c83e14e843322b027c80a8cf835265380735136e49a684c6a61815101f6ea4cc4815110e5eac81feb428b3429012d4d2f22918c51e3cfa5514870631d451023ce88e3c2918e7a5030d9817a362078d161778a26033d281845866b61fc31b25b9d62eae823b4b696e4c4a8704bb82a3ed9358d61cd6c3f87faa2e9bf8b8f66e92e59113237282031ced3fbfa5297e238ab68e993de5a597671aee1330b8b85dd1a4a1b72b31e4b7f4ac8ea37612d60fc34f319fba3df336583367c8f855fcb33dd68b15fb3c5289037b41811ef9c6dc704573cd7f5d4595adb4d5dc4f594a90b8f31e75e62b9cda48e8db459da9964b29e59aced44e0158da23b99dcf45eec0ebe3d4563e4d4ae2da23682dadfb9690ee529f17af3d6ae65d59b521043222c7dc2622451ecee3c1ebd49f3a5fe06d2e2da1785d45c072db64f23e231c790aeb86351ed1af8e528f667e4b5bab80ac24b7833d46cda14e33c9a7946a7a65d0b7633adc6cc85eec36e6ea31c74c106b5115a2d8edb97c3460821bd9231c73f2cd4bd534f875182e2ead67daeaa8ea18ff0085d011c1e3cfe469b92e9a2bed1d5a66623ed16b86097132f750e3bc6488020534bda2d5449bdee231b707bb78c6d7fefce9cbabbb692f8c9b9edae76af28328c7e2e079f1f5abd8ac237d3ac5224b7bbb69e60d2eeda2656c91b7d3c4e7e9438c12e519c704a5d1aeecec961af69cb1de4296b79245bfbb1c865f0753f3f0ab1d2ac7f2d2c5597f5586f2063247193f41581ed73dde8d368b6566d2c66d11a5dc718c31c751d385e456c7b39aeaeb7a72f44ba88fb408e0fcabcfd462d8ae3d0f6be51b8d457668b73227f8a909f74e79c715cbd3b3f6d221818ac97287832ae1141e7a0e4f18e79e41ad2ea3a835bc70c26e444d29deca47250787dc7ed59c4d49def66efd255ef07b2c5700c7838c7c8e6b7c792e3baa8d34d8a9b4dd994ed7e97069b34135aef58a65f697c33e18f9e335400e470735b6ed7dc2fe4924189995fbb6572bec8f6f95cf81c62b111b2a1e457541da38f3a519d216a48346bb81eb40306271d7ca9c8c8193d4f955190cdc33633834c2b73cd4a972c7dae3d2a211ed1c534c4c6e7e950d57daa9d2038e951f661aaac861628e978a2a02890d200792a3eb40c8a4637afdebd2d6fa56989c43630671e110e05485b0b090645a5bed1c16d831f4ac966b35db479883281ef0ebe7446450c7db5fbd7a75b4fb0002fe0adf8f7014049f5343f2fb041cdadb8fff0031cd1e61d1e610c85b3bd7ef4acc793ed8e3d6bd3cb61621971670e4745283af99a06c6d240ca2da1da0fb6c63183e828f308f2eb32e7df5fb8ab2d22eed51dadef6431dbcaa477a8bb9a362300e3e2182463d73e15e89bdb7d36d6d9ae66b2b731af41dca9c0e99354a9f91c90349f925bca4b6c2ab023156f020f97d2b9b37d431e27b640dd190bdd375dbcd05ec61b3bf6b2d9bade558026ef352abc807d4023d735cdf558e7d32f1ed27ef59622554cabb59707fbeb5e948f5e61a64d37709fa409c2b563b5b92d6f925bc0f908634f6d3daf6b3ce7e9fbd4e2d769dd6c7d8bc927d9c722d5208edd53702c49cb75e3c29cfcd14c91cb148bb94e40e98aeaad616b74c998e2d9eb18e94faf67346bc9dd4da5ab3a0e408c022ba5678375ecb5a8923954fabb9b58d59df0400cac7803c0d47b6d6e5b7725670c8460a1e07f435d5e5ec468251f3a7419f3dbff34d5d760740eed3161106271919155ba0bb3496af2b69a38dcd7e5af1a4c2952d93b7c0fa5682cef8dbed999d93bb8f3bd4020647f435b697b0bd9f494c66011bed38cb915696dfc37d0e53b5ede42847ff006b74f0a37e2cbfa4587533c6db3057b771eb76b6c437fd50722494b11b53c179e9ff0026aa8ea33585fb4ba64cfb6327695e79ff007e6baec7fc26ece3ab18d2e2323ca76e6a1bff0009347121d8f38f0c998fdeabc6aa9f412d5eefe4c87ff3a8f76dbdb759ae2361b6738c7079e3031c78734c376e6da6bc89df4f58a20483b5ba0cf80f01d2b417bfc3bd22c659a278ae2e4390b1b24a46c1e39fad5347d9ff00c36bad6e2c2d93bb03bb95536a953f163c4f5fa8ae296ab041b87b44ad54a2d50eebf77f9b69325cd90dc9b58ce8176ecc6319e79239358b520fc4319aee7a4693a758450a2aa77408ef14ae430f2c78d5ed8e996172f33a6976b02fbc83ba0770f5ae7d17d4639ed25ec99e5df2b679d919236cee53c74cd1a4ea0b37183eb5e8efcaed2371ddda408de2a5060d21b4fb4f0b68e307aab46083f23e15def33f80da99e739caec56dded9f86a3e70d9c1af48b5842b8c44981f0b28e3e46922ce0390d1a8f4602a7cefe07e3479c58ab445b38c1a6f6e790a4fc857a44d840063bb451e5b41149fc2c0a71dda28f22063ef4fcefe03c48f3690d9f75bed475e8f6d3adc927ba1f60685579ff006178d7c965de24ead9252dc1e78c16f99a70ceaa571804fb89e00799aae33ef2320b30f7621d07a9a20cb03927325c3f393e152059bbac4492c5a43e1495c070cc77ca7a03d16a0a486362a41329e4e467140feba98e376dae7db90f05bd07a52027ac8b28758e4053e2933d4fa51b15281533dd0f2f1a83118641dcdb28314636961e3f5a951277f80b90a0f1c714bb0439b55d1ccd9d87cfcbcaaaed2dae21b7bfb8bf917bcc9ee228f0155470391e7eb56a177c802329453ce3cea1f6844b158492afba00dd8f0c1ce7ed5864c506f7495d06ddce8c7221b5be91961926924621a14276c84f1838e31c1eb555a8c60c92452dbc968afef26e72a79f21d31c10479791ab01aa42f878e40cac3a839e39a9b15c5add46237dac0f23fa8af3f263a96e89a4f4cdf4cc34f36ac96d2c169726359a6e362fb88a07009e4939f1f2a9f7773add86991ea96522adec2bdddd8280ac8bf0b11f706b60f6d612151b4000f18aa5d734692fee9077d1fe113958d4e327fd5e75aac92dca5c71fb132d3d42976672d3b6fda39606fc6da5a856180db5949f1e2af74ded44b76aa9a8bc7672eddd1e32d1b1f22dc62a6e99d97b083bc9eebf5a694ee63e19f97954c92cf4cb7b778e487711ee8c5699b5524ad23378671445b5d56daf2fed2290466e763b4891be76e08c1f5cff00b5684decd6f6771750c2cd1dbae5d59b1c790f5ae710e9b34f7937e153649bb2af83ecd6fd649e1ecbcd6937ebcc502b487ab7867e75e6bac599654ccd432761da76a9e78b36a130c3055f72943f4183f7a8d73ae5d33ca3be48d230096ce38cf3f2a9ba7767e0366b2c8cc303dd5c7ef50352ecbb6a12bc6929581d76b0e7906bade4d56682be13ff00a68a0d91d6f85ac134b212401b76b31f7b3c0a9eb1e9f377571730194aa603292081f4a85a9e86d65a12417573def71f19eadfe5cf9e3a5567667bcbdd3b5255970205c447c0367a579d3d1cd3dd7cff0085785edb36ba6059ddff00076d1fb23acedd7e951f4fd62f93b432e9f78a22629ec46106091e20d1f67af92da12e0acc7684dde3c7f7fb55a7e696e66ef1ad312edc77981903cb35dfa1846589493a7642849f344a33a3e54b73e469a65620f76d81e59e2a3cdaa59b0fd5503d41a8a758b7461b0874f1f681c57a72973cb355124b16572092bc75f84d24fb246ee33e5c8fb5246ad6570bcb80de45b8a279a25198db6fa678a86bd961b31523961eabcafd689b8f689e0fc487834c7e610ab7eae633e05795fa8a5fe260d9bd5c0cfc4a720ff5a9ec62bd83d187f2fda8a9a6b839ff000e361e0dbb19a145b0222ddb6765bf249e5f14b0fb33870cf9f6e43e1558d748b0e4b98e2f163ef3fa50599ae1b74cdb211eec79c1f9935d6cccb684bc8085c2c1fea1cbfa9a777cb723b889f6c7f138ea7d0553b5f89488e163b07bc478e3fda9f96f0f70d0dab7b4c30c73d0790a4059abaccdf84b77eed13972a3dfe7cfcb353dc855ee636fd42bed1ff28ff9aa586f4595a866f780f657ccd396d78eeffa8e588e58e3c7ca8b48545fdac42289417e0741fd69176d25c44c9dd472c520c15723047cb155b2ea6a098cb85f02411f6a762d44338048cf871d054b9216d7d94ba8f6074dbb669e357b697c5e0959413e78e958ebaec3eb904ee2c352768932419d41e3e95d32e3540988d18296f414f417f1aa04ca9c7ee6a6d745db48e47f93f6cad3236dacb8f0590827f6a279fb576d1e66d2b771f03835d8daea26eac99f0e3350af2e219b31a2464f8f4c54b87f052c8ce483b41af6e08348b823c40233fce8eef53d70ec27479cab751919535d63f0b6863cf74a091ce0540934ab79036c5603c06f27f9d66e093e97f656fbf66034bd535adf8fc96e89ff00bd00fddab4716a7ae2a8d9a1caa0f52d3c5ff95593e871b0248039f67c71512fada58d3bab59082dc360e703d2b19415db8a344ef8026afad3bb4696b66bb896c4974411c0e0ed534e4371af77a55e7d3e25c11fa61e439fdaab61b096ddd9d54e18fc4327ef532069e163b90918c01b464faf4a9b6fd14d2444d574fd435582549f5c68e3e4110c1b7f99351742d160d22228b77712a1605b7907f615637776c09dabb5aaaa6bc9d0125ba73c0c62b44ed5115cd9a21347147b63450bd06de3f6a8d348770d931007c209aa2fcd0347cc9938c960bfd29897536182243c8c8c75c7d450b18596fdf3ac8c372edeb92e7ff54dc97c0128f2027c083c8fef8aac1a8aba8e180a8f318a652b9c29e9ce2af6b15a2cee26321e0658f91c135156e2e2d53f4249002790cd902abc19178490e3d7a7f2a43dd157559370ff00563229a8316e45d26aaf27b3312a7c9bc7eb4466b888b4b6f29463d70dc1f98aacc349c17dcbe839a5169a2c189bbc8fc411c8a7b45658aeb576146e439f43455085dc2c3707033e793428dac2d1292e25b9d525495b2b10f6079539a9cafec286201e4e3c6850ae932048ef1da16476539c706a4d948e14618f3c50a150cbf415e5ccadaa2216f6513205585b5ccbf840c1b07cfe94542a5f60ba19b4264cc6e4b0dfbb27ae73567de36ec8e0e71f4142854b02b92e6579cbb364e4d584533f76a78a14290d8f5c3b7e1d98120838e0d47b491d80258f342855308f44e5b891a4085b8a5f7d26786c50a1524b22de5fdc236d56007ca9a13bf71defb25fcc8a3a1513348097ba91738dbd4f85466bf9c2920afda850a74a86db20dd6a33ab7c2727c47a5564d7f39ddcafda8a85672e194ba198b39dd939351ee4e4ae7ce850ab880e4712904f3d474a44a4a4a31c81d01a142b4f466c5c92bed1cf5351279199b071d6850aa250def20e06053a67900041e7a50a1409f63724bed676af3e942850aa19ffd9, 'burgers ', '120');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbackdb`
--
ALTER TABLE `feedbackdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singup`
--
ALTER TABLE `singup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbackdb`
--
ALTER TABLE `feedbackdb`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `singup`
--
ALTER TABLE `singup`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
