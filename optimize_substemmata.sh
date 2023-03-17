#!/bin/bash

array=(A P72 P74 P78 01 02 03 04 018 020 025 044 049 056 0142 0251 0316 1 3 5 6 8a 18 33 35 38 42 43 51 57 61 62 69 76 81 82 88 90a 90b 93 94 97 101 102 103 104 105 110 131 133 141 142 149 172 175 177 180 181 189 201 203 204 205 205abs 206S 209 216 218 221 223 226 234 241 242 250 252 254 256 263 296 302 307 308 309 312 314 319 321 322 323 325 326 327 328 330 337 363 367 378 383 384 385 386 390 393 394 398 400 404 421 424 425 429 431 432 436 440 442 444 450 451 452 453 454 456 457 458 459 460 462 465 466 467 468 469 479 483 489 491 496 506 517 522 547 582 592 601 602 603 604 605 606 607 608 610 613 614 615 616 617 618 619 620 621 622 623 625 627 628 629 630 631 632 633 634 635 636 637 638 639 641 642 656 664 665 676 680 699 712 720 757 796 801 808 823 824 832 876 901 910 912 913 914 915 917 918 919 920 921 922 927 928 935 941 945 959 986 996 997 999 1003 1022 1040 1058 1066 1067 1069 1070 1072 1075 1094 1099 1100 1101 1102 1103 1104 1105 1106 1107 1115 1127 1149 1161 1162 1175 1240 1241 1242 1243 1244 1245 1247 1248 1249 1250 1251 1270 1277 1292 1297 1311 1315 1319 1352 1354 1359 1360 1367 1384 1390 1398 1400 1404 1405 1409 1424 1425 1448 1482 1490 1495 1501 1503 1505 1508 1509 1521 1523 1524 1548 1563 1573 1594 1595 1597 1598 1599 1609 1610 1611 1617 1618 1619 1622 1626 1628 1636 1637 1642 1643 1646 1649 1652 1656 1661 1668 1673 1678 1702 1704 1717 1718 1719 1720 1721 1722 1723 1724 1725 1726 1727 1728 1729 1730 1731 1732 1733 1734 1735 1736 1737 1738 1739 1740 1741 1742 1743 1744 1745 1746 1747 1748 1749 1750 1751 1752 1753 1754 1757 1760 1761 1762 1763 1765 1766 1767 1768 1769 1780 1795 1799 1827 1828 1829 1830 1831 1831S 1832 1834 1835 1836 1837 1838 1839 1840 1841 1842 1843 1844 1845 1846 1847 1849 1850 1851 1852 1853 1854 1855 1856 1857 1858 1859 1860 1861 1862 1863 1864 1865 1867 1868 1869 1870 1871 1872 1873 1874 1875 1876 1877 1880 1881 1882 1885 1886 1888 1889 1890 1891 1892 1893 1894 1895 1896 1897 1899 1902 1903 2080 2085 2086 2125 2127 2131 2138 2143 2147 2180 2186 2191 2194 2197 2200 2201 2218 2221 2242 2243 2255 2261 2279 2288 2289 2298 2318 2344 2352 2356 2374 2378 2400 2401 2404 2412 2423 2431 2466 2473 2475 2483 2484 2492 2494 2495 2501 2502 2508 2511 2516 2523 2527 2541 2544 2554 2558 2587 2625 2626 2627 2652 2653 2674 2675 2691 2696 2704 2705 2712 2716 2718 2723 2736 2746 2774 2776 2777 2805 2815 2816 2818 2822 L6 L62 L145 L147 L156 L162 L164 L241 L422 L427 L427_2 L585 L585_2 L591 L593 L596 L603 L604 L606 L608 L617 L623 L740 L809 L840 L884 L921 L938 L1141 L1178 L1196 L1196_2 L1279 L1281 L1281_2 L1440 L1441 L1505 L1818 L2024 L2087 L2106 NA28 RP)
command=./optimize_substemmata
database=cache.db
#To define an upper bound of costs, add -b and the bouding limit after the cache variable.

for i in ${array[@]}
do

    $command -f csv -o /Users/nicholaslamme/Public/open-cbgm-standalone/build/bin/substemmata/$i.csv $database $i

done
cd /Users/nicholaslamme/Public/open-cbgm-standalone/build/bin/substemmata/
cat *.csv > z-substemmata.csv
done