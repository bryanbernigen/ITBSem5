-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: blid5cnndai9kyahpm2o-mysql.services.clever-cloud.com
-- Generation Time: Dec 03, 2022 at 01:23 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blid5cnndai9kyahpm2o`
--

-- --------------------------------------------------------

--
-- Table structure for table `loggings`
--

CREATE TABLE `loggings` (
  `logging_id` int NOT NULL,
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `endpoint` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loggings`
--

INSERT INTO `loggings` (`logging_id`, `description`, `ip`, `endpoint`) VALUES
(1280, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1281, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1282, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1283, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1284, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1285, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1286, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1287, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1288, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1289, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1290, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1291, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1292, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1293, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1294, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1295, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1296, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1297, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1298, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1299, 'Accept subscription request from user 5 to penyanyi 9 using laptop bryan', 'laptop bryan', 'acceptSubscription'),
(1300, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1301, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1302, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1303, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1304, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1305, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1306, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1307, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1308, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1309, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1310, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1311, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1312, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1313, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1314, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1315, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1316, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1317, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1318, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1319, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1320, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1321, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1322, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1323, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1324, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1325, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1326, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1327, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1328, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1329, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1330, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1331, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1332, 'Reject subscription request from user 5 to penyanyi 3 using laptop bryan', 'laptop bryan', 'rejectSubscription'),
(1333, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1334, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1335, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1336, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1337, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1338, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1339, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1340, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1341, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1342, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1343, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1344, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1345, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1346, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1347, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1348, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1349, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1350, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1351, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1352, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1353, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1354, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1355, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1356, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1357, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1358, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1359, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1360, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1361, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1362, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1363, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1364, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1365, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1366, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1367, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1368, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1369, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1370, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1371, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1372, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1373, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1374, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1375, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1376, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1377, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1378, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1379, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1380, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1381, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1382, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1383, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1384, 'Check newest subscription status from user 5 to penyanyi 9 using laptop bryan', 'laptop bryan', 'checkStatus'),
(1385, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1386, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1387, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1388, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1389, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1390, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1391, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1392, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1393, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1394, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1395, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1396, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1397, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1398, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1399, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1400, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1401, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1402, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1403, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1404, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1405, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1406, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1407, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1408, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1409, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1410, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1411, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1412, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1413, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1414, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1415, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1416, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1417, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1418, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1419, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1420, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1421, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1422, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1423, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1424, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1425, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1426, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1427, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1428, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1430, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1431, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1432, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1434, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1435, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1436, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1437, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1438, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1439, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1440, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1441, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1442, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1443, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1444, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1445, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1446, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1447, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1448, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1449, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1450, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1451, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1452, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1453, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1454, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1455, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1456, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1457, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1458, 'Get user 0 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1459, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1460, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1461, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1462, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1463, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1464, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1465, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1466, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1467, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1468, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1469, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1471, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1472, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1474, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1475, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1476, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1477, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1478, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1479, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1480, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1481, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1482, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1483, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1484, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1485, 'Reject subscription request from user 12 to penyanyi 8 using laptop bryan', 'laptop bryan', 'rejectSubscription'),
(1486, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1487, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1488, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1489, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1490, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1491, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1492, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1493, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1494, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1495, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1496, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1497, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1498, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1499, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1500, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1501, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1502, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1503, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1504, 'Get subscription list with status PENDING using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1505, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1506, 'Accept subscription request from user 5 to penyanyi 10 using laptop bryan', 'laptop bryan', 'acceptSubscription'),
(1507, 'Get user 5 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList'),
(1508, 'Get user 10 subscription list  using laptop bryan', 'laptop bryan', 'getSubscriptionList');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `creator_id` int DEFAULT NULL,
  `subscriber_id` int DEFAULT NULL,
  `status` enum('PENDING','ACCEPTED','REJECTED','') DEFAULT 'PENDING',
  `image_path` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`creator_id`, `subscriber_id`, `status`, `image_path`) VALUES
(2, 5, 'ACCEPTED', 'image_path'),
(4, 5, 'ACCEPTED', 'image_path'),
(3, 5, 'REJECTED', 'image_path'),
(7, 5, 'ACCEPTED', 'image_path'),
(8, 5, 'PENDING', 'image_path'),
(4, 10, 'ACCEPTED', 'image_path'),
(3, 10, 'PENDING', 'image_path'),
(11, 10, 'PENDING', 'image_path'),
(9, 10, 'PENDING', 'image_path'),
(14, 10, 'PENDING', 'image_path'),
(9, 5, 'ACCEPTED', 'image_path'),
(10, 5, 'ACCEPTED', 'image_path'),
(11, 5, 'PENDING', 'image_path'),
(12, 5, 'PENDING', 'image_path'),
(13, 5, 'PENDING', 'image_path'),
(14, 5, 'PENDING', 'image_path'),
(4, 12, 'PENDING', 'image_path'),
(13, 12, 'PENDING', 'image_path'),
(8, 12, 'REJECTED', 'image_path');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loggings`
--
ALTER TABLE `loggings`
  ADD PRIMARY KEY (`logging_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loggings`
--
ALTER TABLE `loggings`
  MODIFY `logging_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1509;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
