SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `Person` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Person` (`id`, `name`) VALUES
(1, 'Ranjit'),
(2, 'Rakesh'),
(3, 'Dinesh'),
(4, 'Karthik');


CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `age` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `test` (`id`, `age`) VALUES
(1, '12'),
(2, '14');


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    password VARCHAR(255) NOT NULL
);


INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'cardamom', '<p>Unique cardamom and fresh.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>', 29.99, 0.00, 10, 'cardamom.jpg', '2019-03-13 17:55:22'),
(2, 'cloves', '', 14.99, 19.99, 34, 'cloves.jpg', '2019-03-13 18:52:49'),
(3, 'coriander', '', 19.99, 0.00, 23, 'coriander.jpg', '2019-03-13 18:47:56'),
(4, 'pepper', '', 69.99, 0.00, 7, 'pepper.jpg', '2019-03-13 17:42:04');




CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'test', 'chathudusahassara99@gmail.com', '+94772289561', '$2y$10$CWmA88vP.yPOzQg7QNuwTujHHUS9BNvDaLrd3RmnH7Cb4vZOzcze.'),
(2, 'saman', 'chathu@gmail.com', '1234', '$2y$10$qJsrMhAMZhYfMhmCVmf2n.jWA09fgjgSxKIOSXDDmZ7sDH2NVWe6y'),
(3, 'ras', 'bb1307814@gmail.com', '1234', '$2y$10$CDdEM/RG/y/gwJF1z9YDS.5rgrunq6417Hp1p79IHlXx44vyvEIVm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
