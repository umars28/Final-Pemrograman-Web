-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2021 at 03:30 AM
-- Server version: 5.7.32
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'Perusahaan kami adalah perusahaan yang bergerak dalam bidang jasa khususnya jasa laundry.', '2021-11-27 18:23:23', '2021-11-27 18:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_account`, `account_name`, `account_number`, `created_at`, `updated_at`) VALUES
(1, 'BNI', 'UMAR SABIRIN', '0838094683', NULL, NULL),
(2, 'BRI', 'UMAR SABIRIN', '083809468313412', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `contact_number`, `email`, `facebook`, `twitter`, `instagram`, `whatsapp`, `created_at`, `updated_at`) VALUES
(1, '085341770639', 'umarsabirin369@gmail.com', 'umarc.speedy.1', 'umar_s28', 'umar_s28', '085341770639', '2021-11-27 18:23:23', '2021-11-27 18:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `email`, `name`, `username`, `phone_number`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 'customer1@gmail.com', 'customer 1', 'customer1', '085341770633', '$2y$10$HoAXOjX5nJ9aqhbMwrdRz.j4GsixIgrHfzDrYA4Diibli.VFOvuxS', 'makassar', NULL, NULL),
(2, 'customer2@gmail.com', 'customer 2', 'customer2', '085341770633', '$2y$10$RGg0vTrrtfZHCzmGDaiebu.40x.feCtw6RMZUzqBSWHzq5abMJ2X6', 'makassar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawans`
--

CREATE TABLE `karyawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawans`
--

INSERT INTO `karyawans` (`id`, `email`, `name`, `phone_number`, `address`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'karyawan1@gmail.com', 'karyawan 1', '085341770637', 'makassar', 'karyawan1', '$2y$10$3iRlZlN7MJmNpBUh93BBTujnuOcdeq55uNbRpgF1.NwIW23ngMx7q', NULL, NULL),
(2, 'karyawan2@gmail.com', 'karyawan 2', '085341770638', 'makassar', 'karyawan2', '$2y$10$P/6QhCgYd2yLRIQQSYDHSuqUd0Evjp/T9xwaaaveI1hFhTmWH32wG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2020_07_17_102830_create_payment_methods_table', 1),
(25, '2020_07_17_105326_create_pakets_table', 1),
(26, '2020_07_17_110414_create_payment_statuses_table', 1),
(27, '2020_07_17_113055_create_status_pesanans_table', 1),
(28, '2020_07_17_113156_create_customers_table', 1),
(29, '2020_07_17_113401_create_bank_accounts_table', 1),
(30, '2020_07_17_113833_create_payment_confirmations_table', 1),
(31, '2020_07_17_115117_create_transactions_table', 1),
(32, '2020_07_20_090756_alter_table_add_column_customers_table', 1),
(33, '2020_07_21_033958_create_abouts_table', 1),
(34, '2020_07_21_034152_create_contact_us_table', 1),
(35, '2020_07_22_073624_alter_table_add_column_payment_statuses', 1),
(36, '2020_07_22_073914_alter_table_add_column_status_pesanan', 1),
(37, '2020_07_22_091202_alter_table_add_column_payment_transactions', 1),
(38, '2020_07_23_105543_alter_table_add_column_payment_confirmations_table', 1),
(39, '2020_07_24_053918_create_site_settings_table', 1),
(40, '2020_07_25_130403_create_karyawans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_kg` int(11) NOT NULL,
  `price_satuan` int(11) NOT NULL,
  `is_promo` tinyint(1) NOT NULL,
  `promo_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `type`, `description`, `price_kg`, `price_satuan`, `is_promo`, `promo_name`, `promo_code`, `promo_price`, `created_at`, `updated_at`) VALUES
(1, 'Antar Jemput', 'Paket ini ada penambahan servis antar jemput dengan jarak maksimal 2 km', 20000, 4000, 1, 'promoakhirtahun', '2onudu3', 3000, '2021-11-27 18:23:23', '2021-11-27 18:23:23'),
(2, 'Biasa + Setrika', 'Paket ini seperti paket biasa namun paket ini terdapat servis seperti setrika dan parfum', 12000, 2000, 0, NULL, NULL, NULL, '2021-11-27 18:23:23', '2021-11-27 18:23:23'),
(3, 'Biasa', 'Paket ini meliputi beberapa servis seperti cuci,jemur dan lipat', 9000, 1000, 0, NULL, NULL, NULL, '2021-11-27 18:23:23', '2021-11-27 18:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_confirmations`
--

CREATE TABLE `payment_confirmations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method`, `created_at`, `updated_at`) VALUES
(1, 'TRANSFER', NULL, NULL),
(2, 'COD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'waiting confirmation', '1', NULL, NULL),
(2, 'unpaid', '2', NULL, NULL),
(3, 'paid', '3', NULL, NULL),
(4, 'cancelled', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'MAIN_CONTENT_TITLE', 'Selamat Datang', NULL, NULL),
(2, 'MAIN_CONTENT_DESCRIPTION', 'Dtech Laundy', NULL, NULL),
(3, 'MAIN_CONTENT_BACKGROUND', 'home-bg.jpg', NULL, NULL),
(4, 'IMAGE_LOGO', 'logo-sm.png', NULL, NULL),
(5, 'IMAGE_PAVICON', 'logo-sm.png', NULL, NULL),
(6, 'COMPANY_NAME', 'Dtech', NULL, NULL),
(7, 'COMPANY_ADDRESS', 'Makassar', NULL, NULL),
(8, 'COMPANY_STREET', 'Jalan Adhyaksa 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_pesanans`
--

CREATE TABLE `status_pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_pesanans`
--

INSERT INTO `status_pesanans` (`id`, `status`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 'waiting confirmation', '1', NULL, NULL),
(2, 'diantar', '2', NULL, NULL),
(3, 'dicuci', '3', NULL, NULL),
(4, 'dijemur', '4', NULL, NULL),
(5, 'dilipat', '5', NULL, NULL),
(6, 'dijemput', '6', NULL, NULL),
(7, 'selesai', '7', NULL, NULL),
(8, 'cancelled', '8', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_total` int(11) NOT NULL,
  `total_berat` int(11) DEFAULT NULL,
  `total_satuan` int(11) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` bigint(20) UNSIGNED NOT NULL,
  `statusPesanan_id` bigint(20) UNSIGNED NOT NULL,
  `paymentStatus_id` bigint(20) UNSIGNED NOT NULL,
  `paymentMethod_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Admin', 'umarsabirin369@gmail.com', NULL, '$2y$10$JGVd1un7SQ3M.fT5DlMJxOmNjecwyl.tCqQped4Q6cD5IRqweTARa', 'admin', NULL, NULL, NULL),
(2, 'customer 1', 'customer1', 'customer1@gmail.com', NULL, '$2y$10$T0BrYn7HSuc/LYCr6PSC6OtivYj2poSQaNNh6TS0LpigVB1Xqc1Sm', 'customer', NULL, NULL, NULL),
(3, 'customer 2', 'customer2', 'customer2@gmail.com', NULL, '$2y$10$Q.k3yrgaf8dj5MdAzSYIue58X0covaQoG3XgR.6xIFqzADksi6D/m', 'customer', NULL, NULL, NULL),
(4, 'karyawan 1', 'karyawan1', 'karyawan1@gmail.com', NULL, '$2y$10$OVnfXbcwqGx/057B057O..Fq2X/VpZiHh.CTxKkAzRQzFNwF7RmlK', 'karyawan', NULL, NULL, NULL),
(5, 'karyawan 2', 'karyawan2', 'karyawan2@gmail.com', NULL, '$2y$10$RwcZAnoXmKZpiN7R79FXceIc6bf9kl667yLZCBJ9kaQIAZLzwGw3a', 'karyawan', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_us_email_unique` (`email`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `karyawans_email_unique` (`email`),
  ADD UNIQUE KEY `karyawans_username_unique` (`username`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_confirmations`
--
ALTER TABLE `payment_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_confirmations_customers_id_foreign` (`customers_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_pesanans`
--
ALTER TABLE `status_pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`),
  ADD KEY `transactions_paket_id_foreign` (`paket_id`),
  ADD KEY `transactions_statuspesanan_id_foreign` (`statusPesanan_id`),
  ADD KEY `transactions_paymentstatus_id_foreign` (`paymentStatus_id`),
  ADD KEY `transactions_paymentmethod_id_foreign` (`paymentMethod_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_confirmations`
--
ALTER TABLE `payment_confirmations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status_pesanans`
--
ALTER TABLE `status_pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment_confirmations`
--
ALTER TABLE `payment_confirmations`
  ADD CONSTRAINT `payment_confirmations_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `transactions_paket_id_foreign` FOREIGN KEY (`paket_id`) REFERENCES `pakets` (`id`),
  ADD CONSTRAINT `transactions_paymentmethod_id_foreign` FOREIGN KEY (`paymentMethod_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `transactions_paymentstatus_id_foreign` FOREIGN KEY (`paymentStatus_id`) REFERENCES `payment_statuses` (`id`),
  ADD CONSTRAINT `transactions_statuspesanan_id_foreign` FOREIGN KEY (`statusPesanan_id`) REFERENCES `status_pesanans` (`id`);
